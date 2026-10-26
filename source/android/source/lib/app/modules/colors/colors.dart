// Colors module

import 'package:flutter/material.dart';



class AppPalette {

  const AppPalette._ ();


  static const Color transparent = Color (0x00000000);
  static const Color cream = Color (0xfff2f2f2);
  static const Color black = Color (0xff000000);
  static const Color grey = Color (0xff808080);
  static const Color white = Color (0xffffffff);
  static const Color blue = Color (0xff0645AD);
  static const Color green = Color (0xff4caf50);
  static const Color red = Color (0xfff44336);
  static const Color transparent_1_grey_1 = Color (0x40000000);
  static const Color transparent_1_grey_3 = Color (0x40808080);
  static const Color transparent_2_grey_1 = Color (0x80000000);
  static const Color transparent_2_grey_3 = Color (0x80070707);
  static const Color transparent_2_grey_4 = Color (0x80ffffff);
  static const Color transparent_3_grey_1 = Color (0x94000000);
  static const Color transparent_4_green_1 = Color (0x808b9e80);
  static const Color grey_1 = Color (0xff010101);
  static const Color grey_2 = Color (0xff070707);
  static const Color grey_3 = Color (0xff0b0b0b);
  static const Color grey_4 = Color (0xff0f0f0f);
  static const Color grey_5 = Color (0xff101010);
  static const Color grey_6 = Color (0xff141414);
  static const Color grey_7 = Color (0xff171717);
  static const Color grey_8 = Color (0xff1a1a1a);
  static const Color grey_9 = Color (0xff202020);
  static const Color grey_10 = Color (0xff303030);
  static const Color grey_11 = Color (0xff404040);
  static const Color grey_12 = Color (0xff8b8b8b);
  static const Color grey_13 = Color (0xffcdcdcd);
  static const Color grey_14 = Color (0xfffafafa);
  static const Color blue_1 = Color (0xff1e3c6d);
  static const Color blue_2 = Color (0xff70769b);
  static const Color blue_3 = Color (0xff9da6d9);
  static const Color green_1 = Color (0xff12361b);
  static const Color green_2 = Color (0xff1b1c1b);
  static const Color green_3 = Color (0xff394335);
  static const Color green_4 = Color (0xff567560);
  static const Color green_5 = Color (0xff687262);
  static const Color green_6 = Color (0xff8b9e80);
  static const Color green_7 = Color (0xffd8e0d7);

}



class AppColors extends ThemeExtension <AppColors> {

  final Color appBarBack;
  final Color appBarBorder;
  final Color appBarButtonBack;
  final Color appBarButtonBorder;
  final Color appBarButtonIcon;
  final Color back;
  final Color block;
  final Color blockBorder;
  final Color bottomBarBack;
  final Color bottomBarBorder;
  final Color bottomBarText;
  final Color bottomBarTextPrime;
  final Color button;
  final Color buttonChooseConnectionIconLeft;
  final Color buttonChooseConnectionIconRight;
  final Color buttonChooseConnectionText;
  final Color buttonConnectBorder;
  final Color buttonConnectIcon;
  final Color buttonConnectShadow;
  final Color buttonText;
  final Color check;
  final Color checkBack;
  final Color circleBack;
  final Color circleBorder;
  final Color drawerBack;
  final Color drawerBottomText;
  final Color drawerOptionIconLeft;
  final Color drawerOptionIconRight;
  final Color drawerOptionText;
  final Color drawerOptionTextValue;
  final Color line;
  final Color lineText;
  final Color link;
  final Color linkPressed;
  final Color noiseBackground;
  final Color noisePrimary;
  final Color noiseSecondary;
  final Color prime;
  final Color radioButtonBack;
  final Color radioButtonInsidesChosen;
  final Color radioButtonInsidesNotChosen;
  final Color radioButtonOutsidesChosen;
  final Color radioButtonOutsidesNotChosen;
  final Color standartGreen;
  final Color standartRed;
  final Color states;
  final Color status;
  final Color tapHintIcon;
  final Color tapHintText;
  final Color textButton;
  final Color textChoiceStatus;
  final Color textCountryName;
  final Color title;
  final Color transparent;
  final Color windowBarrier;
  final Color windowBottomText;
  final Color windowMainBack;
  final Color windowMainText;
  final Color windowSeparator;
  final Color windowShadow;
  final Color windowTop;
  final Color windowTopBack;
  final Color windowTopText;


