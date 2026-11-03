// Methods module - Preload icons element

import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:flutter_svg/flutter_svg.dart';



class PreloadIconsElement {

  static Future <void> preloadIcons (List <String> icons) async {

    // Пауза сплэш-экрана:

    WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized ();

    FlutterNativeSplash.preserve (widgetsBinding: widgetsBinding);


    // Предзагрузка иконок:

    await Future.wait (icons.map ((image) => vg.loadPicture (SvgAssetLoader (image), null)));


    // Закрытие сплэш-экрана:

    FlutterNativeSplash.remove ();

  }

}