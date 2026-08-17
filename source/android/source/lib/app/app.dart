// App

import 'package:flutter/material.dart';
// import 'pages/home/home.dart';
import 'pages/connections/connections.dart';

import 'themes/themes.dart';



class App extends StatelessWidget {

  const App ({super.key});


  @override Widget build (BuildContext context) {

    return ValueListenableBuilder <AppThemeOption> (

      valueListenable: currentTheme,
      builder: (context, selectedOption, _) {

        final AppColors customColors;
        final Brightness baseBrightness;


        switch (selectedOption) {

          case AppThemeOption.darkGreen:

            customColors = AppColors.darkGreen;
            baseBrightness = Brightness.dark;

            break;

          case AppThemeOption.darkBlue:

            customColors = AppColors.darkBlue;
            baseBrightness = Brightness.dark;

            break;

          case AppThemeOption.lightGreen:

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
              extensions: [customColors]
            ),
            // home: Home ()
            home: Connections ()
          )

        );

      }

    );

  }

}