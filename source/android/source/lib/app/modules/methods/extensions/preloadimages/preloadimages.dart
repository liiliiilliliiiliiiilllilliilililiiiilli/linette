// Methods module - Preload images

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:linette/app/modules/methods/methods.dart';



extension PreloadImagesExtension on AppMethods {

  Future <void> preloadImages (BuildContext context, List <String> icons) async {

    await Future.wait (icons.map ((path) async {

      if (path.toLowerCase().endsWith('.svg')) {

        await vg.loadPicture (SvgAssetLoader (path), null);

      } else {

        await precacheImage (AssetImage (path), context);

      }

    }));

  }

}