  const AppColors ({
    required this.appBarBack,
    required this.appBarBorder,
    required this.appBarButtonBack,
    required this.appBarButtonBorder,
    required this.appBarButtonIcon,
    required this.back,
    required this.block,
    required this.blockBorder,
    required this.bottomBarBack,
    required this.bottomBarBorder,
    required this.bottomBarText,
    required this.bottomBarTextPrime,
    required this.button,
    required this.buttonChooseConnectionIconLeft,
    required this.buttonChooseConnectionIconRight,
    required this.buttonChooseConnectionText,
    required this.buttonConnectBorder,
    required this.buttonConnectIcon,
    required this.buttonConnectShadow,
    required this.buttonText,
    required this.check,
    required this.checkBack,
    required this.circleBack,
    required this.circleBorder,
    required this.drawerBack,
    required this.drawerBottomText,
    required this.drawerOptionIconLeft,
    required this.drawerOptionIconRight,
    required this.drawerOptionText,
    required this.drawerOptionTextValue,
    required this.line,
    required this.lineText,
    required this.link,
    required this.linkPressed,
    required this.noiseBackground,
    required this.noisePrimary,
    required this.noiseSecondary,
    required this.prime,
    required this.radioButtonBack,
    required this.radioButtonInsidesChosen,
    required this.radioButtonInsidesNotChosen,
    required this.radioButtonOutsidesChosen,
    required this.radioButtonOutsidesNotChosen,
    required this.standartGreen,
    required this.standartRed,
    required this.states,
    required this.status,
    required this.tapHintIcon,
    required this.tapHintText,
    required this.textButton,
    required this.textChoiceStatus,
    required this.textCountryName,
    required this.title,
    required this.transparent,
    required this.windowBarrier,
    required this.windowBottomText,
    required this.windowMainBack,
    required this.windowMainText,
    required this.windowSeparator,
    required this.windowShadow,
    required this.windowTop,
    required this.windowTopBack,
    required this.windowTopText
  });


  static const AppColors darkGreen = AppColors (
    appBarBack: AppPalette.grey_2,
    appBarBorder: AppPalette.grey_7,
    appBarButtonBack: AppPalette.black,
    appBarButtonBorder: AppPalette.grey_9,
    appBarButtonIcon: AppPalette.grey,
    back: AppPalette.black,
    block: AppPalette.grey_5,
    blockBorder: AppPalette.green_3,
    bottomBarBack: AppPalette.transparent_2_grey_3,
    bottomBarBorder: AppPalette.black,
    bottomBarText: AppPalette.grey_12,
    bottomBarTextPrime: AppPalette.green_6,
    button: AppPalette.green_6,
    buttonChooseConnectionIconLeft: AppPalette.green_6,
    buttonChooseConnectionIconRight: AppPalette.green_6,
    buttonChooseConnectionText: AppPalette.green_6,
    buttonConnectBorder: AppPalette.black,
    buttonConnectIcon: AppPalette.grey_1,
    buttonConnectShadow: AppPalette.transparent_3_grey_1,
    buttonText: AppPalette.black,
    check: AppPalette.grey_3,
    checkBack: AppPalette.green_6,
    circleBack: AppPalette.black,
    circleBorder: AppPalette.grey_10,
    drawerBack: AppPalette.grey_3,
    drawerBottomText: AppPalette.cream,
    drawerOptionIconLeft: AppPalette.grey,
    drawerOptionIconRight: AppPalette.grey,
    drawerOptionText: AppPalette.cream,
    drawerOptionTextValue: AppPalette.grey,
    line: AppPalette.green_2,
    lineText: AppPalette.cream,
    link: AppPalette.blue_3,
    linkPressed: AppPalette.blue_2,
    noiseBackground: AppPalette.black,
    noisePrimary: AppPalette.green_4,
    noiseSecondary: AppPalette.black,
    prime: AppPalette.green_6,
    radioButtonBack: AppPalette.black,
    radioButtonInsidesChosen: AppPalette.green_6,
    radioButtonInsidesNotChosen: AppPalette.black,
    radioButtonOutsidesChosen: AppPalette.transparent_4_green_1,
    radioButtonOutsidesNotChosen: AppPalette.transparent_1_grey_3,
    standartGreen: AppPalette.green,
    standartRed: AppPalette.red,
    states: AppPalette.grey,
    status: AppPalette.cream,
    tapHintIcon: AppPalette.green_5,
    tapHintText: AppPalette.green_5,
    textButton: AppPalette.green_6,
    textChoiceStatus: AppPalette.grey_12,
    textCountryName: AppPalette.cream,
    title: AppPalette.cream,
    transparent: AppPalette.transparent,
    windowBarrier: AppPalette.transparent_2_grey_1,
    windowBottomText: AppPalette.green_6,
    windowMainBack: AppPalette.grey_6,
    windowMainText: AppPalette.cream,
    windowSeparator: AppPalette.grey_4,
    windowShadow: AppPalette.transparent_1_grey_1,
    windowTop: AppPalette.grey_8,
    windowTopBack: AppPalette.grey_8,
    windowTopText: AppPalette.cream
  );

