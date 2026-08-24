// Theme libraries - Icons

import 'package:flutter/material.dart';



class AppAssets extends ThemeExtension <AppAssets> {

  final String arrowConnection;
  final String arrowDrawerOption;
  final String arrowNavigation;
  final String flagFinland;
  final String flagGermany;
  final String flagNetherlands;
  final String info;
  final String location;
  final String menu;
  final String moon;
  final String olive;
  final String sun;
  final String tap;
  final String world;

  const AppAssets ({
    required this.arrowConnection,
    required this.arrowDrawerOption,
    required this.arrowNavigation,
    required this.flagFinland,
    required this.flagGermany,
    required this.flagNetherlands,
    required this.info,
    required this.location,
    required this.menu,
    required this.moon,
    required this.olive,
    required this.sun,
    required this.tap,
    required this.world
  });


  static const darkGreen = AppAssets (
    arrowConnection: 'assets/images/icons/common/arrow_connection.svg',
    arrowDrawerOption: 'assets/images/icons/common/arrow_drawer_option.svg',
    arrowNavigation: 'assets/images/icons/common/arrow_navigation.svg',
    flagFinland: 'assets/images/icons/common/flag_finland.svg',
    flagGermany: 'assets/images/icons/common/flag_germany.svg',
    flagNetherlands: 'assets/images/icons/common/flag_netherlands.svg',
    info: 'assets/images/icons/common/info.svg',
    location: 'assets/images/icons/common/location.svg',
    menu: 'assets/images/icons/common/menu.svg',
    moon: 'assets/images/icons/common/moon.svg',
    olive: 'assets/images/icons/common/olive.svg',
    sun: 'assets/images/icons/common/sun.svg',
    tap: 'assets/images/icons/common/tap.svg',
    world: 'assets/images/icons/common/world.svg'
  );

  static const lightGreen = AppAssets (
    arrowConnection: 'assets/images/icons/common/arrow_connection.svg',
    arrowDrawerOption: 'assets/images/icons/common/arrow_drawer_option.svg',
    arrowNavigation: 'assets/images/icons/common/arrow_navigation.svg',
    flagFinland: 'assets/images/icons/common/flag_finland.svg',
    flagGermany: 'assets/images/icons/common/flag_germany.svg',
    flagNetherlands: 'assets/images/icons/common/flag_netherlands.svg',
    info: 'assets/images/icons/common/info.svg',
    location: 'assets/images/icons/common/location.svg',
    menu: 'assets/images/icons/common/menu.svg',
    moon: 'assets/images/icons/common/moon.svg',
    olive: 'assets/images/icons/common/olive.svg',
    sun: 'assets/images/icons/common/sun.svg',
    tap: 'assets/images/icons/common/tap.svg',
    world: 'assets/images/icons/common/world.svg'
  );


  @override AppAssets copyWith ({
    String? arrowConnection,
    String? arrowDrawerOption,
    String? arrowNavigation,
    String? flagFinland,
    String? flagGermany,
    String? flagNetherlands,
    String? info,
    String? location,
    String? menu,
    String? moon,
    String? olive,
    String? sun,
    String? tap,
    String? world
  }) {

    return (

      AppAssets (
        arrowConnection: arrowConnection ?? this.arrowConnection,
        arrowDrawerOption: arrowDrawerOption ?? this.arrowDrawerOption,
        arrowNavigation: arrowNavigation ?? this.arrowNavigation,
        flagFinland: flagFinland ?? this.flagFinland,
        flagGermany: flagGermany ?? this.flagGermany,
        flagNetherlands: flagNetherlands ?? this.flagNetherlands,
        info: info ?? this.info,
        location: location ?? this.location,
        menu: menu ?? this.menu,
        moon: moon ?? this.moon,
        olive: olive ?? this.olive,
        sun: sun ?? this.sun,
        tap: tap ?? this.tap,
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