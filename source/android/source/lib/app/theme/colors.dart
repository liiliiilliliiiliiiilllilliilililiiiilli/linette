// Project's colors library

import 'package:flutter/material.dart';



class AppColors extends ThemeExtension <AppColors> {

  final Color back;
  final Color textChooseConnectionButton;
  final Color textTapHint;
  final Color noiseBackground;
  final Color noisePrimary;
  final Color noiseSecondary;
  final Color textStatus;
  final Color textTitle;
  final Color appBarBack;
  final Color appBarBorder;
  final Color appBarButtonBack;
  final Color appBarButtonBorder;
  final Color bottomBarBack;
  final Color bottomBarBorder;
  final Color textBottomBarPrime;
  final Color textBottomBar;
  final Color drawerBack;
  final Color textDrawerBottom;
  final Color line;
  final Color linkPressed;
  final Color textLine;
  final Color block;
  final Color blockBorder;
  final Color textBlock;
  final Color circlesBack;
  final Color circlesBorder;
  final Color textDrawerOption;
  final Color textDrawerOptionValue;
  final Color checkColor;
  final Color checkColorBack;
  final Color textStates;
  final Color windowTopBack;
  final Color windowTopText;
  final Color windowMainBack;
  final Color windowMainText;
  final Color windowBottomText;
  final Color windowSeparator;
  final Color white;
  final Color grey;
  final Color black;
  final Color red;
  final Color green;
  final Color link;
  final Color windowTop;
  final Color windowBack;
  final Color windowBorder;
  final Color prime;
  final Color primeHint;
  final Color primeChoice;
  final Color primeGlow;
  final Color checkBorder;
  final Color checkBack;
  final Color buttonsBorder;
  final Color hint;

  const AppColors ({
    required this.back,
    required this.textChooseConnectionButton,
    required this.textTapHint,
    required this.noiseBackground,
    required this.noisePrimary,
    required this.noiseSecondary,
    required this.textStatus,
    required this.textTitle,
    required this.appBarBack,
    required this.appBarBorder,
    required this.appBarButtonBack,
    required this.appBarButtonBorder,
    required this.bottomBarBack,
    required this.bottomBarBorder,
    required this.textBottomBarPrime,
    required this.textBottomBar,
    required this.drawerBack,
    required this.textDrawerBottom,
    required this.line,
    required this.linkPressed,
    required this.textLine,
    required this.block,
    required this.blockBorder,
    required this.textBlock,
    required this.circlesBack,
    required this.circlesBorder,
    required this.textDrawerOption,
    required this.textDrawerOptionValue,
    required this.checkColor,
    required this.checkColorBack,
    required this.textStates,
    required this.windowTopBack,
    required this.windowTopText,
    required this.windowMainBack,
    required this.windowMainText,
    required this.windowBottomText,
    required this.windowSeparator,
    required this.white,
    required this.grey,
    required this.black,
    required this.red,
    required this.green,
    required this.link,
    required this.windowTop,
    required this.windowBack,
    required this.windowBorder,
    required this.prime,
    required this.primeHint,
    required this.primeChoice,
    required this.primeGlow,
    required this.checkBorder,
    required this.checkBack,
    required this.buttonsBorder,
    required this.hint
  });


  static const darkGreen = AppColors (
    back: Color (0xff000000),
    textChooseConnectionButton: Color (0xff8b9e80),
    textTapHint: Color (0xff687262),
    noiseBackground: Color (0xff000000),
    noisePrimary: Color (0xff567560),
    noiseSecondary: Color (0xff000000),
    textStatus: Color (0xfff2f2f2),
    textTitle: Color (0xfff2f2f2),
    appBarBack: Color (0xff070707),
    appBarBorder: Color (0xff171717),
    appBarButtonBack: Color (0xff000000),
    appBarButtonBorder: Color (0xff202020),
    bottomBarBack: Color (0x80070707),
    bottomBarBorder: Color (0xff000000),
    textBottomBarPrime: Color (0xff8b9e80),
    textBottomBar: Color (0xff8b8b8b),
    drawerBack: Color (0xff0b0b0b),
    textDrawerBottom: Color (0xfff2f2f2),
    line: Color (0xff1b1c1b),
    textLine: Color (0xfff2f2f2),
    block: Color (0xff101010),
    blockBorder: Color (0xff394335),
    textBlock: Color (0xfff2f2f2),
    circlesBack: Color (0xff000000),
    circlesBorder: Color (0xff303030),
    textDrawerOption: Color (0xfff2f2f2),
    textDrawerOptionValue: Color (0xff808080),
    checkColor: Color (0xff0b0b0b),
    checkColorBack: Color (0xff8b9e80),
    textStates: Color (0xff808080),
    windowTopBack: Color (0xff1a1a1a),
    windowTopText: Color (0xfff2f2f2),
    windowMainBack: Color (0xff141414),
    windowMainText: Color (0xfff2f2f2),
    windowBottomText: Color (0xff8b9e80),
    windowSeparator: Color (0xff0f0f0f),
    white: Color (0xfff2f2f2),
    grey: Color (0xff8b8b8b),
    black: Color (0xff000000),
    red: Color (0xfff44336),
    green: Color (0xff4caf50),
    link: Color (0xff9da6d9),
    linkPressed: Color (0xff70769b),
    windowTop: Color (0xff1a1a1a),
    windowBack: Color (0xff141414),
    windowBorder: Color (0xff0f0f0f),
    prime: Color (0xff8b9e80),
    primeHint: Color (0xff687262),
    primeChoice: Color (0xff394335),
    primeGlow: Color (0xff567560),
    checkBorder: Color (0xff3e3e3e),
    checkBack: Color (0xff1f1f1f),
    buttonsBorder: Color (0xff202020),
    hint: Color (0xff545454)
  );

