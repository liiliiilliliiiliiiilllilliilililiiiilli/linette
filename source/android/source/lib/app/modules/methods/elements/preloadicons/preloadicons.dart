// Methods module - Preload icons

import 'package:flutter_svg/flutter_svg.dart';



class PreloadIconsElement {

  static Future <void> preloadIcons (List <String> icons) async {

    await Future.wait (icons.map ((image) => vg.loadPicture (SvgAssetLoader (image), null)));

  }

}