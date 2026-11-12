// Icons module

import 'package:flutter/material.dart';



class AppIconsPalette {

  const AppIconsPalette._ ();


  static const String arrow = 'assets/images/icons/common/arrow.svg';
  static const String flagFinland = 'assets/images/icons/common/flag_finland.svg';
  static const String flagGermany = 'assets/images/icons/common/flag_germany.svg';
  static const String flagNetherlands = 'assets/images/icons/common/flag_netherlands.svg';
  static const String info = 'assets/images/icons/common/info.svg';
  static const String language = 'assets/images/icons/common/language.svg';
  static const String location = 'assets/images/icons/common/location.svg';
  static const String magicwand = 'assets/images/icons/common/magicwand.svg';
  static const String menu = 'assets/images/icons/common/menu.svg';
  static const String moon = 'assets/images/icons/common/moon.svg';
  static const String net = 'assets/images/icons/common/net.svg';
  static const String olive = 'assets/images/icons/common/olive.svg';
  static const String sun = 'assets/images/icons/common/sun.svg';
  static const String tap = 'assets/images/icons/common/tap.svg';
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
    required this.hintTap
  });


  static const AppIcons darkGreen = AppIcons (
    buttonAppBarBack: AppIconsPalette.arrow,
    buttonAppBarMenu: AppIconsPalette.menu,
    buttonAppBarTheme: AppIconsPalette.moon,
    buttonChangeLanguage: AppIconsPalette.language,
    buttonChooseConnectionLeft: AppIconsPalette.location,
    buttonChooseConnectionRight: AppIconsPalette.arrow,
    buttonConnect: AppIconsPalette.olive,
    buttonGo: AppIconsPalette.arrow,
    connectionFinland: AppIconsPalette.flagFinland,
    connectionGermany: AppIconsPalette.flagGermany,
    connectionNetherlands: AppIconsPalette.flagNetherlands,
    drawerOptionLeftAccount: AppIconsPalette.user,
    drawerOptionLeftArsenal: AppIconsPalette.magicwand,
    drawerOptionLeftFeedback: AppIconsPalette.info,
    drawerOptionLeftLanguage: AppIconsPalette.language,
    drawerOptionLeftNet: AppIconsPalette.net,
    drawerOptionLeftWallet: AppIconsPalette.wallet,
    drawerOptionRight: AppIconsPalette.arrow,
    hintTap: AppIconsPalette.tap
  );

  static const AppIcons lightGreen = AppIcons (
    buttonAppBarBack: AppIconsPalette.arrow,
    buttonAppBarMenu: AppIconsPalette.menu,
    buttonAppBarTheme: AppIconsPalette.sun,
    buttonChangeLanguage: AppIconsPalette.language,
    buttonChooseConnectionLeft: AppIconsPalette.location,
    buttonChooseConnectionRight: AppIconsPalette.arrow,
    buttonConnect: AppIconsPalette.olive,
    buttonGo: AppIconsPalette.arrow,
    connectionFinland: AppIconsPalette.flagFinland,
    connectionGermany: AppIconsPalette.flagGermany,
    connectionNetherlands: AppIconsPalette.flagNetherlands,
    drawerOptionLeftAccount: AppIconsPalette.user,
    drawerOptionLeftArsenal: AppIconsPalette.magicwand,
    drawerOptionLeftFeedback: AppIconsPalette.info,
    drawerOptionLeftLanguage: AppIconsPalette.language,
    drawerOptionLeftNet: AppIconsPalette.net,
    drawerOptionLeftWallet: AppIconsPalette.wallet,
    drawerOptionRight: AppIconsPalette.arrow,
    hintTap: AppIconsPalette.tap
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
    String? hintTap
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
        hintTap: hintTap ?? this.hintTap
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