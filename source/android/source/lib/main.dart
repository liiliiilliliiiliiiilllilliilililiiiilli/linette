// Development entry point

import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'app/app.dart';



void main () async {

  // Предзагурзка всех картинок приложения на фоне заставки:

  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized ();

  FlutterNativeSplash.preserve (
    widgetsBinding: widgetsBinding
  );


  final appImages = [
    'assets/images/branding/dark/branding.png',
    'assets/images/branding/light/branding.png',
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
    'assets/images/icons/common/wallet.svg',
    'assets/images/logo/launcher/dark/logo.png',
    'assets/images/logo/launcher/light/logo.png',
    'assets/images/logo/splash/dark/logo.png',
    'assets/images/logo/splash/light/logo.png'
  ];


  try {

    await Future.wait (

      appImages.map ((image) => vg.loadPicture (SvgAssetLoader (image), null))

    );

  }

  catch (error) {

    debugPrint ('Ошибка предзагрузки картинок приложения: $error');

  }


  FlutterNativeSplash.remove ();


  // Основная логика:

	runApp (

    const ProviderScope (

      child: App ()

    )

  );

}