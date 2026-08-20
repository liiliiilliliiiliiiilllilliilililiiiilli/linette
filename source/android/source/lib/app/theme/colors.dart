// Project's colors library

import 'package:flutter/material.dart';



class AppColors extends ThemeExtension <AppColors> {

  final Color white;
  final Color grey;
  final Color black;
  final Color red;
  final Color green;
  final Color link;
  final Color barBack;
  final Color barBorder;
  final Color drawerBack;
  final Color windowTop;
  final Color windowBack;
  final Color windowBorder;
  final Color block;
  final Color prime;
  final Color primeHint;
  final Color primeChoice;
  final Color primeGlow;
  final Color checkBorder;
  final Color checkBack;
  final Color buttonsBorder;
  final Color circlesBorder;
  final Color line;
  final Color hint;

  const AppColors ({
    required this.white,
    required this.grey,
    required this.black,
    required this.red,
    required this.green,
    required this.link,
    required this.barBack,
    required this.barBorder,
    required this.drawerBack,
    required this.windowTop,
    required this.windowBack,
    required this.windowBorder,
    required this.block,
    required this.prime,
    required this.primeHint,
    required this.primeChoice,
    required this.primeGlow,
    required this.checkBorder,
    required this.checkBack,
    required this.buttonsBorder,
    required this.circlesBorder,
    required this.line,
    required this.hint
  });


  static const darkGreen = AppColors (
    white: Color (0xfff2f2f2),
    grey: Color (0xff8b8b8b),
    black: Color (0xff000000),
    red: Color (0xfff44336),
    green: Color (0xff4caf50),
    link: Color (0xff9da6d9),
    barBack: Color (0xff070707),
    barBorder: Color (0xff171717),
    drawerBack: Color (0xff0b0b0b),
    windowTop: Color (0xff1a1a1a),
    windowBack: Color (0xff141414),
    windowBorder: Color (0xff0f0f0f),
    block: Color (0xff101010),
    prime: Color (0xff8b9e80),
    primeHint: Color (0xff687262),
    primeChoice: Color (0xff394335),
    primeGlow: Color (0xff567560),
    checkBorder: Color (0xff3e3e3e),
    checkBack: Color (0xff1f1f1f),
    buttonsBorder: Color (0xff202020),
    circlesBorder: Color (0xff303030),
    line: Color (0xff1b1c1b),
    hint: Color (0xff545454)
  );

  static const lightGreen = AppColors (
    white: Color (0xfff2f2f2),
    grey: Color (0xff8b8b8b),
    black: Color (0xff000000),
    red: Color (0xfff44336),
    green: Color (0xff4caf50),
    link: Color (0xff9da6d9),
    barBack: Color (0xff070707),
    barBorder: Color (0xff171717),
    drawerBack: Color (0xff0b0b0b),
    windowTop: Color (0xff1a1a1a),
    windowBack: Color (0xff141414),
    windowBorder: Color (0xff0f0f0f),
    block: Color (0xff101010),
    prime: Color (0xff8b9e80),
    primeHint: Color (0xff687262),
    primeChoice: Color (0xff394335),
    primeGlow: Color (0xff567560),
    checkBorder: Color (0xff3e3e3e),
    checkBack: Color (0xff1f1f1f),
    buttonsBorder: Color (0xff202020),
    circlesBorder: Color (0xff303030),
    line: Color (0xff1b1c1b),
    hint: Color (0xff545454)
  );


  @override AppColors copyWith ({
    Color? white,
    Color? grey,
    Color? black,
    Color? red,
    Color? green,
    Color? link,
    Color? barBack,
    Color? barBorder,
    Color? drawerBack,
    Color? windowTop,
    Color? windowBack,
    Color? windowBorder,
    Color? block,
    Color? prime,
    Color? primeHint,
    Color? primeChoice,
    Color? primeGlow,
    Color? checkBorder,
    Color? checkBack,
    Color? buttonsBorder,
    Color? circlesBorder,
    Color? line,
    Color? hint
  }) {

    return (

      AppColors (
        white: white ?? this.white,
        grey: grey ?? this.grey,
        black: black ?? this.black,
        red: red ?? this.red,
        green: green ?? this.green,
        link: link ?? this.link,
        barBack: barBack ?? this.barBack,
        barBorder: barBorder ?? this.barBorder,
        drawerBack: drawerBack ?? this.drawerBack,
        windowTop: windowTop ?? this.windowTop,
        windowBack: windowBack ?? this.windowBack,
        windowBorder: windowBorder ?? this.windowBorder,
        block: block ?? this.block,
        prime: prime ?? this.prime,
        primeHint: primeHint ?? this.primeHint,
        primeChoice: primeChoice ?? this.primeChoice,
        primeGlow: primeGlow ?? this.primeGlow,
        checkBorder: checkBorder ?? this.checkBorder,
        checkBack: checkBack ?? this.checkBack,
        buttonsBorder: buttonsBorder ?? this.buttonsBorder,
        circlesBorder: circlesBorder ?? this.circlesBorder,
        line: line ?? this.line,
        hint: hint ?? this.hint
      )

    );

  }


  @override AppColors lerp (ThemeExtension <AppColors>? other, double t) {

    if (other is! AppColors)

      return (this);

    return (

      AppColors (
        white: Color.lerp (white, other.white, t) ?? white,
        grey: Color.lerp (grey, other.grey, t) ?? grey,
        black: Color.lerp (black, other.black, t) ?? black,
        red: Color.lerp (red, other.red, t) ?? red,
        green: Color.lerp (green, other.green, t) ?? green,
        link: Color.lerp (link, other.link, t) ?? link,
        barBack: Color.lerp (barBack, other.barBack, t) ?? barBack,
        barBorder: Color.lerp (barBorder, other.barBorder, t) ?? barBorder,
        drawerBack: Color.lerp (drawerBack, other.drawerBack, t) ?? drawerBack,
        windowTop: Color.lerp (windowTop, other.windowTop, t) ?? windowTop,
        windowBack: Color.lerp (windowBack, other.windowBack, t) ?? windowBack,
        windowBorder: Color.lerp (windowBorder, other.windowBorder, t) ?? windowBorder,
        block: Color.lerp (block, other.block, t) ?? block,
        prime: Color.lerp (prime, other.prime, t) ?? prime,
        primeHint: Color.lerp (primeHint, other.primeHint, t) ?? primeHint,
        primeChoice: Color.lerp (primeChoice, other.primeChoice, t) ?? primeChoice,
        primeGlow: Color.lerp (primeGlow, other.primeGlow, t) ?? primeGlow,
        checkBorder: Color.lerp (checkBorder, other.checkBorder, t) ?? checkBorder,
        checkBack: Color.lerp (checkBack, other.checkBack, t) ?? checkBack,
        buttonsBorder: Color.lerp (buttonsBorder, other.buttonsBorder, t) ?? buttonsBorder,
        circlesBorder: Color.lerp (circlesBorder, other.circlesBorder, t) ?? circlesBorder,
        line: Color.lerp (line, other.line, t) ?? line,
        hint: Color.lerp (hint, other.hint, t) ?? hint
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

  AppColors get colors {

    return (Theme.of(this).extension<AppColors>()!);

  }

}