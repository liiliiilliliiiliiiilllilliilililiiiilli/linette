// Icons module

import 'package:flutter/material.dart';



class AppIconsPalette {

  const AppIconsPalette._ ();


  static const String bat = 'assets/images/icons/common/bat.svg';
  static const String bunny = 'assets/images/icons/common/bunny.svg';
  static const String butterfly = 'assets/images/icons/common/butterfly.svg';
  static const String candy = 'assets/images/icons/common/candy.svg';
  static const String cat = 'assets/images/icons/common/cat.png';
  static const String checkMark = 'assets/images/icons/common/check_mark.svg';
  static const String christmasHat = 'assets/images/icons/common/christmas_hat.svg';
  static const String christmasTreeToy = 'assets/images/icons/common/christmas_tree_toy.svg';
  static const String cottonCandy = 'assets/images/icons/common/cotton_candy.svg';
  static const String cupcake = 'assets/images/icons/common/cupcake.svg';
  static const String egg = 'assets/images/icons/common/egg.svg';
  static const String finlandFlag = 'assets/images/icons/common/finland_flag.svg';
  static const String flower = 'assets/images/icons/common/flower.svg';
  static const String germanyFlag = 'assets/images/icons/common/germany_flag.svg';
  static const String ghost = 'assets/images/icons/common/ghost.svg';
  static const String gift = 'assets/images/icons/common/gift.svg';
  static const String goArrow = 'assets/images/icons/common/go_arrow.svg';
  static const String heart = 'assets/images/icons/common/heart.svg';
  static const String heartKey = 'assets/images/icons/common/heart_key.svg';
  static const String hotAirBaloon = 'assets/images/icons/common/hot_air_baloon.svg';
  static const String info = 'assets/images/icons/common/info.svg';
  static const String language = 'assets/images/icons/common/language.svg';
  static const String letter = 'assets/images/icons/common/letter.svg';
  static const String location = 'assets/images/icons/common/location.svg';
  static const String magicWand = 'assets/images/icons/common/magic_wand.svg';
  static const String menu = 'assets/images/icons/common/menu.svg';
  static const String moon = 'assets/images/icons/common/moon.svg';
  static const String navigateArrow = 'assets/images/icons/common/navigate_arrow.svg';
  static const String net = 'assets/images/icons/common/net.svg';
  static const String netherlandsFlag = 'assets/images/icons/common/netherlands_flag.svg';
  static const String oliveBranch = 'assets/images/icons/common/olive_branch.svg';
  static const String pencil = 'assets/images/icons/common/pencil.svg';
  static const String pumpkin = 'assets/images/icons/common/pumpkin.svg';
  static const String snowGlobe = 'assets/images/icons/common/snow_globe.svg';
  static const String snowflake = 'assets/images/icons/common/snowflake.svg';
  static const String stars = 'assets/images/icons/common/stars.svg';
  static const String sun = 'assets/images/icons/common/sun.svg';
  static const String tap = 'assets/images/icons/common/tap.svg';
  static const String unwrapTriangle = 'assets/images/icons/common/unwrap_triangle.svg';
  static const String user = 'assets/images/icons/common/user.svg';
  static const String wallet = 'assets/images/icons/common/wallet.svg';

}



class AppIcons extends ThemeExtension <AppIcons> {

  final String buttonAppBarBack;
  final String buttonAppBarMenu;
  final String buttonAppBarTheme;
  final String buttonChangeLanguage;
  final String buttonChooseConnectionLeft;
  final String buttonChooseConnectionRight;
  final String buttonConnect;
  final String buttonGo;
  final String connectionFinland;
  final String connectionGermany;
  final String connectionNetherlands;
  final String drawerOptionLeftAccount;
  final String drawerOptionLeftArsenal;
  final String drawerOptionLeftFeedback;
  final String drawerOptionLeftLanguage;
  final String drawerOptionLeftNet;
  final String drawerOptionLeftWallet;
  final String drawerOptionRight;
  final String hintTap;
  final String linkEnter;
  final String windowBodyAccountNameAva;
  final String windowBodyAccountNameEdit;
  final String windowBodyActionChoice;
  final String windowBodyActionChoiceVariant;
  final String windowBodyActionLink;
  final String windowBodyActionTransition;


