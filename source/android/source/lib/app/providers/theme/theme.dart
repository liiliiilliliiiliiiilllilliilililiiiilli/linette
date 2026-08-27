// State providers - Theme

import 'dart:ui';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:linette/app/theme/colors/colors.dart';



const defaultTheme = AppThemeOption.darkGreen;



final themeProvider = NotifierProvider <ThemeNotifier, AppThemeOption> (ThemeNotifier.new);



class ThemeNotifier extends Notifier <AppThemeOption> {

  @override AppThemeOption build () {

    initState ();

    return (defaultTheme);

  }


  static Future <AppThemeOption?> getSavedTheme () async {

    final String? savedTheme = (await SharedPreferences.getInstance()).getString('app_theme');


    switch (savedTheme) {

      case 'darkGreen':

        return AppThemeOption.darkGreen;

      case 'lightGreen':

        return AppThemeOption.lightGreen;

      default:

        return null;

    }

  }


  static Future <void> saveTheme (AppThemeOption theme) async {

    switch (theme) {

      case AppThemeOption.darkGreen:

        await (await SharedPreferences.getInstance()).setString('app_theme', 'darkGreen');

      case AppThemeOption.lightGreen:

        await (await SharedPreferences.getInstance()).setString('app_theme', 'lightGreen');

    }

  }


  static AppThemeOption getSystemTheme () {

    final systemTheme = PlatformDispatcher.instance.platformBrightness == Brightness.dark
      ? AppThemeOption.darkGreen
      : AppThemeOption.lightGreen;


    return systemTheme;

  }


  Future <void> initState () async {

    final AppThemeOption? savedTheme = await getSavedTheme ();


    if (savedTheme != null) {

      state = savedTheme;

    }

    else {

      final AppThemeOption systemTheme = getSystemTheme ();

      state = systemTheme;

      await saveTheme (systemTheme);

    }

  }


  Future <void> changeState (AppThemeOption theme) async {

    state = theme;

    await saveTheme (theme);

  }

}