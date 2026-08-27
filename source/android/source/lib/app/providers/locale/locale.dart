// State providers - Locale

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:linette/app/localization/generated/l10n.dart';



const defaultLocale = 'en';



final localeProvider = NotifierProvider <LocaleNotifier, String> (LocaleNotifier.new);



class LocaleNotifier extends Notifier <String> {

  @override String build () {

    initState ();

    return (defaultLocale);

  }


  static String getSystemLocale () {

    final systemLocale = WidgetsBinding.instance.platformDispatcher.locales.firstOrNull;


    if (systemLocale != null) {

      final isSupported = T.delegate.supportedLocales.any ((locale) => locale.languageCode == systemLocale.languageCode);

      if (isSupported) {

        return (systemLocale.languageCode);

      }

    }


    return ('en');

  }


  Future <void> initState () async {

    final preferences = await SharedPreferences.getInstance ();

    final String? appLocale = preferences.getString ('app_locale');


    if (appLocale == null) {

      final systemLocale = getSystemLocale ();

      await T.load (Locale (systemLocale));

      state = systemLocale;

      await preferences.setString ('app_locale', systemLocale);

    } else {

      await T.load (Locale (appLocale));

      state = appLocale;

    }

  }


  Future <void> changeState (String locale) async {

    await T.load (Locale (locale));

    state = locale;

    final preferences = await SharedPreferences.getInstance ();
    await preferences.setString ('app_locale', locale);

  }

}