  const AppIcons ({
    required this.buttonAppBarBack,
    required this.buttonAppBarMenu,
    required this.buttonAppBarTheme,
    required this.buttonChangeLanguage,
    required this.buttonChooseConnectionLeft,
    required this.buttonChooseConnectionRight,
    required this.buttonConnect,
    required this.buttonGo,
    required this.connectionFinland,
    required this.connectionGermany,
    required this.connectionNetherlands,
    required this.drawerOptionLeftAccount,
    required this.drawerOptionLeftArsenal,
    required this.drawerOptionLeftFeedback,
    required this.drawerOptionLeftLanguage,
    required this.drawerOptionLeftNet,
    required this.drawerOptionLeftWallet,
    required this.drawerOptionRight,
    required this.hintTap,
    required this.linkEnter,
    required this.windowBodyAccountNameAva,
    required this.windowBodyAccountNameEdit,
    required this.windowBodyActionChoice,
    required this.windowBodyActionChoiceVariant,
    required this.windowBodyActionLink,
    required this.windowBodyActionTransition
  });


  static const AppIcons darkGreenRegular = AppIcons (
    buttonAppBarBack: AppIconsPalette.navigateArrow,
    buttonAppBarMenu: AppIconsPalette.menu,
    buttonAppBarTheme: AppIconsPalette.moon,
    buttonChangeLanguage: AppIconsPalette.language,
    buttonChooseConnectionLeft: AppIconsPalette.location,
    buttonChooseConnectionRight: AppIconsPalette.navigateArrow,
    buttonConnect: AppIconsPalette.oliveBranch,
    buttonGo: AppIconsPalette.navigateArrow,
    connectionFinland: AppIconsPalette.finlandFlag,
    connectionGermany: AppIconsPalette.germanyFlag,
    connectionNetherlands: AppIconsPalette.netherlandsFlag,
    drawerOptionLeftAccount: AppIconsPalette.user,
    drawerOptionLeftArsenal: AppIconsPalette.magicWand,
    drawerOptionLeftFeedback: AppIconsPalette.info,
    drawerOptionLeftLanguage: AppIconsPalette.language,
    drawerOptionLeftNet: AppIconsPalette.net,
    drawerOptionLeftWallet: AppIconsPalette.wallet,
    drawerOptionRight: AppIconsPalette.navigateArrow,
    hintTap: AppIconsPalette.tap,
    linkEnter: AppIconsPalette.goArrow,
    windowBodyAccountNameAva: AppIconsPalette.cat,
    windowBodyAccountNameEdit: AppIconsPalette.pencil,
    windowBodyActionChoice: AppIconsPalette.unwrapTriangle,
    windowBodyActionChoiceVariant: AppIconsPalette.checkMark,
    windowBodyActionLink: AppIconsPalette.goArrow,
    windowBodyActionTransition: AppIconsPalette.navigateArrow
  );

