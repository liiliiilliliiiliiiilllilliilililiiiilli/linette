// Theme state provider

import 'dart:ui';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';



enum AppThemeOption {

  darkGreenRegular,
  lightGreenRegular,
  darkGreenNewYear,
  lightGreenNewYear,
  darkGreenHalloween,
  lightGreenHalloween

}



enum AppThemeBaseOption {

  darkGreen,
  lightGreen

}



enum AppThemeSeasonOption {

  regular,
  newYear,
  halloween

}



const AppThemeOption themeDefault = AppThemeOption.darkGreenRegular;



final AsyncNotifierProvider <ThemeNotifier, AppThemeOption> themeProvider = AsyncNotifierProvider (ThemeNotifier.new);



class ThemeNotifier extends AsyncNotifier <AppThemeOption> {

  @override Future <AppThemeOption> build () async {

    final AppThemeBaseOption themeBase = await getSavedThemeBase () ?? getSystemThemeBase ();

    final AppThemeSeasonOption themeSeason = getThemeSeason ();


    final AppThemeOption theme = switch ((themeBase, themeSeason)) {

      (AppThemeBaseOption.darkGreen, AppThemeSeasonOption.regular) => AppThemeOption.darkGreenRegular,
      (AppThemeBaseOption.lightGreen, AppThemeSeasonOption.regular) => AppThemeOption.lightGreenRegular,
      (AppThemeBaseOption.darkGreen, AppThemeSeasonOption.newYear) => AppThemeOption.darkGreenNewYear,
      (AppThemeBaseOption.lightGreen, AppThemeSeasonOption.newYear) => AppThemeOption.lightGreenNewYear,
      (AppThemeBaseOption.darkGreen, AppThemeSeasonOption.halloween) => AppThemeOption.darkGreenHalloween,
      (AppThemeBaseOption.lightGreen, AppThemeSeasonOption.halloween) => AppThemeOption.lightGreenHalloween

    };


    return theme;

  }


  static AppThemeBaseOption getSystemThemeBase () {

    final AppThemeBaseOption themeBase = (PlatformDispatcher.instance.platformBrightness == Brightness.dark)
      ? AppThemeBaseOption.darkGreen
      : AppThemeBaseOption.lightGreen;


    return themeBase;

  }


  static Future <AppThemeBaseOption?> getSavedThemeBase () async {

    final SharedPreferences sharedPreferences = await SharedPreferences.getInstance ();


    final String? savedTheme = sharedPreferences.getString ('theme');


    for (final AppThemeBaseOption option in AppThemeBaseOption.values) {

      if (savedTheme == option.name) {

        return option;

      }

    }


    return null;

  }


  AppThemeSeasonOption getThemeSeason () {

    final AppThemeSeasonOption themeSeason;


    final DateTime date = DateTime.now ();


    if ((date.month == 12 && date.day >= 20) || (date.month == 1 && date.day <= 10)) {  // Новый год, 20.12 - 10.01

      themeSeason = AppThemeSeasonOption.newYear;

    }

    else if ((date.month == 10 && date.day >= 25) || (date.month == 11 && date.day <= 2)) {  // Хэллоуин, 25.10 - 2.11

      themeSeason = AppThemeSeasonOption.halloween;

    }

    else {  // Обычный день

      themeSeason = AppThemeSeasonOption.regular;

    }


    return themeSeason;

  }


  Future <void> changeState (AppThemeBaseOption themeBase) async {

    final SharedPreferences sharedPreferences = await SharedPreferences.getInstance ();


    final AppThemeSeasonOption themeSeason = getThemeSeason ();


    final AppThemeOption theme = switch ((themeBase, themeSeason)) {

      (AppThemeBaseOption.darkGreen, AppThemeSeasonOption.regular) => AppThemeOption.darkGreenRegular,
      (AppThemeBaseOption.lightGreen, AppThemeSeasonOption.regular) => AppThemeOption.lightGreenRegular,
      (AppThemeBaseOption.darkGreen, AppThemeSeasonOption.newYear) => AppThemeOption.darkGreenNewYear,
      (AppThemeBaseOption.lightGreen, AppThemeSeasonOption.newYear) => AppThemeOption.lightGreenNewYear,
      (AppThemeBaseOption.darkGreen, AppThemeSeasonOption.halloween) => AppThemeOption.darkGreenHalloween,
      (AppThemeBaseOption.lightGreen, AppThemeSeasonOption.halloween) => AppThemeOption.lightGreenHalloween

    };


    await sharedPreferences.setString ('theme', themeBase.name);

    state = AsyncValue.data (theme);

  }

}