  static const AppColors lightGreen = AppColors (
    appBarBack: AppPalette.grey_14,
    appBarBorder: AppPalette.grey_13,
    appBarButtonBack: AppPalette.white,
    appBarButtonBorder: AppPalette.grey_13,
    appBarButtonIcon: AppPalette.grey_11,
    back: AppPalette.cream,
    block: AppPalette.white,
    blockBorder: AppPalette.grey_13,
    bottomBarBack: AppPalette.transparent_2_grey_4,
    bottomBarBorder: AppPalette.grey_13,
    bottomBarText: AppPalette.black,
    bottomBarTextPrime: AppPalette.green_4,
    button: AppPalette.black,
    buttonChooseConnectionIconLeft: AppPalette.black,
    buttonChooseConnectionIconRight: AppPalette.black,
    buttonChooseConnectionText: AppPalette.black,
    buttonConnectBorder: AppPalette.black,
    buttonConnectIcon: AppPalette.grey_1,
    buttonConnectShadow: AppPalette.transparent_3_grey_1,
    buttonText: AppPalette.cream,
    check: AppPalette.cream,
    checkBack: AppPalette.green_6,
    circleBack: AppPalette.cream,
    circleBorder: AppPalette.grey_13,
    drawerBack: AppPalette.cream,
    drawerBottomText: AppPalette.black,
    drawerOptionIconLeft: AppPalette.black,
    drawerOptionIconRight: AppPalette.black,
    drawerOptionText: AppPalette.black,
    drawerOptionTextValue: AppPalette.black,
    line: AppPalette.grey_13,
    lineText: AppPalette.black,
    link: AppPalette.blue,
    linkPressed: AppPalette.blue_1,
    noiseBackground: AppPalette.green_7,
    noisePrimary: AppPalette.green_1,
    noiseSecondary: AppPalette.green_7,
    prime: AppPalette.green_6,
    radioButtonBack: AppPalette.white,
    radioButtonInsidesChosen: AppPalette.green_6,
    radioButtonInsidesNotChosen: AppPalette.white,
    radioButtonOutsidesChosen: AppPalette.transparent_4_green_1,
    radioButtonOutsidesNotChosen: AppPalette.transparent_1_grey_3,
    standartGreen: AppPalette.green,
    standartRed: AppPalette.red,
    states: AppPalette.black,
    status: AppPalette.black,
    tapHintIcon: AppPalette.black,
    tapHintText: AppPalette.black,
    textButton: AppPalette.black,
    textChoiceStatus: AppPalette.grey_12,
    textCountryName: AppPalette.black,
    title: AppPalette.black,
    transparent: AppPalette.transparent,
    windowBarrier: AppPalette.transparent_2_grey_1,
    windowBottomText: AppPalette.black,
    windowMainBack: AppPalette.cream,
    windowMainText: AppPalette.black,
    windowSeparator: AppPalette.grey_13,
    windowShadow: AppPalette.transparent_1_grey_1,
    windowTop: AppPalette.grey_8,
    windowTopBack: AppPalette.grey_14,
    windowTopText: AppPalette.black
  );


