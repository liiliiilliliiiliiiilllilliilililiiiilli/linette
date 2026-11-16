// Development entry point

import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:linette/app/modules/methods/methods.dart';
import 'package:linette/app/app.dart';



void main () async {

  const AppMethods methods = AppMethods ();


  // Задержка сплэш-экрана на время прогрузки всех ресурсов приложения:

  await methods.holdSplashScreen ();


  // Предзагрузка графики и иконок:

  await methods.preloadGraphics ();

  await methods.preloadIcons ([
    'assets/images/icons/common/bat.svg',
    'assets/images/icons/common/bunny.svg',
    'assets/images/icons/common/butterfly.svg',
    'assets/images/icons/common/candy.svg',
    'assets/images/icons/common/christmas_hat.svg',
    'assets/images/icons/common/christmas_tree_toy.svg',
    'assets/images/icons/common/cotton_candy.svg',
    'assets/images/icons/common/cupcake.svg',
    'assets/images/icons/common/egg.svg',
    'assets/images/icons/common/finland_flag.svg',
    'assets/images/icons/common/flower.svg',
    'assets/images/icons/common/germany_flag.svg',
    'assets/images/icons/common/ghost.svg',
    'assets/images/icons/common/gift.svg',
    'assets/images/icons/common/go_arrow.svg',
    'assets/images/icons/common/heart.svg',
    'assets/images/icons/common/heart_key.svg',
    'assets/images/icons/common/hot_air_baloon.svg',
    'assets/images/icons/common/info.svg',
    'assets/images/icons/common/language.svg',
    'assets/images/icons/common/letter.svg',
    'assets/images/icons/common/location.svg',
    'assets/images/icons/common/magic_wand.svg',
    'assets/images/icons/common/menu.svg',
    'assets/images/icons/common/moon.svg',
    'assets/images/icons/common/navigate_arrow.svg',
    'assets/images/icons/common/net.svg',
    'assets/images/icons/common/netherlands_flag.svg',
    'assets/images/icons/common/olive_branch.svg',
    'assets/images/icons/common/pumpkin.svg',
    'assets/images/icons/common/snow_globe.svg',
    'assets/images/icons/common/snowflake.svg',
    'assets/images/icons/common/stars.svg',
    'assets/images/icons/common/sun.svg',
    'assets/images/icons/common/tap.svg',
    'assets/images/icons/common/user.svg',
    'assets/images/icons/common/wallet.svg'
  ]);


  // Запуск основной логики:

	runApp (

    const ProviderScope (
      child: App ()
    )

  );

}