  static const lightGreen = AppColors (
    back: Color (0xfff2f2f2),
    textChooseConnectionButton: Color (0xff000000),
    textTapHint: Color (0xff000000),
    noiseBackground: Color.fromARGB (255, 216, 224, 215),
    noisePrimary: Color.fromARGB (255, 18, 54, 27),
    noiseSecondary: Color.fromARGB (255, 216, 224, 215),
    textStatus: Color (0xff000000),
    textTitle: Color (0xff000000),
    appBarBack: Color (0xfffafafa),
    appBarBorder: Color (0xffcdcdcd),
    appBarButtonBack: Color (0xffffffff),
    appBarButtonBorder: Color (0xffcdcdcd),
    bottomBarBack: Color (0x80ffffff),
    bottomBarBorder: Color (0xffcdcdcd),
    textBottomBarPrime: Color (0xff567560),
    textBottomBar: Color (0xff000000),
    drawerBack: Color (0xfff2f2f2),
    textDrawerBottom: Color (0xff000000),
    line: Color (0xffcdcdcd),
    textLine: Color (0xff000000),
    block: Color (0xffffffff),
    blockBorder: Color (0xffcdcdcd),
    textBlock: Color (0xff000000),
    circlesBack: Color (0xfff2f2f2),
    circlesBorder: Color (0xffcdcdcd),
    textDrawerOption: Color (0xff000000),
    textDrawerOptionValue: Color (0xff000000),
    checkColor: Color (0xfff2f2f2),
    checkColorBack: Color (0xff8b9e80),
    textStates: Color (0xff000000),
    windowTopBack: Color (0xfffafafa),
    windowTopText: Color (0xff000000),
    windowMainBack: Color (0xfff2f2f2),
    windowMainText: Color (0xff000000),
    windowBottomText: Color (0xff000000),
    windowSeparator: Color (0xffcdcdcd),
    white: Color (0xfff2f2f2),
    grey: Color (0xff8b8b8b),
    black: Color (0xff000000),
    red: Color (0xfff44336),
    green: Color (0xff4caf50),
    link: Color (0xff0645AD),
    linkPressed: Color (0xff1e3c6d),
    windowTop: Color (0xff1a1a1a),
    windowBack: Color (0xff141414),
    windowBorder: Color (0xff0f0f0f),
    prime: Color (0xff8b9e80),
    primeHint: Color (0xff687262),
    primeChoice: Color (0xff394335),
    primeGlow: Color (0xff567560),
    checkBorder: Color (0xff3e3e3e),
    checkBack: Color (0xff1f1f1f),
    buttonsBorder: Color (0xff202020),
    hint: Color (0xff545454)
  );


