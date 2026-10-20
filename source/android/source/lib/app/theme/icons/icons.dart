// Theme libraries - Icons

import 'package:flutter/material.dart';



class AppAssets extends ThemeExtension <AppAssets> {

  final String accout;
  final String arrowConnection;
  final String arrowDrawerOption;
  final String arrowNavigation;
  final String arsenal;
  final String flagFinland;
  final String flagGermany;
  final String flagNetherlands;
  final String info;
  final String language;
  final String languageDrawerOption;
  final String location;
  final String menu;
  final String moon;
  final String netParameters;
  final String olive;
  final String sun;
  final String tap;
  final String wallet;
  final String world;


  const AppAssets ({
    required this.accout,
    required this.arrowConnection,
    required this.arrowDrawerOption,
    required this.arrowNavigation,
    required this.arsenal,
    required this.flagFinland,
    required this.flagGermany,
    required this.flagNetherlands,
    required this.info,
    required this.language,
    required this.languageDrawerOption,
    required this.location,
    required this.menu,
    required this.moon,
    required this.netParameters,
    required this.olive,
    required this.sun,
    required this.tap,
    required this.wallet,
    required this.world
  });


  static const AppAssets darkGreen = AppAssets (
    accout: 'assets/images/icons/common/user.svg',
    arrowConnection: 'assets/images/icons/common/arrow_connection.svg',
    arrowDrawerOption: 'assets/images/icons/common/arrow_drawer_option.svg',
    arrowNavigation: 'assets/images/icons/common/arrow_navigation.svg',
    arsenal: 'assets/images/icons/common/magicwand.svg',
    flagFinland: 'assets/images/icons/common/flag_finland.svg',
    flagGermany: 'assets/images/icons/common/flag_germany.svg',
    flagNetherlands: 'assets/images/icons/common/flag_netherlands.svg',
    info: 'assets/images/icons/common/info.svg',
    language: 'assets/images/icons/common/language.svg',
    languageDrawerOption: 'assets/images/icons/common/language_drawer_option.svg',
    location: 'assets/images/icons/common/location.svg',
    menu: 'assets/images/icons/common/menu.svg',
    moon: 'assets/images/icons/common/moon.svg',
    netParameters: 'assets/images/icons/common/net.svg',
    olive: 'assets/images/icons/common/olive.svg',
    sun: 'assets/images/icons/common/sun.svg',
    tap: 'assets/images/icons/common/tap.svg',
    wallet: 'assets/images/icons/common/wallet.svg',
    world: 'assets/images/icons/common/world.svg'
  );

  static const AppAssets lightGreen = AppAssets (
    accout: 'assets/images/icons/common/user.svg',
    arrowConnection: 'assets/images/icons/common/arrow_connection.svg',
    arrowDrawerOption: 'assets/images/icons/common/arrow_drawer_option.svg',
    arrowNavigation: 'assets/images/icons/common/arrow_navigation.svg',
    arsenal: 'assets/images/icons/common/magicwand.svg',
    flagFinland: 'assets/images/icons/common/flag_finland.svg',
    flagGermany: 'assets/images/icons/common/flag_germany.svg',
    flagNetherlands: 'assets/images/icons/common/flag_netherlands.svg',
    info: 'assets/images/icons/common/info.svg',
    language: 'assets/images/icons/common/language.svg',
    languageDrawerOption: 'assets/images/icons/common/language_drawer_option.svg',
    location: 'assets/images/icons/common/location.svg',
    menu: 'assets/images/icons/common/menu.svg',
    moon: 'assets/images/icons/common/moon.svg',
    netParameters: 'assets/images/icons/common/net.svg',
    olive: 'assets/images/icons/common/olive.svg',
    sun: 'assets/images/icons/common/sun.svg',
    tap: 'assets/images/icons/common/tap.svg',
    wallet: 'assets/images/icons/common/wallet.svg',
    world: 'assets/images/icons/common/world.svg'
  );


  @override AppAssets copyWith ({
    String? accout,
    String? arrowConnection,
    String? arrowDrawerOption,
    String? arrowNavigation,
    String? arsenal,
    String? flagFinland,
    String? flagGermany,
    String? flagNetherlands,
    String? info,
    String? language,
    String? languageDrawerOption,
    String? location,
    String? menu,
    String? moon,
    String? netParameters,
    String? olive,
    String? sun,
    String? tap,
    String? wallet,
    String? world
  }) {

    return (

      AppAssets (
        accout: accout ?? this.accout,
        arrowConnection: arrowConnection ?? this.arrowConnection,
        arrowDrawerOption: arrowDrawerOption ?? this.arrowDrawerOption,
        arrowNavigation: arrowNavigation ?? this.arrowNavigation,
        arsenal: arsenal ?? this.arsenal,
        flagFinland: flagFinland ?? this.flagFinland,
        flagGermany: flagGermany ?? this.flagGermany,
        flagNetherlands: flagNetherlands ?? this.flagNetherlands,
        info: info ?? this.info,
        language: language ?? this.language,
        languageDrawerOption: languageDrawerOption ?? this.languageDrawerOption,
        location: location ?? this.location,
        menu: menu ?? this.menu,
        moon: moon ?? this.moon,
        netParameters: netParameters ?? this.netParameters,
        olive: olive ?? this.olive,
        sun: sun ?? this.sun,
        tap: tap ?? this.tap,
        wallet: wallet ?? this.wallet,
        world: world ?? this.world
      )

    );

  }


  @override AppAssets lerp (ThemeExtension <AppAssets>? other, double t) {

    if (other is! AppAssets) {

      return (this);

    }

    return (t < 0.5 ? this : other);

  }

}



extension AppAssetsExtension on BuildContext {

  AppAssets get icons {

    return (Theme.of(this).extension<AppAssets>()!);

  }

}