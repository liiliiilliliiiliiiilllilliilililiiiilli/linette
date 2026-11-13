// Methods module - Preload graphics

import 'package:flutter/material.dart';



class PreloadGraphicsElement {

  static Future <void> preloadGraphics () async {

    WidgetsFlutterBinding.ensureInitialized ();

  }

}