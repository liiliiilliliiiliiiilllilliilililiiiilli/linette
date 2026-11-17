// Methods module - Hold splash screen

import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:linette/app/modules/methods/methods.dart';



extension HoldSplashScreenExtension on AppMethods {

  Future <void> holdSplashScreen () async {

    final WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized ();

    FlutterNativeSplash.preserve (widgetsBinding: widgetsBinding);

  }

}