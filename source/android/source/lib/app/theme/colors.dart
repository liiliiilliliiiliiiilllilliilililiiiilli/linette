// Project's colors library

import 'package:flutter/material.dart';



class AppColors extends ThemeExtension <AppColors> {

  final Color white;
  final Color grey;
  final Color black;
  final Color barBack;
  final Color barBorder;
  final Color block;
  final Color prime;
  final Color primeChoice;
  final Color buttonsBorder;
  final Color circlesBorder;
  final Color line;

  const AppColors ({
    required this.white,
    required this.grey,
    required this.black,
    required this.barBack,
    required this.barBorder,
    required this.block,
    required this.prime,
    required this.primeChoice,
    required this.buttonsBorder,
    required this.circlesBorder,
    required this.line
  });


  static const darkGreen = AppColors (
    white: Color (0xfff2f2f2),
    grey: Color (0xff808080),
    black: Color (0xff000000),
    barBack: Color (0xff070707),
    barBorder: Color (0xff171717),
    block: Color (0xff101010),
    prime: Color (0xff8b9e80),
    primeChoice: Color (0xff394335),
    buttonsBorder: Color (0xff202020),
    circlesBorder: Color (0xff303030),
    line: Color (0xff1b1c1b)
  );

  static const lightGreen = AppColors (
    white: Color (0xfff2f2f2),
    grey: Color (0xff808080),
    black: Color (0xff000000),
    barBack: Color (0xff070707),
    barBorder: Color (0xff171717),
    block: Color (0xff101010),
    prime: Color (0xff8b9e80),
    primeChoice: Color (0xff394335),
    buttonsBorder: Color (0xff202020),
    circlesBorder: Color (0xff303030),
    line: Color (0xff1b1c1b)
  );


  @override AppColors copyWith ({
    Color? white,
    Color? grey,
    Color? black,
    Color? barBack,
    Color? barBorder,
    Color? block,
    Color? prime,
    Color? primeChoice,
    Color? buttonsBorder,
    Color? circlesBorder,
    Color? line
  }) {

    return (

      AppColors (
        white: white ?? this.white,
        grey: grey ?? this.grey,
        black: black ?? this.black,
        barBack: barBack ?? this.barBack,
        barBorder: barBorder ?? this.barBorder,
        block: block ?? this.block,
        prime: prime ?? this.prime,
        primeChoice: primeChoice ?? this.primeChoice,
        buttonsBorder: buttonsBorder ?? this.buttonsBorder,
        circlesBorder: circlesBorder ?? this.circlesBorder,
        line: line ?? this.line
      )

    );

  }

  @override AppColors lerp (ThemeExtension <AppColors>? other, double t) {

    if (other is! AppColors)

      return (this);

    return (

      AppColors (
        white: Color.lerp (white, other.white, t)!,
        grey: Color.lerp (grey, other.grey, t)!,
        black: Color.lerp (black, other.black, t)!,
        barBack: Color.lerp (barBack, other.barBack, t)!,
        barBorder: Color.lerp (barBorder, other.barBorder, t)!,
        block: Color.lerp (block, other.block, t)!,
        prime: Color.lerp (prime, other.prime, t)!,
        primeChoice: Color.lerp (primeChoice, other.primeChoice, t)!,
        buttonsBorder: Color.lerp (buttonsBorder, other.buttonsBorder, t)!,
        circlesBorder: Color.lerp (circlesBorder, other.circlesBorder, t)!,
        line: Color.lerp (line, other.line, t)!
      )

    );

  }

}



enum AppThemeOption {
  darkGreen,
  lightGreen
}



final currentTheme = ValueNotifier <AppThemeOption> (AppThemeOption.darkGreen);



extension AppColorsExtension on BuildContext {

  AppColors get colors => Theme.of(this).extension<AppColors>()!;

}