// App (root component)

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
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

    final currentLocale = ref.watch (localeProvider);


    return (

      ValueListenableBuilder <AppThemeOption> (

        valueListenable: currentTheme,
        builder: (context, selectedOption, _) {

          final backgroundColor = currentTheme.value == AppThemeOption.darkGreen
            ? const Color (0xff000000)
            : const Color (0xfff2f2f2);


          final AppAssets customAssets;
          final AppColors customColors;
          final Brightness baseBrightness;


          switch (selectedOption) {

            case AppThemeOption.darkGreen:

              customAssets = AppAssets.darkGreen;
              customColors = AppColors.darkGreen;
              baseBrightness = Brightness.dark;

              break;

            case AppThemeOption.lightGreen:

              customAssets = AppAssets.lightGreen;
              customColors = AppColors.lightGreen;
              baseBrightness = Brightness.light;

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
              locale: currentLocale,
              routes: {
                '/home': (context) => const Home (),
                '/connections': (context) => const Connections ()
              }
            )

          );

        }

      )

    );

  }

}