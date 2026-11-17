// Methods module - Preload icons

import 'package:flutter_svg/flutter_svg.dart';
import 'package:linette/app/modules/methods/methods.dart';



extension PreloadiconsExtension on AppMethods {

  Future <void> preloadIcons (List <String> icons) async {

    await Future.wait (icons.map ((image) => vg.loadPicture (SvgAssetLoader (image), null)));

  }

}