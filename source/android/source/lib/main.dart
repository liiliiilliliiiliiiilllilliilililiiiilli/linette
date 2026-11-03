// Development entry point

import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:linette/app/modules/methods/methods.dart';
import 'package:linette/app/app.dart';



void main () async {

  // Предзагрузка графики:

  WidgetsFlutterBinding.ensureInitialized ();


  // Предзагрузка иконок:

  await const AppMethods().preloadIcons([
    'assets/images/icons/common/arrow.svg',
    'assets/images/icons/common/flag_finland.svg',
    'assets/images/icons/common/flag_germany.svg',
    'assets/images/icons/common/flag_netherlands.svg',
    'assets/images/icons/common/info.svg',
    'assets/images/icons/common/language.svg',
    'assets/images/icons/common/location.svg',
    'assets/images/icons/common/magicwand.svg',
    'assets/images/icons/common/menu.svg',
    'assets/images/icons/common/moon.svg',
    'assets/images/icons/common/net.svg',
    'assets/images/icons/common/olive.svg',
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