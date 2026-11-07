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
  static const Color transparent_4_grey_1 = Color (0xc4808080);
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
  final Color backPrime;
  final Color block;
  final Color blockBorder;
  final Color bottomBarBack;
  final Color bottomBarBorder;
  final Color bottomBarText;
  final Color bottomBarTextPrime;
  final Color button;
  final Color buttonChooseConnection;
  final Color buttonConnectBack;
  final Color buttonConnectBorder;
  final Color buttonConnectIcon;
  final Color buttonConnectShadow;
  final Color buttonText;
  final Color check;
  final Color checkBack;
  final Color circleBack;
  final Color circleBorder;
  final Color drawerBack;
  final Color drawerBottomBarBack;
  final Color drawerBottomBarBorder;
  final Color drawerBottomBarText;
  final Color drawerOptionIconLeft;
  final Color drawerOptionIconRight;
  final Color drawerOptionText;
  final Color drawerOptionTextValue;
  final Color drawerTopBarBack;
  final Color drawerTopBarBorder;
  final Color drawerTopBarText;
  final Color line;
  final Color lineText;
  final Color link;
  final Color linkPressed;
  final Color noiseBack;
  final Color noisePrimary;
  final Color noiseSecondary;
  final Color radioButtonBack;
  final Color radioButtonInsidesChosen;
  final Color radioButtonInsidesNotChosen;
  final Color radioButtonOutsidesChosen;
  final Color radioButtonOutsidesNotChosen;
  final Color standartGreen;
  final Color standartRed;
  final Color tapHint;
  final Color textButton;
  final Color textChoiceStatus;
  final Color textCountryName;
  final Color textStates;
  final Color textStatus;
  final Color title;
  final Color titleElement;
  final Color titleShadow;
  final Color windowBarrier;
  final Color windowBottomText;
  final Color windowMainBack;
  final Color windowMainText;
  final Color windowSeparator;
  final Color windowShadow;
  final Color windowTopBack;
  final Color windowTopText;


  const AppColors ({
    required this.appBarBack,
    required this.appBarBorder,
    required this.appBarButtonBack,
    required this.appBarButtonBorder,
    required this.appBarButtonIcon,
    required this.back,
    required this.backPrime,
    required this.block,
    required this.blockBorder,
    required this.bottomBarBack,
    required this.bottomBarBorder,
    required this.bottomBarText,
    required this.bottomBarTextPrime,
    required this.button,
    required this.buttonChooseConnection,
    required this.buttonConnectBack,
    required this.buttonConnectBorder,
    required this.buttonConnectIcon,
    required this.buttonConnectShadow,
    required this.buttonText,
    required this.check,
    required this.checkBack,
    required this.circleBack,
    required this.circleBorder,
    required this.drawerBack,
    required this.drawerBottomBarBack,
    required this.drawerBottomBarBorder,
    required this.drawerBottomBarText,
    required this.drawerOptionIconLeft,
    required this.drawerOptionIconRight,
    required this.drawerOptionText,
    required this.drawerOptionTextValue,
    required this.drawerTopBarBack,
    required this.drawerTopBarBorder,
    required this.drawerTopBarText,
    required this.line,
    required this.lineText,
    required this.link,
    required this.linkPressed,
    required this.noiseBack,
    required this.noisePrimary,
    required this.noiseSecondary,
    required this.radioButtonBack,
    required this.radioButtonInsidesChosen,
    required this.radioButtonInsidesNotChosen,
    required this.radioButtonOutsidesChosen,
    required this.radioButtonOutsidesNotChosen,
    required this.standartGreen,
    required this.standartRed,
    required this.tapHint,
    required this.textButton,
    required this.textChoiceStatus,
    required this.textCountryName,
    required this.textStates,
    required this.textStatus,
    required this.title,
    required this.titleElement,
    required this.titleShadow,
    required this.windowBarrier,
    required this.windowBottomText,
    required this.windowMainBack,
    required this.windowMainText,
    required this.windowSeparator,
    required this.windowShadow,
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
    backPrime: AppPalette.grey_2,
    block: AppPalette.grey_5,
    blockBorder: AppPalette.green_3,
    bottomBarBack: AppPalette.transparent_2_grey_3,
    bottomBarBorder: AppPalette.black,
    bottomBarText: AppPalette.grey_12,
    bottomBarTextPrime: AppPalette.green_6,
    button: AppPalette.green_6,
    buttonChooseConnection: AppPalette.green_6,
    buttonConnectBack: AppPalette.green_6,
    buttonConnectBorder: AppPalette.black,
    buttonConnectIcon: AppPalette.grey_1,
    buttonConnectShadow: AppPalette.transparent_3_grey_1,
    buttonText: AppPalette.black,
    check: AppPalette.grey_3,
    checkBack: AppPalette.green_6,
    circleBack: AppPalette.black,
    circleBorder: AppPalette.grey_10,
    drawerBack: AppPalette.grey_3,
    drawerBottomBarBack: AppPalette.grey_2,
    drawerBottomBarBorder: AppPalette.grey_7,
    drawerBottomBarText: AppPalette.cream,
    drawerOptionIconLeft: AppPalette.grey,
    drawerOptionIconRight: AppPalette.grey,
    drawerOptionText: AppPalette.cream,
    drawerOptionTextValue: AppPalette.grey,
    drawerTopBarBack: AppPalette.grey_2,
    drawerTopBarBorder: AppPalette.grey_7,
    drawerTopBarText: AppPalette.cream,
    line: AppPalette.green_2,
    lineText: AppPalette.cream,
    link: AppPalette.blue_3,
    linkPressed: AppPalette.blue_2,
    noiseBack: AppPalette.black,
    noisePrimary: AppPalette.green_4,
    noiseSecondary: AppPalette.black,
    radioButtonBack: AppPalette.black,
    radioButtonInsidesChosen: AppPalette.green_6,
    radioButtonInsidesNotChosen: AppPalette.black,
    radioButtonOutsidesChosen: AppPalette.transparent_4_green_1,
    radioButtonOutsidesNotChosen: AppPalette.transparent_1_grey_3,
    standartGreen: AppPalette.green,
    standartRed: AppPalette.red,
    tapHint: AppPalette.green_5,
    textButton: AppPalette.green_6,
    textChoiceStatus: AppPalette.grey_12,
    textCountryName: AppPalette.cream,
    textStates: AppPalette.grey,
    textStatus: AppPalette.cream,
    title: AppPalette.cream,
    titleElement: AppPalette.green_6,
    titleShadow: AppPalette.transparent_4_grey_1,
    windowBarrier: AppPalette.transparent_2_grey_1,
    windowBottomText: AppPalette.green_6,
    windowMainBack: AppPalette.grey_6,
    windowMainText: AppPalette.cream,
    windowSeparator: AppPalette.grey_4,
    windowShadow: AppPalette.transparent_1_grey_1,
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
    backPrime: AppPalette.grey_14,
    block: AppPalette.white,
    blockBorder: AppPalette.grey_13,
    bottomBarBack: AppPalette.transparent_2_grey_4,
    bottomBarBorder: AppPalette.grey_13,
    bottomBarText: AppPalette.black,
    bottomBarTextPrime: AppPalette.green_4,
    button: AppPalette.black,
    buttonChooseConnection: AppPalette.black,
    buttonConnectBack: AppPalette.green_6,
    buttonConnectBorder: AppPalette.black,
    buttonConnectIcon: AppPalette.grey_1,
    buttonConnectShadow: AppPalette.transparent_3_grey_1,
    buttonText: AppPalette.cream,
    check: AppPalette.cream,
    checkBack: AppPalette.green_6,
    circleBack: AppPalette.cream,
    circleBorder: AppPalette.grey_13,
    drawerBack: AppPalette.cream,
    drawerBottomBarBack: AppPalette.grey_14,
    drawerBottomBarBorder: AppPalette.grey_13,
    drawerBottomBarText: AppPalette.black,
    drawerOptionIconLeft: AppPalette.black,
    drawerOptionIconRight: AppPalette.black,
    drawerOptionText: AppPalette.black,
    drawerOptionTextValue: AppPalette.black,
    drawerTopBarBack: AppPalette.grey_14,
    drawerTopBarBorder: AppPalette.grey_13,
    drawerTopBarText: AppPalette.black,
    line: AppPalette.grey_13,
    lineText: AppPalette.black,
    link: AppPalette.blue,
    linkPressed: AppPalette.blue_1,
    noiseBack: AppPalette.green_7,
    noisePrimary: AppPalette.green_1,
    noiseSecondary: AppPalette.green_7,
    radioButtonBack: AppPalette.white,
    radioButtonInsidesChosen: AppPalette.green_6,
    radioButtonInsidesNotChosen: AppPalette.white,
    radioButtonOutsidesChosen: AppPalette.transparent_4_green_1,
    radioButtonOutsidesNotChosen: AppPalette.transparent_1_grey_3,
    standartGreen: AppPalette.green,
    standartRed: AppPalette.red,
    tapHint: AppPalette.black,
    textButton: AppPalette.black,
    textChoiceStatus: AppPalette.grey_12,
    textCountryName: AppPalette.black,
    textStates: AppPalette.black,
    textStatus: AppPalette.black,
    title: AppPalette.black,
    titleElement: AppPalette.green_6,
    titleShadow: AppPalette.transparent_4_grey_1,
    windowBarrier: AppPalette.transparent_2_grey_1,
    windowBottomText: AppPalette.black,
    windowMainBack: AppPalette.cream,
    windowMainText: AppPalette.black,
    windowSeparator: AppPalette.grey_13,
    windowShadow: AppPalette.transparent_1_grey_1,
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
    Color? backPrime,
    Color? block,
    Color? blockBorder,
    Color? bottomBarBack,
    Color? bottomBarBorder,
    Color? bottomBarText,
    Color? bottomBarTextPrime,
    Color? button,
    Color? buttonChooseConnection,
    Color? buttonConnectBack,
    Color? buttonConnectBorder,
    Color? buttonConnectIcon,
    Color? buttonConnectShadow,
    Color? buttonText,
    Color? check,
    Color? checkBack,
    Color? circleBack,
    Color? circleBorder,
    Color? drawerBack,
    Color? drawerBottomBarBack,
    Color? drawerBottomBarBorder,
    Color? drawerBottomBarText,
    Color? drawerOptionIconLeft,
    Color? drawerOptionIconRight,
    Color? drawerOptionText,
    Color? drawerOptionTextValue,
    Color? drawerTopBarBack,
    Color? drawerTopBarBorder,
    Color? drawerTopBarText,
    Color? line,
    Color? lineText,
    Color? link,
    Color? linkPressed,
    Color? noiseBack,
    Color? noisePrimary,
    Color? noiseSecondary,
    Color? radioButtonBack,
    Color? radioButtonInsidesChosen,
    Color? radioButtonInsidesNotChosen,
    Color? radioButtonOutsidesChosen,
    Color? radioButtonOutsidesNotChosen,
    Color? standartGreen,
    Color? standartRed,
    Color? tapHint,
    Color? textButton,
    Color? textChoiceStatus,
    Color? textCountryName,
    Color? textStates,
    Color? textStatus,
    Color? title,
    Color? titleElement,
    Color? titleShadow,
    Color? windowBarrier,
    Color? windowBottomText,
    Color? windowMainBack,
    Color? windowMainText,
    Color? windowSeparator,
    Color? windowShadow,
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
        backPrime: backPrime ?? this.backPrime,
        block: block ?? this.block,
        blockBorder: blockBorder ?? this.blockBorder,
        bottomBarBack: bottomBarBack ?? this.bottomBarBack,
        bottomBarBorder: bottomBarBorder ?? this.bottomBarBorder,
        bottomBarText: bottomBarText ?? this.bottomBarText,
        bottomBarTextPrime: bottomBarTextPrime ?? this.bottomBarTextPrime,
        button: button ?? this.button,
        buttonChooseConnection: buttonChooseConnection ?? this.buttonChooseConnection,
        buttonConnectBack: buttonConnectBack ?? this.buttonConnectBack,
        buttonConnectBorder: buttonConnectBorder ?? this.buttonConnectBorder,
        buttonConnectIcon: buttonConnectIcon ?? this.buttonConnectIcon,
        buttonConnectShadow: buttonConnectShadow ?? this.buttonConnectShadow,
        buttonText: buttonText ?? this.buttonText,
        check: check ?? this.check,
        checkBack: checkBack ?? this.checkBack,
        circleBack: circleBack ?? this.circleBack,
        circleBorder: circleBorder ?? this.circleBorder,
        drawerBack: drawerBack ?? this.drawerBack,
        drawerBottomBarBack: drawerBottomBarBack ?? this.drawerBottomBarBack,
        drawerBottomBarBorder: drawerBottomBarBorder ?? this.drawerBottomBarBorder,
        drawerBottomBarText: drawerBottomBarText ?? this.drawerBottomBarText,
        drawerOptionIconLeft: drawerOptionIconLeft ?? this.drawerOptionIconLeft,
        drawerOptionIconRight: drawerOptionIconRight ?? this.drawerOptionIconRight,
        drawerOptionText: drawerOptionText ?? this.drawerOptionText,
        drawerOptionTextValue: drawerOptionTextValue ?? this.drawerOptionTextValue,
        drawerTopBarBack: drawerTopBarBack ?? this.drawerTopBarBack,
        drawerTopBarBorder: drawerTopBarBorder ?? this.drawerTopBarBorder,
        drawerTopBarText: drawerTopBarText ?? this.drawerTopBarText,
        line: line ?? this.line,
        lineText: lineText ?? this.lineText,
        link: link ?? this.link,
        linkPressed: linkPressed ?? this.linkPressed,
        noiseBack: noiseBack ?? this.noiseBack,
        noisePrimary: noisePrimary ?? this.noisePrimary,
        noiseSecondary: noiseSecondary ?? this.noiseSecondary,
        radioButtonBack: radioButtonBack ?? this.radioButtonBack,
        radioButtonInsidesChosen: radioButtonInsidesChosen ?? this.radioButtonInsidesChosen,
        radioButtonInsidesNotChosen: radioButtonInsidesNotChosen ?? this.radioButtonInsidesNotChosen,
        radioButtonOutsidesChosen: radioButtonOutsidesChosen ?? this.radioButtonOutsidesChosen,
        radioButtonOutsidesNotChosen: radioButtonOutsidesNotChosen ?? this.radioButtonOutsidesNotChosen,
        standartGreen: standartGreen ?? this.standartGreen,
        standartRed: standartRed ?? this.standartRed,
        tapHint: tapHint ?? this.tapHint,
        textButton: textButton ?? this.textButton,
        textChoiceStatus: textChoiceStatus ?? this.textChoiceStatus,
        textCountryName: textCountryName ?? this.textCountryName,
        textStates: textStates ?? this.textStates,
        textStatus: textStatus ?? this.textStatus,
        title: title ?? this.title,
        titleElement: titleElement ?? this.titleElement,
        titleShadow: titleShadow ?? this.titleShadow,
        windowBarrier: windowBarrier ?? this.windowBarrier,
        windowBottomText: windowBottomText ?? this.windowBottomText,
        windowMainBack: windowMainBack ?? this.windowMainBack,
        windowMainText: windowMainText ?? this.windowMainText,
        windowSeparator: windowSeparator ?? this.windowSeparator,
        windowShadow: windowShadow ?? this.windowShadow,
        windowTopBack: windowTopBack ?? this.windowTopBack,
        windowTopText: windowTopText ?? this.windowTopText
      )

    );

  }


  @override AppColors lerp (ThemeExtension <AppColors>? other, double t) {

    if (other is! AppColors) {

      return this;

    }

    return (

      AppColors (
        appBarBack: Color.lerp (appBarBack, other.appBarBack, t) ?? appBarBack,
        appBarBorder: Color.lerp (appBarBorder, other.appBarBorder, t) ?? appBarBorder,
        appBarButtonBack: Color.lerp (appBarButtonBack, other.appBarButtonBack, t) ?? appBarButtonBack,
        appBarButtonBorder: Color.lerp (appBarButtonBorder, other.appBarButtonBorder, t) ?? appBarButtonBorder,
        appBarButtonIcon: Color.lerp (appBarButtonIcon, other.appBarButtonIcon, t) ?? appBarButtonIcon,
        back: Color.lerp (back, other.back, t) ?? back,
        backPrime: Color.lerp (backPrime, other.backPrime, t) ?? backPrime,
        block: Color.lerp (block, other.block, t) ?? block,
        blockBorder: Color.lerp (blockBorder, other.blockBorder, t) ?? blockBorder,
        bottomBarBack: Color.lerp (bottomBarBack, other.bottomBarBack, t) ?? bottomBarBack,
        bottomBarBorder: Color.lerp (bottomBarBorder, other.bottomBarBorder, t) ?? bottomBarBorder,
        bottomBarText: Color.lerp (bottomBarText, other.bottomBarText, t) ?? bottomBarText,
        bottomBarTextPrime: Color.lerp (bottomBarTextPrime, other.bottomBarTextPrime, t) ?? bottomBarTextPrime,
        button: Color.lerp (button, other.button, t) ?? button,
        buttonChooseConnection: Color.lerp (buttonChooseConnection, other.buttonChooseConnection, t) ?? buttonChooseConnection,
        buttonConnectBack: Color.lerp (buttonConnectBack, other.buttonConnectBack, t) ?? buttonConnectBack,
        buttonConnectBorder: Color.lerp (buttonConnectBorder, other.buttonConnectBorder, t) ?? buttonConnectBorder,
        buttonConnectIcon: Color.lerp (buttonConnectIcon, other.buttonConnectIcon, t) ?? buttonConnectIcon,
        buttonConnectShadow: Color.lerp (buttonConnectShadow, other.buttonConnectShadow, t) ?? buttonConnectShadow,
        buttonText: Color.lerp (buttonText, other.buttonText, t) ?? buttonText,
        check: Color.lerp (check, other.check, t) ?? check,
        checkBack: Color.lerp (checkBack, other.checkBack, t) ?? checkBack,
        circleBack: Color.lerp (circleBack, other.circleBack, t) ?? circleBack,
        circleBorder: Color.lerp (circleBorder, other.circleBorder, t) ?? circleBorder,
        drawerBack: Color.lerp (drawerBack, other.drawerBack, t) ?? drawerBack,
        drawerBottomBarBack: Color.lerp (drawerBottomBarBack, other.drawerBottomBarBack, t) ?? drawerBottomBarBack,
        drawerBottomBarBorder: Color.lerp (drawerBottomBarBorder, other.drawerBottomBarBorder, t) ?? drawerBottomBarBorder,
        drawerBottomBarText: Color.lerp (drawerBottomBarText, other.drawerBottomBarText, t) ?? drawerBottomBarText,
        drawerOptionIconLeft: Color.lerp (drawerOptionIconLeft, other.drawerOptionIconLeft, t) ?? drawerOptionIconLeft,
        drawerOptionIconRight: Color.lerp (drawerOptionIconRight, other.drawerOptionIconRight, t) ?? drawerOptionIconRight,
        drawerOptionText: Color.lerp (drawerOptionText, other.drawerOptionText, t) ?? drawerOptionText,
        drawerOptionTextValue: Color.lerp (drawerOptionTextValue, other.drawerOptionTextValue, t) ?? drawerOptionTextValue,
        drawerTopBarBack: Color.lerp (drawerTopBarBack, other.drawerTopBarBack, t) ?? drawerTopBarBack,
        drawerTopBarBorder: Color.lerp (drawerTopBarBorder, other.drawerTopBarBorder, t) ?? drawerTopBarBorder,
        drawerTopBarText: Color.lerp (drawerTopBarText, other.drawerTopBarText, t) ?? drawerTopBarText,
        line: Color.lerp (line, other.line, t) ?? line,
        lineText: Color.lerp (lineText, other.lineText, t) ?? lineText,
        link: Color.lerp (link, other.link, t) ?? link,
        linkPressed: Color.lerp (linkPressed, other.linkPressed, t) ?? linkPressed,
        noiseBack: Color.lerp (noiseBack, other.noiseBack, t) ?? noiseBack,
        noisePrimary: Color.lerp (noisePrimary, other.noisePrimary, t) ?? noisePrimary,
        noiseSecondary: Color.lerp (noiseSecondary, other.noiseSecondary, t) ?? noiseSecondary,
        radioButtonBack: Color.lerp (radioButtonBack, other.radioButtonBack, t) ?? radioButtonBack,
        radioButtonInsidesChosen: Color.lerp (radioButtonInsidesChosen, other.radioButtonInsidesChosen, t) ?? radioButtonInsidesChosen,
        radioButtonInsidesNotChosen: Color.lerp (radioButtonInsidesNotChosen, other.radioButtonInsidesNotChosen, t) ?? radioButtonInsidesNotChosen,
        radioButtonOutsidesChosen: Color.lerp (radioButtonOutsidesChosen, other.radioButtonOutsidesChosen, t) ?? radioButtonOutsidesChosen,
        radioButtonOutsidesNotChosen: Color.lerp (radioButtonOutsidesNotChosen, other.radioButtonOutsidesNotChosen, t) ?? radioButtonOutsidesNotChosen,
        standartGreen: Color.lerp (standartGreen, other.standartGreen, t) ?? standartGreen,
        standartRed: Color.lerp (standartRed, other.standartRed, t) ?? standartRed,
        tapHint: Color.lerp (tapHint, other.tapHint, t) ?? tapHint,
        textButton: Color.lerp (textButton, other.textButton, t) ?? textButton,
        textChoiceStatus: Color.lerp (textChoiceStatus, other.textChoiceStatus, t) ?? textChoiceStatus,
        textCountryName: Color.lerp (textCountryName, other.textCountryName, t) ?? textCountryName,
        textStates: Color.lerp (textStates, other.textStates, t) ?? textStates,
        textStatus: Color.lerp (textStatus, other.textStatus, t) ?? textStatus,
        title: Color.lerp (title, other.title, t) ?? title,
        titleElement: Color.lerp (titleElement, other.titleElement, t) ?? titleElement,
        titleShadow: Color.lerp (titleShadow, other.titleShadow, t) ?? titleShadow,
        windowBarrier: Color.lerp (windowBarrier, other.windowBarrier, t) ?? windowBarrier,
        windowBottomText: Color.lerp (windowBottomText, other.windowBottomText, t) ?? windowBottomText,
        windowMainBack: Color.lerp (windowMainBack, other.windowMainBack, t) ?? windowMainBack,
        windowMainText: Color.lerp (windowMainText, other.windowMainText, t) ?? windowMainText,
        windowSeparator: Color.lerp (windowSeparator, other.windowSeparator, t) ?? windowSeparator,
        windowShadow: Color.lerp (windowShadow, other.windowShadow, t) ?? windowShadow,
        windowTopBack: Color.lerp (windowTopBack, other.windowTopBack, t) ?? windowTopBack,
        windowTopText: Color.lerp (windowTopText, other.windowTopText, t) ?? windowTopText
      )

    );

  }

}



extension AppColorsExtension on BuildContext {

  AppColors get colors => Theme.of(this).extension<AppColors>()!;

}