  static const AppIcons lightGreenRegular = AppIcons (
    buttonAppBarBack: AppIconsPalette.navigateArrow,
    buttonAppBarMenu: AppIconsPalette.menu,
    buttonAppBarTheme: AppIconsPalette.sun,
    buttonChangeLanguage: AppIconsPalette.language,
    buttonChooseConnectionLeft: AppIconsPalette.location,
    buttonChooseConnectionRight: AppIconsPalette.navigateArrow,
    buttonConnect: AppIconsPalette.oliveBranch,
    buttonGo: AppIconsPalette.navigateArrow,
    connectionFinland: AppIconsPalette.finlandFlag,
    connectionGermany: AppIconsPalette.germanyFlag,
    connectionNetherlands: AppIconsPalette.netherlandsFlag,
    drawerOptionLeftAccount: AppIconsPalette.user,
    drawerOptionLeftArsenal: AppIconsPalette.magicWand,
    drawerOptionLeftFeedback: AppIconsPalette.info,
    drawerOptionLeftLanguage: AppIconsPalette.language,
    drawerOptionLeftNet: AppIconsPalette.net,
    drawerOptionLeftWallet: AppIconsPalette.wallet,
    drawerOptionRight: AppIconsPalette.navigateArrow,
    hintTap: AppIconsPalette.tap,
    linkEnter: AppIconsPalette.goArrow,
    windowBodyAccountNameAva: AppIconsPalette.cat,
    windowBodyAccountNameEdit: AppIconsPalette.pencil,
    windowBodyActionChoice: AppIconsPalette.unwrapTriangle,
    windowBodyActionChoiceVariant: AppIconsPalette.checkMark,
    windowBodyActionLink: AppIconsPalette.goArrow,
    windowBodyActionTransition: AppIconsPalette.navigateArrow
  );

  static const AppIcons darkGreenHalloween = AppIcons (
    buttonAppBarBack: AppIconsPalette.navigateArrow,
    buttonAppBarMenu: AppIconsPalette.menu,
    buttonAppBarTheme: AppIconsPalette.moon,
    buttonChangeLanguage: AppIconsPalette.language,
    buttonChooseConnectionLeft: AppIconsPalette.location,
    buttonChooseConnectionRight: AppIconsPalette.navigateArrow,
    buttonConnect: AppIconsPalette.oliveBranch,
    buttonGo: AppIconsPalette.navigateArrow,
    connectionFinland: AppIconsPalette.finlandFlag,
    connectionGermany: AppIconsPalette.germanyFlag,
    connectionNetherlands: AppIconsPalette.netherlandsFlag,
    drawerOptionLeftAccount: AppIconsPalette.ghost,
    drawerOptionLeftArsenal: AppIconsPalette.stars,
    drawerOptionLeftFeedback: AppIconsPalette.bat,
    drawerOptionLeftLanguage: AppIconsPalette.language,
    drawerOptionLeftNet: AppIconsPalette.pumpkin,
    drawerOptionLeftWallet: AppIconsPalette.candy,
    drawerOptionRight: AppIconsPalette.navigateArrow,
    hintTap: AppIconsPalette.tap,
    linkEnter: AppIconsPalette.goArrow,
    windowBodyAccountNameAva: AppIconsPalette.cat,
    windowBodyAccountNameEdit: AppIconsPalette.pencil,
    windowBodyActionChoice: AppIconsPalette.unwrapTriangle,
    windowBodyActionChoiceVariant: AppIconsPalette.checkMark,
    windowBodyActionLink: AppIconsPalette.goArrow,
    windowBodyActionTransition: AppIconsPalette.navigateArrow
  );

  static const AppIcons lightGreenHalloween = AppIcons (
    buttonAppBarBack: AppIconsPalette.navigateArrow,
    buttonAppBarMenu: AppIconsPalette.menu,
    buttonAppBarTheme: AppIconsPalette.sun,
    buttonChangeLanguage: AppIconsPalette.language,
    buttonChooseConnectionLeft: AppIconsPalette.location,
    buttonChooseConnectionRight: AppIconsPalette.navigateArrow,
    buttonConnect: AppIconsPalette.oliveBranch,
    buttonGo: AppIconsPalette.navigateArrow,
    connectionFinland: AppIconsPalette.finlandFlag,
    connectionGermany: AppIconsPalette.germanyFlag,
    connectionNetherlands: AppIconsPalette.netherlandsFlag,
    drawerOptionLeftAccount: AppIconsPalette.ghost,
    drawerOptionLeftArsenal: AppIconsPalette.stars,
    drawerOptionLeftFeedback: AppIconsPalette.bat,
    drawerOptionLeftLanguage: AppIconsPalette.language,
    drawerOptionLeftNet: AppIconsPalette.pumpkin,
    drawerOptionLeftWallet: AppIconsPalette.candy,
    drawerOptionRight: AppIconsPalette.navigateArrow,
    hintTap: AppIconsPalette.tap,
    linkEnter: AppIconsPalette.goArrow,
    windowBodyAccountNameAva: AppIconsPalette.cat,
    windowBodyAccountNameEdit: AppIconsPalette.pencil,
    windowBodyActionChoice: AppIconsPalette.unwrapTriangle,
    windowBodyActionChoiceVariant: AppIconsPalette.checkMark,
    windowBodyActionLink: AppIconsPalette.goArrow,
    windowBodyActionTransition: AppIconsPalette.navigateArrow
  );