  @override AppColors copyWith ({
    Color? appBarBack,
    Color? appBarBorder,
    Color? appBarButtonBack,
    Color? appBarButtonBorder,
    Color? appBarButtonIcon,
    Color? back,
    Color? block,
    Color? blockBorder,
    Color? bottomBarBack,
    Color? bottomBarBorder,
    Color? bottomBarText,
    Color? bottomBarTextPrime,
    Color? button,
    Color? buttonChooseConnectionIconLeft,
    Color? buttonChooseConnectionIconRight,
    Color? buttonChooseConnectionText,
    Color? buttonConnectBorder,
    Color? buttonConnectIcon,
    Color? buttonConnectShadow,
    Color? buttonText,
    Color? check,
    Color? checkBack,
    Color? circleBack,
    Color? circleBorder,
    Color? drawerBack,
    Color? drawerBottomText,
    Color? drawerOptionIconLeft,
    Color? drawerOptionIconRight,
    Color? drawerOptionText,
    Color? drawerOptionTextValue,
    Color? line,
    Color? lineText,
    Color? link,
    Color? linkPressed,
    Color? noiseBackground,
    Color? noisePrimary,
    Color? noiseSecondary,
    Color? prime,
    Color? radioButtonBack,
    Color? radioButtonInsidesChosen,
    Color? radioButtonInsidesNotChosen,
    Color? radioButtonOutsidesChosen,
    Color? radioButtonOutsidesNotChosen,
    Color? standartGreen,
    Color? standartRed,
    Color? states,
    Color? status,
    Color? tapHintIcon,
    Color? tapHintText,
    Color? textButton,
    Color? textChoiceStatus,
    Color? textCountryName,
    Color? title,
    Color? transparent,
    Color? windowBarrier,
    Color? windowBottomText,
    Color? windowMainBack,
    Color? windowMainText,
    Color? windowSeparator,
    Color? windowShadow,
    Color? windowTop,
    Color? windowTopBack,
    Color? windowTopText
  }) {

    return (

      AppColors (
        appBarBack: appBarBack ?? this.appBarBack,
        appBarBorder: appBarBorder ?? this.appBarBorder,
        appBarButtonBack: appBarButtonBack ?? this.appBarButtonBack,
        appBarButtonBorder: appBarButtonBorder ?? this.appBarButtonBorder,
        appBarButtonIcon: appBarButtonIcon ?? this.appBarButtonIcon,
        back: back ?? this.back,
        block: block ?? this.block,
        blockBorder: blockBorder ?? this.blockBorder,
        bottomBarBack: bottomBarBack ?? this.bottomBarBack,
        bottomBarBorder: bottomBarBorder ?? this.bottomBarBorder,
        bottomBarText: bottomBarText ?? this.bottomBarText,
        bottomBarTextPrime: bottomBarTextPrime ?? this.bottomBarTextPrime,
        button: button ?? this.button,
        buttonChooseConnectionIconLeft: buttonChooseConnectionIconLeft ?? this.buttonChooseConnectionIconLeft,
        buttonChooseConnectionIconRight: buttonChooseConnectionIconRight ?? this.buttonChooseConnectionIconRight,
        buttonChooseConnectionText: buttonChooseConnectionText ?? this.buttonChooseConnectionText,
        buttonConnectBorder: buttonConnectBorder ?? this.buttonConnectBorder,
        buttonConnectIcon: buttonConnectIcon ?? this.buttonConnectIcon,
        buttonConnectShadow: buttonConnectShadow ?? this.buttonConnectShadow,
        buttonText: buttonText ?? this.buttonText,
        check: check ?? this.check,
        checkBack: checkBack ?? this.checkBack,
        circleBack: circleBack ?? this.circleBack,
        circleBorder: circleBorder ?? this.circleBorder,
        drawerBack: drawerBack ?? this.drawerBack,
        drawerBottomText: drawerBottomText ?? this.drawerBottomText,
        drawerOptionIconLeft: drawerOptionIconLeft ?? this.drawerOptionIconLeft,
        drawerOptionIconRight: drawerOptionIconRight ?? this.drawerOptionIconRight,
        drawerOptionText: drawerOptionText ?? this.drawerOptionText,
        drawerOptionTextValue: drawerOptionTextValue ?? this.drawerOptionTextValue,
        line: line ?? this.line,
        lineText: lineText ?? this.lineText,
        link: link ?? this.link,
        linkPressed: linkPressed ?? this.linkPressed,
        noiseBackground: noiseBackground ?? this.noiseBackground,
        noisePrimary: noisePrimary ?? this.noisePrimary,
        noiseSecondary: noiseSecondary ?? this.noiseSecondary,
        prime: prime ?? this.prime,
        radioButtonBack: radioButtonBack ?? this.radioButtonBack,
        radioButtonInsidesChosen: radioButtonInsidesChosen ?? this.radioButtonInsidesChosen,
        radioButtonInsidesNotChosen: radioButtonInsidesNotChosen ?? this.radioButtonInsidesNotChosen,
        radioButtonOutsidesChosen: radioButtonOutsidesChosen ?? this.radioButtonOutsidesChosen,
        radioButtonOutsidesNotChosen: radioButtonOutsidesNotChosen ?? this.radioButtonOutsidesNotChosen,
        standartGreen: standartGreen ?? this.standartGreen,
        standartRed: standartRed ?? this.standartRed,
        states: states ?? this.states,
        status: status ?? this.status,
        tapHintIcon: tapHintIcon ?? this.tapHintIcon,
        tapHintText: tapHintText ?? this.tapHintText,
        textButton: textButton ?? this.textButton,
        textChoiceStatus: textChoiceStatus ?? this.textChoiceStatus,
        textCountryName: textCountryName ?? this.textCountryName,
        title: title ?? this.title,
        transparent: transparent ?? this.transparent,
        windowBarrier: windowBarrier ?? this.windowBarrier,
        windowBottomText: windowBottomText ?? this.windowBottomText,
        windowMainBack: windowMainBack ?? this.windowMainBack,
        windowMainText: windowMainText ?? this.windowMainText,
        windowSeparator: windowSeparator ?? this.windowSeparator,
        windowShadow: windowShadow ?? this.windowShadow,
        windowTop: windowTop ?? this.windowTop,
        windowTopBack: windowTopBack ?? this.windowTopBack,
        windowTopText: windowTopText ?? this.windowTopText
      )

    );

  }


