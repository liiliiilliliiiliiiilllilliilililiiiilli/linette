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
    'assets/images/icons/common/arrow.svg',
    'assets/images/icons/common/bat.svg',
    'assets/images/icons/common/candy.svg',
    'assets/images/icons/common/flag_finland.svg',
    'assets/images/icons/common/flag_germany.svg',
    'assets/images/icons/common/flag_netherlands.svg',
    'assets/images/icons/common/ghost.svg',
    'assets/images/icons/common/go.svg',
    'assets/images/icons/common/hat.svg',
    'assets/images/icons/common/info.svg',
    'assets/images/icons/common/language.svg',
    'assets/images/icons/common/letter.svg',
    'assets/images/icons/common/location.svg',
    'assets/images/icons/common/magicwand.svg',
    'assets/images/icons/common/menu.svg',
    'assets/images/icons/common/moon.svg',
    'assets/images/icons/common/net.svg',
    'assets/images/icons/common/olive.svg',
    'assets/images/icons/common/pumpkin.svg',
    'assets/images/icons/common/snowflake.svg',
    'assets/images/icons/common/sock.svg',
    'assets/images/icons/common/stars.svg',
    'assets/images/icons/common/sun.svg',
    'assets/images/icons/common/tap.svg',
    'assets/images/icons/common/treetoy.svg',
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