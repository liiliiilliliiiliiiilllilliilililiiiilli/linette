// Locale state provider

import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:linette/app/localizations/generated/l10n.dart';



const String localeDefault = 'en';



final AsyncNotifierProvider <LocaleNotifier, String> localeProvider = AsyncNotifierProvider (LocaleNotifier.new);



class LocaleNotifier extends AsyncNotifier <String> {

  @override Future <String> build () async {

    final SharedPreferences sharedPreferences = await SharedPreferences.getInstance ();


    final String locale = sharedPreferences.getString ('locale') ?? getSystemLocale () ?? localeDefault;

    await Texts.load (Locale (locale));


    return locale;

  }


  static String? getSystemLocale () {

    final Locale? systemLocale = WidgetsBinding.instance.platformDispatcher.locales.firstOrNull;


    if (systemLocale != null) {

      final bool isSupported = Texts.delegate.supportedLocales.any ((locale) => (locale.languageCode == systemLocale.languageCode));

      if (isSupported) {

        return systemLocale.languageCode;

      }

    }


    return null;

  }


  Future <void> changeState (String locale) async {

    final SharedPreferences sharedPreferences = await SharedPreferences.getInstance ();


    await sharedPreferences.setString ('locale', locale);

    await Texts.load (Locale (locale));

    state = AsyncValue.data (locale);

  }

}