  static const AppIcons darkGreenNewYear = AppIcons (
    buttonAppBarBack: AppIconsPalette.navigateArrow,
    buttonAppBarMenu: AppIconsPalette.menu,
    buttonAppBarTheme: AppIconsPalette.moon,
    buttonChangeLanguage: AppIconsPalette.language,
    buttonChooseConnectionLeft: AppIconsPalette.location,
    buttonChooseConnectionRight: AppIconsPalette.navigateArrow,
    buttonConnect: AppIconsPalette.oliveBranch,
    buttonGo: AppIconsPalette.navigateArrow,
    connectionFinland: AppIconsPalette.finlandFlag,
    connectionGermany: AppIconsPalette.germanyFlag,
    connectionNetherlands: AppIconsPalette.netherlandsFlag,
    drawerOptionLeftAccount: AppIconsPalette.christmasHat,
    drawerOptionLeftArsenal: AppIconsPalette.christmasTreeToy,
    drawerOptionLeftFeedback: AppIconsPalette.letter,
    drawerOptionLeftLanguage: AppIconsPalette.language,
    drawerOptionLeftNet: AppIconsPalette.snowflake,
    drawerOptionLeftWallet: AppIconsPalette.snowGlobe,
    drawerOptionRight: AppIconsPalette.navigateArrow,
    hintTap: AppIconsPalette.tap,
    linkEnter: AppIconsPalette.goArrow,
    windowBodyAccountNameAva: AppIconsPalette.cat,
    windowBodyAccountNameEdit: AppIconsPalette.pencil,
    windowBodyActionChoice: AppIconsPalette.unwrapTriangle,
    windowBodyActionChoiceVariant: AppIconsPalette.checkMark,
    windowBodyActionLink: AppIconsPalette.goArrow,
    windowBodyActionTransition: AppIconsPalette.navigateArrow
  );

  static const AppIcons lightGreenNewYear = AppIcons (
    buttonAppBarBack: AppIconsPalette.navigateArrow,
    buttonAppBarMenu: AppIconsPalette.menu,
    buttonAppBarTheme: AppIconsPalette.sun,
    buttonChangeLanguage: AppIconsPalette.language,
    buttonChooseConnectionLeft: AppIconsPalette.location,
    buttonChooseConnectionRight: AppIconsPalette.navigateArrow,
    buttonConnect: AppIconsPalette.oliveBranch,
    buttonGo: AppIconsPalette.navigateArrow,
    connectionFinland: AppIconsPalette.finlandFlag,
    connectionGermany: AppIconsPalette.germanyFlag,
    connectionNetherlands: AppIconsPalette.netherlandsFlag,
    drawerOptionLeftAccount: AppIconsPalette.christmasHat,
    drawerOptionLeftArsenal: AppIconsPalette.christmasTreeToy,
    drawerOptionLeftFeedback: AppIconsPalette.letter,
    drawerOptionLeftLanguage: AppIconsPalette.language,
    drawerOptionLeftNet: AppIconsPalette.snowflake,
    drawerOptionLeftWallet: AppIconsPalette.snowGlobe,
    drawerOptionRight: AppIconsPalette.navigateArrow,
    hintTap: AppIconsPalette.tap,
    linkEnter: AppIconsPalette.goArrow,
    windowBodyAccountNameAva: AppIconsPalette.cat,
    windowBodyAccountNameEdit: AppIconsPalette.pencil,
    windowBodyActionChoice: AppIconsPalette.unwrapTriangle,
    windowBodyActionChoiceVariant: AppIconsPalette.checkMark,
    windowBodyActionLink: AppIconsPalette.goArrow,
    windowBodyActionTransition: AppIconsPalette.navigateArrow
  );

