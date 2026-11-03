// Methods module - Preload icons component

import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:flutter_svg/flutter_svg.dart';



class PreloadIconsComponent {

  static Future <void> preloadIcons (List <String> icons) async {

    WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized ();

    FlutterNativeSplash.preserve (
      widgetsBinding: widgetsBinding
    );


    try {

      await Future.wait (

        icons.map ((image) => vg.loadPicture (SvgAssetLoader (image), null))

      );

    }

    catch (error) {

      debugPrint ('Ошибка предзагрузки иконок приложения: $error');

    }


    FlutterNativeSplash.remove ();

  }

}