// Root widget

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:linette/app/localizations/generated/l10n.dart';
import 'package:linette/app/providers/locale/locale.dart';
import 'package:linette/app/providers/theme/theme.dart';
import 'package:linette/app/providers/welcome/welcome.dart';
import 'package:linette/app/modules/colors/colors.dart';
import 'package:linette/app/modules/icons/icons.dart';
import 'package:linette/app/modules/methods/methods.dart';
import 'package:linette/app/modules/texts/texts.dart';
import 'package:linette/app/pages/welcome/welcome.dart';
import 'package:linette/app/pages/home/home.dart';
import 'package:linette/app/pages/connections/connections.dart';
import 'package:linette/app/widgets/multitouchblocker/multitouchblocker.dart';



class App extends HookConsumerWidget {

  const App ({
    super.key
  });


  @override Widget build (BuildContext context, WidgetRef ref) {

    final String? localeState = ref.watch(localeProvider).valueOrNull;
    final AppThemeOption? themeState = ref.watch(themeProvider).valueOrNull;
    final bool? welcomeState = ref.watch(welcomeProvider).valueOrNull;


    // Остановка, пока не инициализируются все глобальные состояния:

    if (localeState == null || themeState == null || welcomeState == null) {

      return const SizedBox.shrink ();

    }


    // Установка страниц:

    final Map <String, Widget Function (BuildContext)> routes = {
      WelcomePage.address: (context) => const WelcomePage (),
      HomePage.address: (context) => const HomePage (),
      ConnectionsPage.address: (context) => const ConnectionsPage ()
    };


    // Определение глобальных обьектов в зависимости от глобальных состояний:

    final AppColors appColors;
    final AppIcons appIcons;
    final Brightness appBrightness;
    final Widget appStartPage;


    switch (themeState) {  // Цвета, иконки и цветовой системный акцент от состояния темы

      case AppThemeOption.darkGreenRegular:

        appColors = AppColors.darkGreen;
        appIcons = AppIcons.darkGreenRegular;
        appBrightness = Brightness.dark;

        break;

      case AppThemeOption.lightGreenRegular:

        appColors = AppColors.lightGreen;
        appIcons = AppIcons.lightGreenRegular;
        appBrightness = Brightness.light;

        break;

      case AppThemeOption.darkGreenHalloween:

        appColors = AppColors.darkGreen;
        appIcons = AppIcons.darkGreenHalloween;
        appBrightness = Brightness.dark;

        break;

      case AppThemeOption.lightGreenHalloween:

        appColors = AppColors.lightGreen;
        appIcons = AppIcons.lightGreenHalloween;
        appBrightness = Brightness.light;

        break;

      case AppThemeOption.darkGreenNewYear:

        appColors = AppColors.darkGreen;
        appIcons = AppIcons.darkGreenNewYear;
        appBrightness = Brightness.dark;

        break;

      case AppThemeOption.lightGreenNewYear:

        appColors = AppColors.lightGreen;
        appIcons = AppIcons.lightGreenNewYear;
        appBrightness = Brightness.light;

        break;

      case AppThemeOption.darkGreenValentine:

        appColors = AppColors.darkGreen;
        appIcons = AppIcons.darkGreenValentine;
        appBrightness = Brightness.dark;

        break;

      case AppThemeOption.lightGreenValentine:

        appColors = AppColors.lightGreen;
        appIcons = AppIcons.lightGreenValentine;
        appBrightness = Brightness.light;

        break;

      case AppThemeOption.darkGreenEaster:

        appColors = AppColors.darkGreen;
        appIcons = AppIcons.darkGreenEaster;
        appBrightness = Brightness.dark;

        break;

      case AppThemeOption.lightGreenEaster:

        appColors = AppColors.lightGreen;
        appIcons = AppIcons.lightGreenEaster;
        appBrightness = Brightness.light;

        break;

    }


    switch (welcomeState) {  // Начальная страница от состояния приветствия

      case false:

        appStartPage = const WelcomePage ();

        break;

      case true:

        appStartPage = const HomePage ();

        break;

    }


    // Предзагрузка картинок, блокировка мультитача:

    Widget builder (BuildContext context, Widget? child) {

      return (

        HookBuilder (
          builder: (contextInner) {

            useEffect (() {

              Future <void> init () async {

                final AppMethods methods = contextInner.methods;


                try {

                  await methods.preloadImages (contextInner, [
                    'assets/images/icons/common/bat.svg',
                    'assets/images/icons/common/bunny.svg',
                    'assets/images/icons/common/butterfly.svg',
                    'assets/images/icons/common/candy.svg',
                    'assets/images/icons/common/cat.png',
                    'assets/images/icons/common/check_mark.svg',
                    'assets/images/icons/common/christmas_hat.svg',
                    'assets/images/icons/common/christmas_tree_toy.svg',
                    'assets/images/icons/common/cotton_candy.svg',
                    'assets/images/icons/common/cupcake.svg',
                    'assets/images/icons/common/egg.svg',
                    'assets/images/icons/common/finland_flag.svg',
                    'assets/images/icons/common/flower.svg',
                    'assets/images/icons/common/germany_flag.svg',
                    'assets/images/icons/common/ghost.svg',
                    'assets/images/icons/common/gift.svg',
                    'assets/images/icons/common/go_arrow.svg',
                    'assets/images/icons/common/heart.svg',
                    'assets/images/icons/common/heart_key.svg',
                    'assets/images/icons/common/hot_air_baloon.svg',
                    'assets/images/icons/common/info.svg',
                    'assets/images/icons/common/language.svg',
                    'assets/images/icons/common/letter.svg',
                    'assets/images/icons/common/location.svg',
                    'assets/images/icons/common/magic_wand.svg',
                    'assets/images/icons/common/menu.svg',
                    'assets/images/icons/common/moon.svg',
                    'assets/images/icons/common/navigate_arrow.svg',
                    'assets/images/icons/common/net.svg',
                    'assets/images/icons/common/netherlands_flag.svg',
                    'assets/images/icons/common/olive_branch.svg',
                    'assets/images/icons/common/pencil.svg',
                    'assets/images/icons/common/pumpkin.svg',
                    'assets/images/icons/common/snow_globe.svg',
                    'assets/images/icons/common/snowflake.svg',
                    'assets/images/icons/common/stars.svg',
                    'assets/images/icons/common/sun.svg',
                    'assets/images/icons/common/tap.svg',
                    'assets/images/icons/common/unwrap_triangle.svg',
                    'assets/images/icons/common/user.svg',
                    'assets/images/icons/common/wallet.svg'
                  ]);

                }

                finally {

                  if (contextInner.mounted) {

                    // Освобождение сплэш-экрана после прогрузки всех ресурсов приложения:

                    methods.releaseSplashScreen ();

                  }

                }

              }


              init ();


              return null;

            }, const []);


            return (

              MultitouchBlocker (
                child: child ?? const SizedBox ()
              )

            );

          }
        )

      );

    }


    return (

      MaterialApp (
        debugShowCheckedModeBanner: false,
        onGenerateTitle: (context) => context.texts.appTitle,
        theme: ThemeData (
          pageTransitionsTheme: PageTransitionsTheme (
            builders: {
              TargetPlatform.android: FadeForwardsPageTransitionsBuilder (
                backgroundColor: appColors.bodyBack
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
          Texts.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate
        ],
        supportedLocales: Texts.delegate.supportedLocales,
        locale: Locale (localeState),
        routes: routes,
        home: appStartPage,
        builder: builder
      )

    );

  }

}