  static const AppIcons darkGreenValentine = AppIcons (
    buttonAppBarBack: AppIconsPalette.navigateArrow,
    buttonAppBarMenu: AppIconsPalette.menu,
    buttonAppBarTheme: AppIconsPalette.moon,
    buttonChangeLanguage: AppIconsPalette.language,
    buttonChooseConnectionLeft: AppIconsPalette.location,
    buttonChooseConnectionRight: AppIconsPalette.navigateArrow,
    buttonConnect: AppIconsPalette.oliveBranch,
    buttonGo: AppIconsPalette.navigateArrow,
    connectionFinland: AppIconsPalette.finlandFlag,
    connectionGermany: AppIconsPalette.germanyFlag,
    connectionNetherlands: AppIconsPalette.netherlandsFlag,
    drawerOptionLeftAccount: AppIconsPalette.heartKey,
    drawerOptionLeftArsenal: AppIconsPalette.cottonCandy,
    drawerOptionLeftFeedback: AppIconsPalette.heart,
    drawerOptionLeftLanguage: AppIconsPalette.language,
    drawerOptionLeftNet: AppIconsPalette.hotAirBaloon,
    drawerOptionLeftWallet: AppIconsPalette.gift,
    drawerOptionRight: AppIconsPalette.navigateArrow,
    hintTap: AppIconsPalette.tap,
    linkEnter: AppIconsPalette.goArrow,
    windowBodyAccountNameAva: AppIconsPalette.cat,
    windowBodyAccountNameEdit: AppIconsPalette.pencil,
    windowBodyActionChoice: AppIconsPalette.unwrapTriangle,
    windowBodyActionChoiceVariant: AppIconsPalette.checkMark,
    windowBodyActionLink: AppIconsPalette.goArrow,
    windowBodyActionTransition: AppIconsPalette.navigateArrow
  );

  static const AppIcons lightGreenValentine = AppIcons (
    buttonAppBarBack: AppIconsPalette.navigateArrow,
    buttonAppBarMenu: AppIconsPalette.menu,
    buttonAppBarTheme: AppIconsPalette.sun,
    buttonChangeLanguage: AppIconsPalette.language,
    buttonChooseConnectionLeft: AppIconsPalette.location,
    buttonChooseConnectionRight: AppIconsPalette.navigateArrow,
    buttonConnect: AppIconsPalette.oliveBranch,
    buttonGo: AppIconsPalette.navigateArrow,
    connectionFinland: AppIconsPalette.finlandFlag,
    connectionGermany: AppIconsPalette.germanyFlag,
    connectionNetherlands: AppIconsPalette.netherlandsFlag,
    drawerOptionLeftAccount: AppIconsPalette.heartKey,
    drawerOptionLeftArsenal: AppIconsPalette.cottonCandy,
    drawerOptionLeftFeedback: AppIconsPalette.heart,
    drawerOptionLeftLanguage: AppIconsPalette.language,
    drawerOptionLeftNet: AppIconsPalette.hotAirBaloon,
    drawerOptionLeftWallet: AppIconsPalette.gift,
    drawerOptionRight: AppIconsPalette.navigateArrow,
    hintTap: AppIconsPalette.tap,
    linkEnter: AppIconsPalette.goArrow,
    windowBodyAccountNameAva: AppIconsPalette.cat,
    windowBodyAccountNameEdit: AppIconsPalette.pencil,
    windowBodyActionChoice: AppIconsPalette.unwrapTriangle,
    windowBodyActionChoiceVariant: AppIconsPalette.checkMark,
    windowBodyActionLink: AppIconsPalette.goArrow,
    windowBodyActionTransition: AppIconsPalette.navigateArrow
  );

