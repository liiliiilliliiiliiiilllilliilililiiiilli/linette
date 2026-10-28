// Icons module

import 'package:flutter/material.dart';



class AppAssets extends ThemeExtension <AppAssets> {

  final String arrow;
  final String flagFinland;
  final String flagGermany;
  final String flagNetherlands;
  final String info;
  final String language;
  final String location;
  final String magicwand;
  final String menu;
  final String moon;
  final String net;
  final String olive;
  final String sun;
  final String tap;
  final String user;
  final String wallet;


  const AppAssets ({
    required this.arrow,
    required this.flagFinland,
    required this.flagGermany,
    required this.flagNetherlands,
    required this.info,
    required this.language,
    required this.location,
    required this.magicwand,
    required this.menu,
    required this.moon,
    required this.net,
    required this.olive,
    required this.sun,
    required this.tap,
    required this.user,
    required this.wallet
  });


  static const AppAssets darkGreen = AppAssets (
    arrow: 'assets/images/icons/common/arrow.svg',
    flagFinland: 'assets/images/icons/common/flag_finland.svg',
    flagGermany: 'assets/images/icons/common/flag_germany.svg',
    flagNetherlands: 'assets/images/icons/common/flag_netherlands.svg',
    info: 'assets/images/icons/common/info.svg',
    language: 'assets/images/icons/common/language.svg',
    location: 'assets/images/icons/common/location.svg',
    magicwand: 'assets/images/icons/common/magicwand.svg',
    menu: 'assets/images/icons/common/menu.svg',
    moon: 'assets/images/icons/common/moon.svg',
    net: 'assets/images/icons/common/net.svg',
    olive: 'assets/images/icons/common/olive.svg',
    sun: 'assets/images/icons/common/sun.svg',
    tap: 'assets/images/icons/common/tap.svg',
    user: 'assets/images/icons/common/user.svg',
    wallet: 'assets/images/icons/common/wallet.svg'
  );

  static const AppAssets lightGreen = AppAssets (
    arrow: 'assets/images/icons/common/arrow.svg',
    flagFinland: 'assets/images/icons/common/flag_finland.svg',
    flagGermany: 'assets/images/icons/common/flag_germany.svg',
    flagNetherlands: 'assets/images/icons/common/flag_netherlands.svg',
    info: 'assets/images/icons/common/info.svg',
    language: 'assets/images/icons/common/language.svg',
    location: 'assets/images/icons/common/location.svg',
    magicwand: 'assets/images/icons/common/magicwand.svg',
    menu: 'assets/images/icons/common/menu.svg',
    moon: 'assets/images/icons/common/moon.svg',
    net: 'assets/images/icons/common/net.svg',
    olive: 'assets/images/icons/common/olive.svg',
    sun: 'assets/images/icons/common/sun.svg',
    tap: 'assets/images/icons/common/tap.svg',
    user: 'assets/images/icons/common/user.svg',
    wallet: 'assets/images/icons/common/wallet.svg'
  );


  @override AppAssets copyWith ({
    String? arrow,
    String? flagFinland,
    String? flagGermany,
    String? flagNetherlands,
    String? info,
    String? language,
    String? location,
    String? magicwand,
    String? menu,
    String? moon,
    String? net,
    String? olive,
    String? sun,
    String? tap,
    String? user,
    String? wallet
  }) {

    return (

      AppAssets (
        arrow: arrow ?? this.arrow,
        flagFinland: flagFinland ?? this.flagFinland,
        flagGermany: flagGermany ?? this.flagGermany,
        flagNetherlands: flagNetherlands ?? this.flagNetherlands,
        info: info ?? this.info,
        language: language ?? this.language,
        location: location ?? this.location,
        magicwand: magicwand ?? this.magicwand,
        menu: menu ?? this.menu,
        moon: moon ?? this.moon,
        net: net ?? this.net,
        olive: olive ?? this.olive,
        sun: sun ?? this.sun,
        tap: tap ?? this.tap,
        user: user ?? this.user,
        wallet: wallet ?? this.wallet
      )

    );

  }


  @override AppAssets lerp (ThemeExtension <AppAssets>? other, double t) {

    if (other is! AppAssets) {

      return this;

    }

    return t < 0.5 ? this : other;

  }

}



extension AppAssetsExtension on BuildContext {

  AppAssets get icons {

    return Theme.of(this).extension<AppAssets>()!;

  }

}