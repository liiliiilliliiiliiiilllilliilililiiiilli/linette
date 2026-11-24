// Development entry point

import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:linette/app/modules/methods/methods.dart';
import 'package:linette/app/app.dart';



void main () async {

  const AppMethods appMethods = AppMethods ();


  // Задержка сплэш-экрана на время прогрузки всех ресурсов приложения:

  await appMethods.holdSplashScreen ();


  // Предзагрузка фреймворка:

  await appMethods.preloadFramework ();


  // Запуск основной логики:

	runApp (

    const ProviderScope (
      child: App ()
    )

  );

}