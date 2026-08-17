// App

import 'package:flutter/material.dart';
import 'package:linette/app/theme/icons.dart';
import 'package:linette/app/theme/colors.dart';
// import 'pages/home/home.dart';
import 'pages/connections/connections.dart';



class App extends StatelessWidget {

  const App ({super.key});


  @override Widget build (BuildContext context) {

    return (

      ValueListenableBuilder <AppThemeOption> (

        valueListenable: currentTheme,
        builder: (context, selectedOption, _) {

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
              theme: ThemeData (
                brightness: baseBrightness,
                // scaffoldBackgroundColor: customColors.background,
                extensions: [
                  customAssets,
                  customColors
                ]
              ),
              // home: Home ()
              home: Connections ()
            )

          );

        }

      )

    );


  }

}