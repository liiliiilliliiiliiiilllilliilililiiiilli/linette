// Colors module

import 'package:flutter/material.dart';



class AppColorsPalette {

  const AppColorsPalette._ ();


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
  static const Color grey_13 = Color (0xffbfbfbf);
  static const Color grey_14 = Color (0xffcdcdcd);
  static const Color grey_15 = Color (0xfffafafa);
  static const Color blue_1 = Color (0xff9da6d9);
  static const Color green_1 = Color (0xff12361b);
  static const Color green_2 = Color (0xff1b1c1b);
  static const Color green_3 = Color (0xff394335);
  static const Color green_4 = Color (0xff567560);
  static const Color green_5 = Color (0xff687262);
  static const Color green_6 = Color (0xff8b9e80);
  static const Color green_7 = Color (0xffd8e0d7);
  static const Color red_1 = Color (0xffcb393c);

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
  final Color linkInternal;
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
  final Color textFieldBack;
  final Color textFieldBorder;
  final Color textFieldCursor;
  final Color textFieldHint;
  final Color textFieldText;
  final Color textStates;
  final Color textStatus;
  final Color title;
  final Color titleElement;
  final Color titleShadow;
  final Color windowAccountBodyUserAvaBorder;
  final Color windowAccountBodyUserNameIcon;
  final Color windowAccountBodyUserNameText;
  final Color windowAccountBodyUserSubscribers;
  final Color windowBarSeparator;
  final Color windowBarrier;
  final Color windowBodyActionCritical;
  final Color windowBodyActionRegular;
  final Color windowBottomText;
  final Color windowBottomTextNotActive;
  final Color windowMainBack;
  final Color windowMainStata;
  final Color windowMainStataValue;
  final Color windowMainText;
  final Color windowMainTextAuxiliary;
  final Color windowMainTitle;
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
    required this.linkInternal,
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
    required this.textFieldBack,
    required this.textFieldBorder,
    required this.textFieldCursor,
    required this.textFieldHint,
    required this.textFieldText,
    required this.textStates,
    required this.textStatus,
    required this.title,
    required this.titleElement,
    required this.titleShadow,
    required this.windowAccountBodyUserAvaBorder,
    required this.windowAccountBodyUserNameIcon,
    required this.windowAccountBodyUserNameText,
    required this.windowAccountBodyUserSubscribers,
    required this.windowBarSeparator,
    required this.windowBarrier,
    required this.windowBodyActionCritical,
    required this.windowBodyActionRegular,
    required this.windowBottomText,
    required this.windowBottomTextNotActive,
    required this.windowMainBack,
    required this.windowMainStata,
    required this.windowMainStataValue,
    required this.windowMainText,
    required this.windowMainTextAuxiliary,
    required this.windowMainTitle,
    required this.windowSeparator,
    required this.windowShadow,
    required this.windowTopBack,
    required this.windowTopText
  });


  static const AppColors darkGreen = AppColors (
    appBarBack: AppColorsPalette.grey_2,
    appBarBorder: AppColorsPalette.grey_7,
    appBarButtonBack: AppColorsPalette.black,
    appBarButtonBorder: AppColorsPalette.grey_9,
    appBarButtonIcon: AppColorsPalette.grey,
    back: AppColorsPalette.black,
    backPrime: AppColorsPalette.grey_2,
    block: AppColorsPalette.grey_5,
    blockBorder: AppColorsPalette.green_3,
    bottomBarBack: AppColorsPalette.transparent_2_grey_3,
    bottomBarBorder: AppColorsPalette.black,
    bottomBarText: AppColorsPalette.grey_12,
    bottomBarTextPrime: AppColorsPalette.green_6,
    button: AppColorsPalette.green_6,
    buttonChooseConnection: AppColorsPalette.green_6,
    buttonConnectBack: AppColorsPalette.green_6,
    buttonConnectBorder: AppColorsPalette.black,
    buttonConnectIcon: AppColorsPalette.grey_1,
    buttonConnectShadow: AppColorsPalette.transparent_3_grey_1,
    buttonText: AppColorsPalette.black,
    check: AppColorsPalette.grey_3,
    checkBack: AppColorsPalette.green_6,
    circleBack: AppColorsPalette.black,
    circleBorder: AppColorsPalette.grey_10,
    drawerBack: AppColorsPalette.grey_3,
    drawerBottomBarBack: AppColorsPalette.grey_2,
    drawerBottomBarBorder: AppColorsPalette.grey_7,
    drawerBottomBarText: AppColorsPalette.cream,
    drawerOptionIconLeft: AppColorsPalette.grey,
    drawerOptionIconRight: AppColorsPalette.grey,
    drawerOptionText: AppColorsPalette.cream,
    drawerOptionTextValue: AppColorsPalette.grey,
    drawerTopBarBack: AppColorsPalette.grey_2,
    drawerTopBarBorder: AppColorsPalette.grey_7,
    drawerTopBarText: AppColorsPalette.cream,
    line: AppColorsPalette.green_2,
    lineText: AppColorsPalette.cream,
    link: AppColorsPalette.blue_1,
    linkInternal: AppColorsPalette.green_6,
    noiseBack: AppColorsPalette.black,
    noisePrimary: AppColorsPalette.green_4,
    noiseSecondary: AppColorsPalette.black,
    radioButtonBack: AppColorsPalette.black,
    radioButtonInsidesChosen: AppColorsPalette.green_6,
    radioButtonInsidesNotChosen: AppColorsPalette.black,
    radioButtonOutsidesChosen: AppColorsPalette.transparent_4_green_1,
    radioButtonOutsidesNotChosen: AppColorsPalette.transparent_1_grey_3,
    standartGreen: AppColorsPalette.green,
    standartRed: AppColorsPalette.red,
    tapHint: AppColorsPalette.green_5,
    textButton: AppColorsPalette.green_6,
    textChoiceStatus: AppColorsPalette.grey_12,
    textCountryName: AppColorsPalette.cream,
    textFieldBack: AppColorsPalette.black,
    textFieldBorder: AppColorsPalette.grey_9,
    textFieldCursor: AppColorsPalette.green_6,
    textFieldHint: AppColorsPalette.grey,
    textFieldText: AppColorsPalette.cream,
    textStates: AppColorsPalette.grey,
    textStatus: AppColorsPalette.cream,
    title: AppColorsPalette.cream,
    titleElement: AppColorsPalette.green_6,
    titleShadow: AppColorsPalette.transparent_4_grey_1,
    windowAccountBodyUserAvaBorder: AppColorsPalette.grey_10,
    windowAccountBodyUserNameIcon: AppColorsPalette.grey_13,
    windowAccountBodyUserNameText: AppColorsPalette.cream,
    windowAccountBodyUserSubscribers: AppColorsPalette.grey,
    windowBarSeparator: AppColorsPalette.grey_4,
    windowBarrier: AppColorsPalette.transparent_2_grey_1,
    windowBodyActionCritical: AppColorsPalette.red_1,
    windowBodyActionRegular: AppColorsPalette.green_6,
    windowBottomText: AppColorsPalette.green_6,
    windowBottomTextNotActive: AppColorsPalette.grey_11,
    windowMainBack: AppColorsPalette.grey_6,
    windowMainStata: AppColorsPalette.grey,
    windowMainStataValue: AppColorsPalette.grey,
    windowMainText: AppColorsPalette.cream,
    windowMainTextAuxiliary: AppColorsPalette.grey,
    windowMainTitle: AppColorsPalette.cream,
    windowSeparator: AppColorsPalette.grey_9,
    windowShadow: AppColorsPalette.transparent_1_grey_1,
    windowTopBack: AppColorsPalette.grey_8,
    windowTopText: AppColorsPalette.cream
  );

  static const AppColors lightGreen = AppColors (
    appBarBack: AppColorsPalette.grey_15,
    appBarBorder: AppColorsPalette.grey_14,
    appBarButtonBack: AppColorsPalette.white,
    appBarButtonBorder: AppColorsPalette.grey_14,
    appBarButtonIcon: AppColorsPalette.grey_11,
    back: AppColorsPalette.cream,
    backPrime: AppColorsPalette.grey_15,
    block: AppColorsPalette.white,
    blockBorder: AppColorsPalette.grey_14,
    bottomBarBack: AppColorsPalette.transparent_2_grey_4,
    bottomBarBorder: AppColorsPalette.grey_14,
    bottomBarText: AppColorsPalette.black,
    bottomBarTextPrime: AppColorsPalette.green_4,
    button: AppColorsPalette.black,
    buttonChooseConnection: AppColorsPalette.black,
    buttonConnectBack: AppColorsPalette.green_6,
    buttonConnectBorder: AppColorsPalette.black,
    buttonConnectIcon: AppColorsPalette.grey_1,
    buttonConnectShadow: AppColorsPalette.transparent_3_grey_1,
    buttonText: AppColorsPalette.cream,
    check: AppColorsPalette.cream,
    checkBack: AppColorsPalette.green_6,
    circleBack: AppColorsPalette.cream,
    circleBorder: AppColorsPalette.grey_14,
    drawerBack: AppColorsPalette.cream,
    drawerBottomBarBack: AppColorsPalette.grey_15,
    drawerBottomBarBorder: AppColorsPalette.grey_14,
    drawerBottomBarText: AppColorsPalette.black,
    drawerOptionIconLeft: AppColorsPalette.black,
    drawerOptionIconRight: AppColorsPalette.black,
    drawerOptionText: AppColorsPalette.black,
    drawerOptionTextValue: AppColorsPalette.black,
    drawerTopBarBack: AppColorsPalette.grey_15,
    drawerTopBarBorder: AppColorsPalette.grey_14,
    drawerTopBarText: AppColorsPalette.black,
    line: AppColorsPalette.grey_14,
    lineText: AppColorsPalette.black,
    link: AppColorsPalette.blue,
    linkInternal: AppColorsPalette.green_6,
    noiseBack: AppColorsPalette.green_7,
    noisePrimary: AppColorsPalette.green_1,
    noiseSecondary: AppColorsPalette.green_7,
    radioButtonBack: AppColorsPalette.white,
    radioButtonInsidesChosen: AppColorsPalette.green_6,
    radioButtonInsidesNotChosen: AppColorsPalette.white,
    radioButtonOutsidesChosen: AppColorsPalette.transparent_4_green_1,
    radioButtonOutsidesNotChosen: AppColorsPalette.transparent_1_grey_3,
    standartGreen: AppColorsPalette.green,
    standartRed: AppColorsPalette.red,
    tapHint: AppColorsPalette.black,
    textButton: AppColorsPalette.black,
    textChoiceStatus: AppColorsPalette.grey_12,
    textCountryName: AppColorsPalette.black,
    textFieldBack: AppColorsPalette.grey_15,
    textFieldBorder: AppColorsPalette.grey_14,
    textFieldCursor: AppColorsPalette.green_6,
    textFieldHint: AppColorsPalette.grey_11,
    textFieldText: AppColorsPalette.black,
    textStates: AppColorsPalette.black,
    textStatus: AppColorsPalette.black,
    title: AppColorsPalette.black,
    titleElement: AppColorsPalette.green_6,
    titleShadow: AppColorsPalette.transparent_4_grey_1,
    windowAccountBodyUserAvaBorder: AppColorsPalette.black,
    windowAccountBodyUserNameIcon: AppColorsPalette.black,
    windowAccountBodyUserNameText: AppColorsPalette.black,
    windowAccountBodyUserSubscribers: AppColorsPalette.grey,
    windowBarSeparator: AppColorsPalette.grey_14,
    windowBarrier: AppColorsPalette.transparent_2_grey_1,
    windowBodyActionCritical: AppColorsPalette.red_1,
    windowBodyActionRegular: AppColorsPalette.black,
    windowBottomText: AppColorsPalette.black,
    windowBottomTextNotActive: AppColorsPalette.grey,
    windowMainBack: AppColorsPalette.cream,
    windowMainStata: AppColorsPalette.grey_11,
    windowMainStataValue: AppColorsPalette.grey_11,
    windowMainText: AppColorsPalette.black,
    windowMainTextAuxiliary: AppColorsPalette.black,
    windowMainTitle: AppColorsPalette.black,
    windowSeparator: AppColorsPalette.grey_14,
    windowShadow: AppColorsPalette.transparent_1_grey_1,
    windowTopBack: AppColorsPalette.grey_15,
    windowTopText: AppColorsPalette.black
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
    Color? linkInternal,
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
    Color? textFieldBack,
    Color? textFieldBorder,
    Color? textFieldCursor,
    Color? textFieldHint,
    Color? textFieldText,
    Color? textStates,
    Color? textStatus,
    Color? title,
    Color? titleElement,
    Color? titleShadow,
    Color? windowAccountBodyUserAvaBorder,
    Color? windowAccountBodyUserNameIcon,
    Color? windowAccountBodyUserNameText,
    Color? windowAccountBodyUserSubscribers,
    Color? windowBarSeparator,
    Color? windowBarrier,
    Color? windowBodyActionCritical,
    Color? windowBodyActionRegular,
    Color? windowBottomText,
    Color? windowBottomTextNotActive,
    Color? windowMainBack,
    Color? windowMainStata,
    Color? windowMainStataValue,
    Color? windowMainText,
    Color? windowMainTextAuxiliary,
    Color? windowMainTitle,
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
        linkInternal: linkInternal ?? this.linkInternal,
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
        textFieldBack: textFieldBack ?? this.textFieldBack,
        textFieldBorder: textFieldBorder ?? this.textFieldBorder,
        textFieldCursor: textFieldCursor ?? this.textFieldCursor,
        textFieldHint: textFieldHint ?? this.textFieldHint,
        textFieldText: textFieldText ?? this.textFieldText,
        textStates: textStates ?? this.textStates,
        textStatus: textStatus ?? this.textStatus,
        title: title ?? this.title,
        titleElement: titleElement ?? this.titleElement,
        titleShadow: titleShadow ?? this.titleShadow,
        windowAccountBodyUserAvaBorder: windowAccountBodyUserAvaBorder ?? this.windowAccountBodyUserAvaBorder,
        windowAccountBodyUserNameIcon: windowAccountBodyUserNameIcon ?? this.windowAccountBodyUserNameIcon,
        windowAccountBodyUserNameText: windowAccountBodyUserNameText ?? this.windowAccountBodyUserNameText,
        windowAccountBodyUserSubscribers: windowAccountBodyUserSubscribers ?? this.windowAccountBodyUserSubscribers,
        windowBarSeparator: windowBarSeparator ?? this.windowBarSeparator,
        windowBarrier: windowBarrier ?? this.windowBarrier,
        windowBodyActionCritical: windowBodyActionCritical ?? this.windowBodyActionCritical,
        windowBodyActionRegular: windowBodyActionRegular ?? this.windowBodyActionRegular,
        windowBottomText: windowBottomText ?? this.windowBottomText,
        windowBottomTextNotActive: windowBottomTextNotActive ?? this.windowBottomTextNotActive,
        windowMainBack: windowMainBack ?? this.windowMainBack,
        windowMainStata: windowMainStata ?? this.windowMainStata,
        windowMainStataValue: windowMainStataValue ?? this.windowMainStataValue,
        windowMainText: windowMainText ?? this.windowMainText,
        windowMainTextAuxiliary: windowMainTextAuxiliary ?? this.windowMainTextAuxiliary,
        windowMainTitle: windowMainTitle ?? this.windowMainTitle,
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
        linkInternal: Color.lerp (linkInternal, other.linkInternal, t) ?? linkInternal,
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
        textFieldBack: Color.lerp (textFieldBack, other.textFieldBack, t) ?? textFieldBack,
        textFieldBorder: Color.lerp (textFieldBorder, other.textFieldBorder, t) ?? textFieldBorder,
        textFieldCursor: Color.lerp (textFieldCursor, other.textFieldCursor, t) ?? textFieldCursor,
        textFieldHint: Color.lerp (textFieldHint, other.textFieldHint, t) ?? textFieldHint,
        textFieldText: Color.lerp (textFieldText, other.textFieldText, t) ?? textFieldText,
        textStates: Color.lerp (textStates, other.textStates, t) ?? textStates,
        textStatus: Color.lerp (textStatus, other.textStatus, t) ?? textStatus,
        title: Color.lerp (title, other.title, t) ?? title,
        titleElement: Color.lerp (titleElement, other.titleElement, t) ?? titleElement,
        titleShadow: Color.lerp (titleShadow, other.titleShadow, t) ?? titleShadow,
        windowAccountBodyUserAvaBorder: Color.lerp (windowAccountBodyUserAvaBorder, other.windowAccountBodyUserAvaBorder, t) ?? windowAccountBodyUserAvaBorder,
        windowAccountBodyUserNameIcon: Color.lerp (windowAccountBodyUserNameIcon, other.windowAccountBodyUserNameIcon, t) ?? windowAccountBodyUserNameIcon,
        windowAccountBodyUserNameText: Color.lerp (windowAccountBodyUserNameText, other.windowAccountBodyUserNameText, t) ?? windowAccountBodyUserNameText,
        windowAccountBodyUserSubscribers: Color.lerp (windowAccountBodyUserSubscribers, other.windowAccountBodyUserSubscribers, t) ?? windowAccountBodyUserSubscribers,
        windowBarSeparator: Color.lerp (windowBarSeparator, other.windowBarSeparator, t) ?? windowBarSeparator,
        windowBarrier: Color.lerp (windowBarrier, other.windowBarrier, t) ?? windowBarrier,
        windowBodyActionCritical: Color.lerp (windowBodyActionCritical, other.windowBodyActionCritical, t) ?? windowBodyActionCritical,
        windowBodyActionRegular: Color.lerp (windowBodyActionRegular, other.windowBodyActionRegular, t) ?? windowBodyActionRegular,
        windowBottomText: Color.lerp (windowBottomText, other.windowBottomText, t) ?? windowBottomText,
        windowBottomTextNotActive: Color.lerp (windowBottomTextNotActive, other.windowBottomTextNotActive, t) ?? windowBottomTextNotActive,
        windowMainBack: Color.lerp (windowMainBack, other.windowMainBack, t) ?? windowMainBack,
        windowMainStata: Color.lerp (windowMainStata, other.windowMainStata, t) ?? windowMainStata,
        windowMainStataValue: Color.lerp (windowMainStataValue, other.windowMainStataValue, t) ?? windowMainStataValue,
        windowMainText: Color.lerp (windowMainText, other.windowMainText, t) ?? windowMainText,
        windowMainTextAuxiliary: Color.lerp (windowMainTextAuxiliary, other.windowMainTextAuxiliary, t) ?? windowMainTextAuxiliary,
        windowMainTitle: Color.lerp (windowMainTitle, other.windowMainTitle, t) ?? windowMainTitle,
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