  @override AppColors copyWith ({
    Color? back,
    Color? textChooseConnectionButton,
    Color? textTapHint,
    Color? noiseBackground,
    Color? noisePrimary,
    Color? noiseSecondary,
    Color? textStatus,
    Color? textTitle,
    Color? appBarBack,
    Color? appBarBorder,
    Color? appBarButtonBack,
    Color? appBarButtonBorder,
    Color? bottomBarBack,
    Color? bottomBarBorder,
    Color? textBottomBarPrime,
    Color? textBottomBar,
    Color? drawerBack,
    Color? textDrawerBottom,
    Color? line,
    Color? textLine,
    Color? block,
    Color? blockBorder,
    Color? textBlock,
    Color? circlesBack,
    Color? circlesBorder,
    Color? textDrawerOption,
    Color? textDrawerOptionValue,
    Color? checkColor,
    Color? checkColorBack,
    Color? textStates,
    Color? windowTopBack,
    Color? windowTopText,
    Color? windowMainBack,
    Color? windowMainText,
    Color? windowBottomText,
    Color? windowSeparator,
    Color? white,
    Color? grey,
    Color? black,
    Color? red,
    Color? green,
    Color? link,
    Color? linkPressed,
    Color? windowTop,
    Color? windowBack,
    Color? windowBorder,
    Color? prime,
    Color? primeHint,
    Color? primeChoice,
    Color? primeGlow,
    Color? checkBorder,
    Color? checkBack,
    Color? buttonsBorder,
    Color? hint
  }) {

    return (

      AppColors (
        back: back ?? this.back,
        textChooseConnectionButton: textChooseConnectionButton ?? this.textChooseConnectionButton,
        textTapHint: textTapHint ?? this.textTapHint,
        noiseBackground: noiseBackground ?? this.noiseBackground,
        noisePrimary: noisePrimary ?? this.noisePrimary,
        noiseSecondary: noiseSecondary ?? this.noiseSecondary,
        textStatus: textStatus ?? this.textStatus,
        textTitle: textTitle ?? this.textTitle,
        appBarBack: appBarBack ?? this.appBarBack,
        appBarBorder: appBarBorder ?? this.appBarBorder,
        appBarButtonBack: appBarButtonBack ?? this.appBarButtonBack,
        appBarButtonBorder: appBarButtonBorder ?? this.appBarButtonBorder,
        bottomBarBack: bottomBarBack ?? this.bottomBarBack,
        bottomBarBorder: bottomBarBorder ?? this.bottomBarBorder,
        textBottomBarPrime: textBottomBarPrime ?? this.textBottomBarPrime,
        textBottomBar: textBottomBar ?? this.textBottomBar,
        drawerBack: drawerBack ?? this.drawerBack,
        textDrawerBottom: textDrawerBottom ?? this.textDrawerBottom,
        line: line ?? this.line,
        textLine: textLine ?? this.textLine,
        block: block ?? this.block,
        blockBorder: blockBorder ?? this.blockBorder,
        textBlock: textBlock ?? this.textBlock,
        circlesBack: circlesBack ?? this.circlesBack,
        circlesBorder: circlesBorder ?? this.circlesBorder,
        textDrawerOption: textDrawerOption ?? this.textDrawerOption,
        textDrawerOptionValue: textDrawerOptionValue ?? this.textDrawerOptionValue,
        checkColor: checkColor ?? this.checkColor,
        checkColorBack: checkColorBack ?? this.checkColorBack,
        textStates: textStates ?? this.textStates,
        windowTopBack: windowTopBack ?? this.windowTopBack,
        windowTopText: windowTopText ?? this.windowTopText,
        windowMainBack: windowMainBack ?? this.windowMainBack,
        windowMainText: windowMainText ?? this.windowMainText,
        windowBottomText: windowBottomText ?? this.windowBottomText,
        windowSeparator: windowSeparator ?? this.windowSeparator,
        white: white ?? this.white,
        grey: grey ?? this.grey,
        black: black ?? this.black,
        red: red ?? this.red,
        green: green ?? this.green,
        link: link ?? this.link,
        linkPressed: linkPressed ?? this.linkPressed,
        windowTop: windowTop ?? this.windowTop,
        windowBack: windowBack ?? this.windowBack,
        windowBorder: windowBorder ?? this.windowBorder,
        prime: prime ?? this.prime,
        primeHint: primeHint ?? this.primeHint,
        primeChoice: primeChoice ?? this.primeChoice,
        primeGlow: primeGlow ?? this.primeGlow,
        checkBorder: checkBorder ?? this.checkBorder,
        checkBack: checkBack ?? this.checkBack,
        buttonsBorder: buttonsBorder ?? this.buttonsBorder,
        hint: hint ?? this.hint
      )

    );

  }


