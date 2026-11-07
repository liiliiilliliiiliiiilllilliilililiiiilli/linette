// Root component

import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:linette/app/providers/welcome/welcome.dart';
import 'package:linette/app/providers/theme/theme.dart';
import 'package:linette/app/providers/locale/locale.dart';
import 'package:linette/app/localization/generated/l10n.dart';
import 'package:linette/app/modules/colors/colors.dart';
import 'package:linette/app/modules/icons/icons.dart';
import 'package:linette/app/pages/welcome/welcome.dart';
import 'package:linette/app/pages/home/home.dart';
import 'package:linette/app/pages/connections/connections.dart';
import 'package:linette/app/widgets/multitouchblocker/multitouchblocker.dart';



class App extends ConsumerWidget {

  const App ({
    super.key
  });


  @override Widget build (BuildContext context, WidgetRef ref) {

    final String localeState = ref.watch (localeProvider);
    final AppThemeOption themeState = ref.watch (themeProvider);
    final bool? welcomeState = ref.read (welcomeProvider);

    final AppColors appColors;
    final AppIcons appIcons;
    final Brightness appBrightness;
    final Widget appStartPage;


    // Параметры:

    const String title = 'Linette';

    final Map <String, Widget Function (BuildContext)> routes = {
      '/welcome': (context) => const WelcomePage (),
      '/home': (context) => const HomePage (),
      '/connections': (context) => const ConnectionsPage ()
    };


    // Определение глобальных обьектов в зависимости от глобальных состояний:

    switch (themeState) {  // Цвета, иконки, цветной системный акцент от состояния темы

      case AppThemeOption.darkGreen:

        appColors = AppColors.darkGreen;
        appIcons = AppIcons.darkGreen;
        appBrightness = Brightness.dark;

        break;

      case AppThemeOption.lightGreen:

        appColors = AppColors.lightGreen;
        appIcons = AppIcons.lightGreen;
        appBrightness = Brightness.light;

        break;

    }

    switch (welcomeState) {  // Начальная страница от состояния приветствия

      case null:

        appStartPage = Scaffold (
          backgroundColor: appColors.backPrime
        );

        break;

      case false:

        appStartPage = const WelcomePage ();

        break;

      case true:

        appStartPage = const HomePage ();

        break;

    }


    // Блокировка мультитача:

    Widget builder (BuildContext context, Widget? child) {

      return (

        MultitouchBlocker (
          child: child ?? const SizedBox ()
        )

      );

    }


    return (

      MaterialApp (
        debugShowCheckedModeBanner: false,
        title: title,
        theme: ThemeData (
          pageTransitionsTheme: PageTransitionsTheme (
            builders: {
              TargetPlatform.android: FadeForwardsPageTransitionsBuilder (
                backgroundColor: appColors.back
              )
            }
          ),
          brightness: appBrightness,
          extensions: [
            appColors,
            appIcons
          ]
        ),
        localizationsDelegates: const [
          T.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate
        ],
        supportedLocales: T.delegate.supportedLocales,
        locale: Locale (localeState),
        routes: routes,
        home: appStartPage,
        builder: builder
      )

    );

  }

}