  static const AppIcons darkGreenEaster = AppIcons (
    buttonAppBarBack: AppIconsPalette.navigateArrow,
    buttonAppBarMenu: AppIconsPalette.menu,
    buttonAppBarTheme: AppIconsPalette.moon,
    buttonChangeLanguage: AppIconsPalette.language,
    buttonChooseConnectionLeft: AppIconsPalette.location,
    buttonChooseConnectionRight: AppIconsPalette.navigateArrow,
    buttonConnect: AppIconsPalette.oliveBranch,
    buttonGo: AppIconsPalette.navigateArrow,
    connectionFinland: AppIconsPalette.finlandFlag,
    connectionGermany: AppIconsPalette.germanyFlag,
    connectionNetherlands: AppIconsPalette.netherlandsFlag,
    drawerOptionLeftAccount: AppIconsPalette.egg,
    drawerOptionLeftArsenal: AppIconsPalette.butterfly,
    drawerOptionLeftFeedback: AppIconsPalette.bunny,
    drawerOptionLeftLanguage: AppIconsPalette.language,
    drawerOptionLeftNet: AppIconsPalette.flower,
    drawerOptionLeftWallet: AppIconsPalette.cupcake,
    drawerOptionRight: AppIconsPalette.navigateArrow,
    hintTap: AppIconsPalette.tap,
    linkEnter: AppIconsPalette.goArrow,
    windowBodyAccountNameAva: AppIconsPalette.cat,
    windowBodyAccountNameEdit: AppIconsPalette.pencil,
    windowBodyActionChoice: AppIconsPalette.unwrapTriangle,
    windowBodyActionChoiceVariant: AppIconsPalette.checkMark,
    windowBodyActionLink: AppIconsPalette.goArrow,
    windowBodyActionTransition: AppIconsPalette.navigateArrow
  );

  static const AppIcons lightGreenEaster = AppIcons (
    buttonAppBarBack: AppIconsPalette.navigateArrow,
    buttonAppBarMenu: AppIconsPalette.menu,
    buttonAppBarTheme: AppIconsPalette.sun,
    buttonChangeLanguage: AppIconsPalette.language,
    buttonChooseConnectionLeft: AppIconsPalette.location,
    buttonChooseConnectionRight: AppIconsPalette.navigateArrow,
    buttonConnect: AppIconsPalette.oliveBranch,
    buttonGo: AppIconsPalette.navigateArrow,
    connectionFinland: AppIconsPalette.finlandFlag,
    connectionGermany: AppIconsPalette.germanyFlag,
    connectionNetherlands: AppIconsPalette.netherlandsFlag,
    drawerOptionLeftAccount: AppIconsPalette.egg,
    drawerOptionLeftArsenal: AppIconsPalette.butterfly,
    drawerOptionLeftFeedback: AppIconsPalette.bunny,
    drawerOptionLeftLanguage: AppIconsPalette.language,
    drawerOptionLeftNet: AppIconsPalette.flower,
    drawerOptionLeftWallet: AppIconsPalette.cupcake,
    drawerOptionRight: AppIconsPalette.navigateArrow,
    hintTap: AppIconsPalette.tap,
    linkEnter: AppIconsPalette.goArrow,
    windowBodyAccountNameAva: AppIconsPalette.cat,
    windowBodyAccountNameEdit: AppIconsPalette.pencil,
    windowBodyActionChoice: AppIconsPalette.unwrapTriangle,
    windowBodyActionChoiceVariant: AppIconsPalette.checkMark,
    windowBodyActionLink: AppIconsPalette.goArrow,
    windowBodyActionTransition: AppIconsPalette.navigateArrow
  );


