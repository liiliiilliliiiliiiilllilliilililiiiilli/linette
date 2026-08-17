// Project's icons library

import 'package:flutter/material.dart';



class AppAssets extends ThemeExtension <AppAssets> {

  final String arrow_navigation;
  final String arrow;
  final String flag_finland;
  final String flag_germany;
  final String flag_netherlands;
  final String info;
  final String letter_a;
  final String location;
  final String menu;
  final String moon;
  final String olive;
  final String sun;
  final String tap;
  final String world;

  const AppAssets ({
    required this.arrow_navigation,
    required this.arrow,
    required this.flag_finland,
    required this.flag_germany,
    required this.flag_netherlands,
    required this.info,
    required this.letter_a,
    required this.location,
    required this.menu,
    required this.moon,
    required this.olive,
    required this.sun,
    required this.tap,
    required this.world
  });


  static const darkGreen = AppAssets (
    arrow_navigation: 'assets/images/dark_green/icons/arrow_navigation.svg',
    arrow: 'assets/images/dark_green/icons/arrow.svg',
    flag_finland: 'assets/images/dark_green/icons/flag_finland.svg',
    flag_germany: 'assets/images/dark_green/icons/flag_germany.svg',
    flag_netherlands: 'assets/images/dark_green/icons/flag_netherlands.svg',
    info: 'assets/images/dark_green/icons/info.svg',
    letter_a: 'assets/images/dark_green/icons/letter_a.svg',
    location: 'assets/images/dark_green/icons/location.svg',
    menu: 'assets/images/dark_green/icons/menu.svg',
    moon: 'assets/images/dark_green/icons/moon.svg',
    olive: 'assets/images/dark_green/icons/olive.svg',
    sun: 'assets/images/dark_green/icons/sun.svg',
    tap: 'assets/images/dark_green/icons/tap.svg',
    world: 'assets/images/dark_green/icons/world.svg'
  );

  static const lightGreen = AppAssets (
    arrow_navigation: 'assets/images/light_green/icons/arrow_navigation.svg',
    arrow: 'assets/images/light_green/icons/arrow.svg',
    flag_finland: 'assets/images/light_green/icons/flag_finland.svg',
    flag_germany: 'assets/images/light_green/icons/flag_germany.svg',
    flag_netherlands: 'assets/images/light_green/icons/flag_netherlands.svg',
    info: 'assets/images/light_green/icons/info.svg',
    letter_a: 'assets/images/light_green/icons/letter_a.svg',
    location: 'assets/images/light_green/icons/location.svg',
    menu: 'assets/images/light_green/icons/menu.svg',
    moon: 'assets/images/light_green/icons/moon.svg',
    olive: 'assets/images/light_green/icons/olive.svg',
    sun: 'assets/images/light_green/icons/sun.svg',
    tap: 'assets/images/light_green/icons/tap.svg',
    world: 'assets/images/light_green/icons/world.svg'
  );


  @override AppAssets copyWith ({
    String? arrow_navigation,
    String? arrow,
    String? flag_finland,
    String? flag_germany,
    String? flag_netherlands,
    String? info,
    String? letter_a,
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
        arrow_navigation: arrow_navigation ?? this.arrow_navigation,
        arrow: arrow ?? this.arrow,
        flag_finland: flag_finland ?? this.flag_finland,
        flag_germany: flag_germany ?? this.flag_germany,
        flag_netherlands: flag_netherlands ?? this.flag_netherlands,
        info: info ?? this.info,
        letter_a: letter_a ?? this.letter_a,
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

    return (other);

  }

}



extension AppAssetsExtension on BuildContext {

  AppAssets get icons => Theme.of(this).extension<AppAssets>()!;

}