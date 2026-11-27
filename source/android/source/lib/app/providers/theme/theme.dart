// Theme state provider

import 'dart:ui';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';



enum AppThemeOption {

  darkGreenRegular,
  lightGreenRegular,
  darkGreenHalloween,
  lightGreenHalloween,
  darkGreenNewYear,
  lightGreenNewYear,
  darkGreenValentine,
  lightGreenValentine,
  darkGreenEaster,
  lightGreenEaster

}



enum AppThemeBaseOption {

  darkGreen,
  lightGreen

}



enum AppThemeSeasonOption {

  regular,
  halloween,
  newYear,
  valentine,
  easter

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
      (AppThemeBaseOption.darkGreen, AppThemeSeasonOption.halloween) => AppThemeOption.darkGreenHalloween,
      (AppThemeBaseOption.lightGreen, AppThemeSeasonOption.halloween) => AppThemeOption.lightGreenHalloween,
      (AppThemeBaseOption.darkGreen, AppThemeSeasonOption.newYear) => AppThemeOption.darkGreenNewYear,
      (AppThemeBaseOption.lightGreen, AppThemeSeasonOption.newYear) => AppThemeOption.lightGreenNewYear,
      (AppThemeBaseOption.darkGreen, AppThemeSeasonOption.valentine) => AppThemeOption.darkGreenValentine,
      (AppThemeBaseOption.lightGreen, AppThemeSeasonOption.valentine) => AppThemeOption.lightGreenValentine,
      (AppThemeBaseOption.darkGreen, AppThemeSeasonOption.easter) => AppThemeOption.darkGreenEaster,
      (AppThemeBaseOption.lightGreen, AppThemeSeasonOption.easter) => AppThemeOption.lightGreenEaster

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

    bool isEasterDate (DateTime current) {

      DateTime getEasterDate () {

        final DateTime easterDate;

        final int year = DateTime.now().year;


        // Алгоритм Гаусса для юлианского календаря с переводом на григорианский календарь:

        final int a = year % 4;
        final int b = year % 7;
        final int c = year % 19;
        final int d = (19 * c + 15) % 30;
        final int e = (2 * a + 4 * b - d + 34) % 7;
        final int month = (d + e + 114) ~/ 31;
        final int day = ((d + e + 114) % 31) + 1;


        // Добавление разницы в 13 дней между календарями (актуально для 20 – 21 века):

        easterDate = DateTime(year, month, day).add(const Duration(days: 13));


        return easterDate;

      }


      final bool isEasterDate;

      final DateTime easterDate = getEasterDate ();

      final DateTime start = DateTime(easterDate.year, easterDate.month, easterDate.day).subtract(const Duration (days: 4));
      final DateTime end = DateTime(easterDate.year, easterDate.month, easterDate.day).add(const Duration (days: 2, hours: 23, minutes: 59));

      isEasterDate = current.isAfter(start) && current.isBefore(end);


      return isEasterDate;

    }


    final AppThemeSeasonOption themeSeason;


    final DateTime date = DateTime.now ();


    if ((date.month == 10 && date.day >= 25) || (date.month == 11 && date.day <= 2)) {  // Хэллоуин, 25.10 - 2.11

      themeSeason = AppThemeSeasonOption.halloween;

    }

    else if ((date.month == 12 && date.day >= 20) || (date.month == 1 && date.day <= 10)) {  // Новый год, 20.12 - 10.01

      themeSeason = AppThemeSeasonOption.newYear;

    }

    else if ((date.month == 2 && date.day >= 7) || (date.month == 2 && date.day <= 15)) {  // День святого Валентина, 7.02 - 15.02

      themeSeason = AppThemeSeasonOption.valentine;

    }

    else if (isEasterDate (date)) {  // Пасха, ? - ?

      themeSeason = AppThemeSeasonOption.easter;

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
      (AppThemeBaseOption.darkGreen, AppThemeSeasonOption.halloween) => AppThemeOption.darkGreenHalloween,
      (AppThemeBaseOption.lightGreen, AppThemeSeasonOption.halloween) => AppThemeOption.lightGreenHalloween,
      (AppThemeBaseOption.darkGreen, AppThemeSeasonOption.newYear) => AppThemeOption.darkGreenNewYear,
      (AppThemeBaseOption.lightGreen, AppThemeSeasonOption.newYear) => AppThemeOption.lightGreenNewYear,
      (AppThemeBaseOption.darkGreen, AppThemeSeasonOption.valentine) => AppThemeOption.darkGreenValentine,
      (AppThemeBaseOption.lightGreen, AppThemeSeasonOption.valentine) => AppThemeOption.lightGreenValentine,
      (AppThemeBaseOption.darkGreen, AppThemeSeasonOption.easter) => AppThemeOption.darkGreenEaster,
      (AppThemeBaseOption.lightGreen, AppThemeSeasonOption.easter) => AppThemeOption.lightGreenEaster

    };


    await sharedPreferences.setString ('theme', themeBase.name);

    state = AsyncValue.data (theme);

  }

}