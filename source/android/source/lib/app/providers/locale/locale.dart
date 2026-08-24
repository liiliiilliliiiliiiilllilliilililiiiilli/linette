// State providers - Locale

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:linette/app/localization/generated/l10n.dart';



const String localeKey = 'selected_language_code';



final localeProvider = StateNotifierProvider <LocaleNotifier, Locale> ((ref) {

  return (LocaleNotifier ());

});



class LocaleNotifier extends StateNotifier <Locale> {

  LocaleNotifier () : super (const Locale ('ru')) {

    initLocale ();

  }


  Future <void> initLocale () async {

    final prefs = await SharedPreferences.getInstance ();
    final String? savedLanguageCode = prefs.getString (localeKey);


    if (savedLanguageCode != null) {

      final savedLocale = Locale (savedLanguageCode);

      await T.load (savedLocale);

      state = savedLocale;

    } else {

      final systemLocale = getSystemLocale ();

      await T.load (systemLocale);

      state = systemLocale;

    }

  }


  static Locale getSystemLocale () {

    final systemLocale = WidgetsBinding.instance.platformDispatcher.locales.firstOrNull;

    if (systemLocale != null) {

      final isSupported = T.delegate.supportedLocales.any ((locale) => locale.languageCode == systemLocale.languageCode);

      if (isSupported) {

        return (Locale (systemLocale.languageCode));

      }

    }

    return (const Locale ('ru'));

  }


  Future <void> changeLocale (Locale newLocale) async {

    await T.load (newLocale);

    final prefs = await SharedPreferences.getInstance ();
    await prefs.setString (localeKey, newLocale.languageCode);

    state = newLocale;

  }

}