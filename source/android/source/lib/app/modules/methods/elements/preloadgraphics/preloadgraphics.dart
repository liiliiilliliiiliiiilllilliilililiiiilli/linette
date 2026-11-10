// Methods module - Preload graphics

import 'package:flutter/material.dart';



class PreloadGraphicsElement {

  static void preloadGraphics () {

    WidgetsFlutterBinding.ensureInitialized ();

  }

}