  @override AppColors lerp (ThemeExtension <AppColors>? other, double t) {

    if (other is! AppColors) {

      return (this);

    }

    return (

      AppColors (
        appBarBack: Color.lerp (appBarBack, other.appBarBack, t) ?? appBarBack,
        appBarBorder: Color.lerp (appBarBorder, other.appBarBorder, t) ?? appBarBorder,
        appBarButtonBack: Color.lerp (appBarButtonBack, other.appBarButtonBack, t) ?? appBarButtonBack,
        appBarButtonBorder: Color.lerp (appBarButtonBorder, other.appBarButtonBorder, t) ?? appBarButtonBorder,
        appBarButtonIcon: Color.lerp (appBarButtonIcon, other.appBarButtonIcon, t) ?? appBarButtonIcon,
        back: Color.lerp (back, other.back, t) ?? back,
        block: Color.lerp (block, other.block, t) ?? block,
        blockBorder: Color.lerp (blockBorder, other.blockBorder, t) ?? blockBorder,
        bottomBarBack: Color.lerp (bottomBarBack, other.bottomBarBack, t) ?? bottomBarBack,
        bottomBarBorder: Color.lerp (bottomBarBorder, other.bottomBarBorder, t) ?? bottomBarBorder,
        bottomBarText: Color.lerp (bottomBarText, other.bottomBarText, t) ?? bottomBarText,
        bottomBarTextPrime: Color.lerp (bottomBarTextPrime, other.bottomBarTextPrime, t) ?? bottomBarTextPrime,
        button: Color.lerp (button, other.button, t) ?? button,
        buttonChooseConnectionIconLeft: Color.lerp (buttonChooseConnectionIconLeft, other.buttonChooseConnectionIconLeft, t) ?? buttonChooseConnectionIconLeft,
        buttonChooseConnectionIconRight: Color.lerp (buttonChooseConnectionIconRight, other.buttonChooseConnectionIconRight, t) ?? buttonChooseConnectionIconRight,
        buttonChooseConnectionText: Color.lerp (buttonChooseConnectionText, other.buttonChooseConnectionText, t) ?? buttonChooseConnectionText,
        buttonConnectBorder: Color.lerp (buttonConnectBorder, other.buttonConnectBorder, t) ?? buttonConnectBorder,
        buttonConnectIcon: Color.lerp (buttonConnectIcon, other.buttonConnectIcon, t) ?? buttonConnectIcon,
        buttonConnectShadow: Color.lerp (buttonConnectShadow, other.buttonConnectShadow, t) ?? buttonConnectShadow,
        buttonText: Color.lerp (buttonText, other.buttonText, t) ?? buttonText,
        check: Color.lerp (check, other.check, t) ?? check,
        checkBack: Color.lerp (checkBack, other.checkBack, t) ?? checkBack,
        circleBack: Color.lerp (circleBack, other.circleBack, t) ?? circleBack,
        circleBorder: Color.lerp (circleBorder, other.circleBorder, t) ?? circleBorder,
        drawerBack: Color.lerp (drawerBack, other.drawerBack, t) ?? drawerBack,
        drawerBottomText: Color.lerp (drawerBottomText, other.drawerBottomText, t) ?? drawerBottomText,
        drawerOptionIconLeft: Color.lerp (drawerOptionIconLeft, other.drawerOptionIconLeft, t) ?? drawerOptionIconLeft,
        drawerOptionIconRight: Color.lerp (drawerOptionIconRight, other.drawerOptionIconRight, t) ?? drawerOptionIconRight,
        drawerOptionText: Color.lerp (drawerOptionText, other.drawerOptionText, t) ?? drawerOptionText,
        drawerOptionTextValue: Color.lerp (drawerOptionTextValue, other.drawerOptionTextValue, t) ?? drawerOptionTextValue,
        line: Color.lerp (line, other.line, t) ?? line,
        lineText: Color.lerp (lineText, other.lineText, t) ?? lineText,
        link: Color.lerp (link, other.link, t) ?? link,
        linkPressed: Color.lerp (linkPressed, other.linkPressed, t) ?? linkPressed,
        noiseBackground: Color.lerp (noiseBackground, other.noiseBackground, t) ?? noiseBackground,
        noisePrimary: Color.lerp (noisePrimary, other.noisePrimary, t) ?? noisePrimary,
        noiseSecondary: Color.lerp (noiseSecondary, other.noiseSecondary, t) ?? noiseSecondary,
        prime: Color.lerp (prime, other.prime, t) ?? prime,
        radioButtonBack: Color.lerp (radioButtonBack, other.radioButtonBack, t) ?? radioButtonBack,
        radioButtonInsidesChosen: Color.lerp (radioButtonInsidesChosen, other.radioButtonInsidesChosen, t) ?? radioButtonInsidesChosen,
        radioButtonInsidesNotChosen: Color.lerp (radioButtonInsidesNotChosen, other.radioButtonInsidesNotChosen, t) ?? radioButtonInsidesNotChosen,
        radioButtonOutsidesChosen: Color.lerp (radioButtonOutsidesChosen, other.radioButtonOutsidesChosen, t) ?? radioButtonOutsidesChosen,
        radioButtonOutsidesNotChosen: Color.lerp (radioButtonOutsidesNotChosen, other.radioButtonOutsidesNotChosen, t) ?? radioButtonOutsidesNotChosen,
        standartGreen: Color.lerp (standartGreen, other.standartGreen, t) ?? standartGreen,
        standartRed: Color.lerp (standartRed, other.standartRed, t) ?? standartRed,
        states: Color.lerp (states, other.states, t) ?? states,
        status: Color.lerp (status, other.status, t) ?? status,
        tapHintIcon: Color.lerp (tapHintIcon, other.tapHintIcon, t) ?? tapHintIcon,
        tapHintText: Color.lerp (tapHintText, other.tapHintText, t) ?? tapHintText,
        textButton: Color.lerp (textButton, other.textButton, t) ?? textButton,
        textChoiceStatus: Color.lerp (textChoiceStatus, other.textChoiceStatus, t) ?? textChoiceStatus,
        textCountryName: Color.lerp (textCountryName, other.textCountryName, t) ?? textCountryName,
        title: Color.lerp (title, other.title, t) ?? title,
        transparent: Color.lerp (transparent, other.transparent, t) ?? transparent,
        windowBarrier: Color.lerp (windowBarrier, other.windowBarrier, t) ?? windowBarrier,
        windowBottomText: Color.lerp (windowBottomText, other.windowBottomText, t) ?? windowBottomText,
        windowMainBack: Color.lerp (windowMainBack, other.windowMainBack, t) ?? windowMainBack,
        windowMainText: Color.lerp (windowMainText, other.windowMainText, t) ?? windowMainText,
        windowSeparator: Color.lerp (windowSeparator, other.windowSeparator, t) ?? windowSeparator,
        windowShadow: Color.lerp (windowShadow, other.windowShadow, t) ?? windowShadow,
        windowTop: Color.lerp (windowTop, other.windowTop, t) ?? windowTop,
        windowTopBack: Color.lerp (windowTopBack, other.windowTopBack, t) ?? windowTopBack,
        windowTopText: Color.lerp (windowTopText, other.windowTopText, t) ?? windowTopText
      )

    );

  }

}



enum AppThemeOption {

  darkGreen,
  lightGreen

}



extension AppColorsExtension on BuildContext {

  AppColors get colors {

    return (Theme.of(this).extension<AppColors>()!);

  }

}