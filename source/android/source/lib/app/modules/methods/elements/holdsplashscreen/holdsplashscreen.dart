// Methods module - Hold splash screen

import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';



class HoldSplashScreenElement {

  static Future <void> holdSplashScreen () async {

    final WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized ();

    FlutterNativeSplash.preserve (widgetsBinding: widgetsBinding);

  }

}