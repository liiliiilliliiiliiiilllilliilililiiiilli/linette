// Theme state provider

import 'dart:ui';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';



enum AppThemeOption {

  darkGreen,
  lightGreen

}



const AppThemeOption themeDefault = AppThemeOption.darkGreen;



final AsyncNotifierProvider <ThemeNotifier, AppThemeOption> themeProvider = AsyncNotifierProvider (ThemeNotifier.new);



class ThemeNotifier extends AsyncNotifier <AppThemeOption> {

  @override Future <AppThemeOption> build () async {

    final AppThemeOption theme = await getSavedTheme () ?? getSystemTheme ();


    return theme;

  }


  static AppThemeOption getSystemTheme () {

    final AppThemeOption systemTheme = (PlatformDispatcher.instance.platformBrightness == Brightness.dark)
      ? AppThemeOption.darkGreen
      : AppThemeOption.lightGreen;


    return systemTheme;

  }


  static Future <AppThemeOption?> getSavedTheme () async {

    final SharedPreferences sharedPreferences = await SharedPreferences.getInstance ();


    final String? savedTheme = sharedPreferences.getString ('theme');


    for (final AppThemeOption option in AppThemeOption.values) {

      if (savedTheme == option.name) {

        return option;

      }

    }


    return null;

  }


  Future <void> changeState (AppThemeOption theme) async {

    final SharedPreferences sharedPreferences = await SharedPreferences.getInstance ();


    await sharedPreferences.setString ('theme', theme.name);

    state = AsyncValue.data (theme);

  }

}