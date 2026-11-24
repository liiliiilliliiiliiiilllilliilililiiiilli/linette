// Methods module - Preload framework

import 'package:flutter/material.dart';
import 'package:linette/app/modules/methods/methods.dart';



extension PreloadFrameworkExtension on AppMethods {

  Future <void> preloadFramework () async {

    WidgetsFlutterBinding.ensureInitialized ();

  }

}