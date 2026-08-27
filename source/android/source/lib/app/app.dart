// App (root component)

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:linette/app/providers/theme/theme.dart';
import 'package:linette/app/providers/locale/locale.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:linette/app/localization/generated/l10n.dart';
import 'package:linette/app/theme/icons/icons.dart';
import 'package:linette/app/theme/colors/colors.dart';
import 'pages/home/home.dart';
import 'pages/connections/connections.dart';



class App extends ConsumerWidget {

  const App ({super.key});


  @override Widget build (BuildContext context, WidgetRef ref) {

    final localeState = ref.watch (localeProvider);
    final themeState = ref.watch (themeProvider);


    final Brightness baseBrightness;
    final Color backgroundColor;
    final AppAssets customAssets;
    final AppColors customColors;


    switch (themeState) {

      case AppThemeOption.darkGreen:

        baseBrightness = Brightness.dark;
        backgroundColor = const Color (0xff000000);
        customAssets = AppAssets.darkGreen;
        customColors = AppColors.darkGreen;

        break;

      case AppThemeOption.lightGreen:

        baseBrightness = Brightness.light;
        backgroundColor = const Color (0xfff2f2f2);
        customAssets = AppAssets.lightGreen;
        customColors = AppColors.lightGreen;

        break;

    }


    return (

      MaterialApp (
        debugShowCheckedModeBanner: false,
        title: 'Linette',
        theme: ThemeData (
          pageTransitionsTheme: PageTransitionsTheme (
            builders: {
              TargetPlatform.android: FadeForwardsPageTransitionsBuilder (
                backgroundColor: backgroundColor
              )
            }
          ),
          brightness: baseBrightness,
          extensions: [
            customAssets,
            customColors
          ]
        ),
        initialRoute: '/home',
        localizationsDelegates: const [
            T.delegate,
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate
        ],
        supportedLocales: T.delegate.supportedLocales,
        locale: Locale (localeState),
        routes: {
          '/home': (context) => const Home (),
          '/connections': (context) => const Connections ()
        }
      )

    );

  }

}