  @override AppIcons copyWith ({
    String? buttonAppBarBack,
    String? buttonAppBarMenu,
    String? buttonAppBarTheme,
    String? buttonChangeLanguage,
    String? buttonChooseConnectionLeft,
    String? buttonChooseConnectionRight,
    String? buttonConnect,
    String? buttonGo,
    String? connectionFinland,
    String? connectionGermany,
    String? connectionNetherlands,
    String? drawerOptionLeftAccount,
    String? drawerOptionLeftArsenal,
    String? drawerOptionLeftFeedback,
    String? drawerOptionLeftLanguage,
    String? drawerOptionLeftNet,
    String? drawerOptionLeftWallet,
    String? drawerOptionRight,
    String? hintTap,
    String? linkEnter,
    String? windowBodyAccountNameAva,
    String? windowBodyAccountNameEdit,
    String? windowBodyActionChoice,
    String? windowBodyActionChoiceVariant,
    String? windowBodyActionLink,
    String? windowBodyActionTransition
  }) {

    return (

      AppIcons (
        buttonAppBarBack: buttonAppBarBack ?? this.buttonAppBarBack,
        buttonAppBarMenu: buttonAppBarMenu ?? this.buttonAppBarMenu,
        buttonAppBarTheme: buttonAppBarTheme ?? this.buttonAppBarTheme,
        buttonChangeLanguage: buttonChangeLanguage ?? this.buttonChangeLanguage,
        buttonChooseConnectionLeft: buttonChooseConnectionLeft ?? this.buttonChooseConnectionLeft,
        buttonChooseConnectionRight: buttonChooseConnectionRight ?? this.buttonChooseConnectionRight,
        buttonConnect: buttonConnect ?? this.buttonConnect,
        buttonGo: buttonGo ?? this.buttonGo,
        connectionFinland: connectionFinland ?? this.connectionFinland,
        connectionGermany: connectionGermany ?? this.connectionGermany,
        connectionNetherlands: connectionNetherlands ?? this.connectionNetherlands,
        drawerOptionLeftAccount: drawerOptionLeftAccount ?? this.drawerOptionLeftAccount,
        drawerOptionLeftArsenal: drawerOptionLeftArsenal ?? this.drawerOptionLeftArsenal,
        drawerOptionLeftFeedback: drawerOptionLeftFeedback ?? this.drawerOptionLeftFeedback,
        drawerOptionLeftLanguage: drawerOptionLeftLanguage ?? this.drawerOptionLeftLanguage,
        drawerOptionLeftNet: drawerOptionLeftNet ?? this.drawerOptionLeftNet,
        drawerOptionLeftWallet: drawerOptionLeftWallet ?? this.drawerOptionLeftWallet,
        drawerOptionRight: drawerOptionRight ?? this.drawerOptionRight,
        hintTap: hintTap ?? this.hintTap,
        linkEnter: linkEnter ?? this.linkEnter,
        windowBodyAccountNameAva: windowBodyAccountNameAva ?? this.windowBodyAccountNameAva,
        windowBodyAccountNameEdit: windowBodyAccountNameEdit ?? this.windowBodyAccountNameEdit,
        windowBodyActionChoice: windowBodyActionChoice ?? this.windowBodyActionChoice,
        windowBodyActionChoiceVariant: windowBodyActionChoiceVariant ?? this.windowBodyActionChoiceVariant,
        windowBodyActionLink: windowBodyActionLink ?? this.windowBodyActionLink,
        windowBodyActionTransition: windowBodyActionTransition ?? this.windowBodyActionTransition
      )

    );

  }


  @override AppIcons lerp (ThemeExtension <AppIcons>? other, double t) {

    if (other is! AppIcons) {

      return this;

    }

    return t < 0.5 ? this : other;

  }

}



extension AppIconsExtension on BuildContext {

  AppIcons get icons => Theme.of(this).extension<AppIcons>()!;

}