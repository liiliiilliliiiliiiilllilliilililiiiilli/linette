// Project's icons library

import 'package:flutter/material.dart';



class AppAssets extends ThemeExtension <AppAssets> {

  final String arrowNavigation;
  final String arrow;
  final String flagFinland;
  final String flagGermany;
  final String flagNetherlands;
  final String info;
  final String letterA;
  final String location;
  final String menu;
  final String moon;
  final String olive;
  final String sun;
  final String tap;
  final String world;

  const AppAssets ({
    required this.arrowNavigation,
    required this.arrow,
    required this.flagFinland,
    required this.flagGermany,
    required this.flagNetherlands,
    required this.info,
    required this.letterA,
    required this.location,
    required this.menu,
    required this.moon,
    required this.olive,
    required this.sun,
    required this.tap,
    required this.world
  });


  static const darkGreen = AppAssets (
    arrowNavigation: 'assets/images/dark_green/icons/arrow_navigation.svg',
    arrow: 'assets/images/dark_green/icons/arrow.svg',
    flagFinland: 'assets/images/dark_green/icons/flag_finland.svg',
    flagGermany: 'assets/images/dark_green/icons/flag_germany.svg',
    flagNetherlands: 'assets/images/dark_green/icons/flag_netherlands.svg',
    info: 'assets/images/dark_green/icons/info.svg',
    letterA: 'assets/images/dark_green/icons/letter_a.svg',
    location: 'assets/images/dark_green/icons/location.svg',
    menu: 'assets/images/dark_green/icons/menu.svg',
    moon: 'assets/images/dark_green/icons/moon.svg',
    olive: 'assets/images/dark_green/icons/olive.svg',
    sun: 'assets/images/dark_green/icons/sun.svg',
    tap: 'assets/images/dark_green/icons/tap.svg',
    world: 'assets/images/dark_green/icons/world.svg'
  );

  static const lightGreen = AppAssets (
    arrowNavigation: 'assets/images/light_green/icons/arrow_navigation.svg',
    arrow: 'assets/images/light_green/icons/arrow.svg',
    flagFinland: 'assets/images/light_green/icons/flag_finland.svg',
    flagGermany: 'assets/images/light_green/icons/flag_germany.svg',
    flagNetherlands: 'assets/images/light_green/icons/flag_netherlands.svg',
    info: 'assets/images/light_green/icons/info.svg',
    letterA: 'assets/images/light_green/icons/letter_a.svg',
    location: 'assets/images/light_green/icons/location.svg',
    menu: 'assets/images/light_green/icons/menu.svg',
    moon: 'assets/images/light_green/icons/moon.svg',
    olive: 'assets/images/light_green/icons/olive.svg',
    sun: 'assets/images/light_green/icons/sun.svg',
    tap: 'assets/images/light_green/icons/tap.svg',
    world: 'assets/images/light_green/icons/world.svg'
  );


  @override AppAssets copyWith ({
    String? arrowNavigation,
    String? arrow,
    String? flagFinland,
    String? flagGermany,
    String? flagNetherlands,
    String? info,
    String? letterA,
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
        arrowNavigation: arrowNavigation ?? this.arrowNavigation,
        arrow: arrow ?? this.arrow,
        flagFinland: flagFinland ?? this.flagFinland,
        flagGermany: flagGermany ?? this.flagGermany,
        flagNetherlands: flagNetherlands ?? this.flagNetherlands,
        info: info ?? this.info,
        letterA: letterA ?? this.letterA,
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

    if (other is! AppAssets)

      return (this);

    return (t < 0.5 ? this : other);

  }

}



extension AppAssetsExtension on BuildContext {

  AppAssets get icons {

    return (Theme.of(this).extension<AppAssets>()!);

  }

}