  @override AppColors lerp (ThemeExtension <AppColors>? other, double t) {

    if (other is! AppColors)

      return (this);

    return (

      AppColors (
        back: Color.lerp (back, other.back, t) ?? back,
        textChooseConnectionButton: Color.lerp (textChooseConnectionButton, other.textChooseConnectionButton, t) ?? textChooseConnectionButton,
        textTapHint: Color.lerp (textTapHint, other.textTapHint, t) ?? textTapHint,
        noiseBackground: Color.lerp (noiseBackground, other.noiseBackground, t) ?? noiseBackground,
        noisePrimary: Color.lerp (noisePrimary, other.noisePrimary, t) ?? noisePrimary,
        noiseSecondary: Color.lerp (noiseSecondary, other.noiseSecondary, t) ?? noiseSecondary,
        textStatus: Color.lerp (textStatus, other.textStatus, t) ?? textStatus,
        textTitle: Color.lerp (textTitle, other.textTitle, t) ?? textTitle,
        appBarBack: Color.lerp (appBarBack, other.appBarBack, t) ?? appBarBack,
        appBarBorder: Color.lerp (appBarBorder, other.appBarBorder, t) ?? appBarBorder,
        appBarButtonBack: Color.lerp (appBarButtonBack, other.appBarButtonBack, t) ?? appBarButtonBack,
        appBarButtonBorder: Color.lerp (appBarButtonBorder, other.appBarButtonBorder, t) ?? appBarButtonBorder,
        bottomBarBack: Color.lerp (bottomBarBack, other.bottomBarBack, t) ?? bottomBarBack,
        bottomBarBorder: Color.lerp (bottomBarBorder, other.bottomBarBorder, t) ?? bottomBarBorder,
        textBottomBarPrime: Color.lerp (textBottomBarPrime, other.textBottomBarPrime, t) ?? textBottomBarPrime,
        textBottomBar: Color.lerp (textBottomBar, other.textBottomBar, t) ?? textBottomBar,
        drawerBack: Color.lerp (drawerBack, other.drawerBack, t) ?? drawerBack,
        textDrawerBottom: Color.lerp (textDrawerBottom, other.textDrawerBottom, t) ?? textDrawerBottom,
        line: Color.lerp (line, other.line, t) ?? line,
        textLine: Color.lerp (textLine, other.textLine, t) ?? textLine,
        block: Color.lerp (block, other.block, t) ?? block,
        blockBorder: Color.lerp (blockBorder, other.blockBorder, t) ?? blockBorder,
        textBlock: Color.lerp (textBlock, other.textBlock, t) ?? textBlock,
        circlesBack: Color.lerp (circlesBack, other.circlesBack, t) ?? circlesBack,
        circlesBorder: Color.lerp (circlesBorder, other.circlesBorder, t) ?? circlesBorder,
        textDrawerOption: Color.lerp (textDrawerOption, other.textDrawerOption, t) ?? textDrawerOption,
        textDrawerOptionValue: Color.lerp (textDrawerOptionValue, other.textDrawerOptionValue, t) ?? textDrawerOptionValue,
        checkColor: Color.lerp (checkColor, other.checkColor, t) ?? checkColor,
        checkColorBack: Color.lerp (checkColorBack, other.checkColorBack, t) ?? checkColorBack,
        textStates: Color.lerp (textStates, other.textStates, t) ?? textStates,
        windowTopBack: Color.lerp (windowTopBack, other.windowTopBack, t) ?? windowTopBack,
        windowTopText: Color.lerp (windowTopText, other.windowTopText, t) ?? windowTopText,
        windowMainBack: Color.lerp (windowMainBack, other.windowMainBack, t) ?? windowMainBack,
        windowMainText: Color.lerp (windowMainText, other.windowMainText, t) ?? windowMainText,
        windowBottomText: Color.lerp (windowBottomText, other.windowBottomText, t) ?? windowBottomText,
        windowSeparator: Color.lerp (windowSeparator, other.windowSeparator, t) ?? windowSeparator,
        white: Color.lerp (white, other.white, t) ?? white,
        grey: Color.lerp (grey, other.grey, t) ?? grey,
        black: Color.lerp (black, other.black, t) ?? black,
        red: Color.lerp (red, other.red, t) ?? red,
        green: Color.lerp (green, other.green, t) ?? green,
        link: Color.lerp (link, other.link, t) ?? link,
        linkPressed: Color.lerp (linkPressed, other.linkPressed, t) ?? linkPressed,
        windowTop: Color.lerp (windowTop, other.windowTop, t) ?? windowTop,
        windowBack: Color.lerp (windowBack, other.windowBack, t) ?? windowBack,
        windowBorder: Color.lerp (windowBorder, other.windowBorder, t) ?? windowBorder,
        prime: Color.lerp (prime, other.prime, t) ?? prime,
        primeHint: Color.lerp (primeHint, other.primeHint, t) ?? primeHint,
        primeChoice: Color.lerp (primeChoice, other.primeChoice, t) ?? primeChoice,
        primeGlow: Color.lerp (primeGlow, other.primeGlow, t) ?? primeGlow,
        checkBorder: Color.lerp (checkBorder, other.checkBorder, t) ?? checkBorder,
        checkBack: Color.lerp (checkBack, other.checkBack, t) ?? checkBack,
        buttonsBorder: Color.lerp (buttonsBorder, other.buttonsBorder, t) ?? buttonsBorder,
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