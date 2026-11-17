// Methods module - Preload graphics

import 'package:flutter/material.dart';
import 'package:linette/app/modules/methods/methods.dart';



extension PreloadGraphicsExtension on AppMethods {

  Future <void> preloadGraphics () async {

    WidgetsFlutterBinding.ensureInitialized ();

  }

}