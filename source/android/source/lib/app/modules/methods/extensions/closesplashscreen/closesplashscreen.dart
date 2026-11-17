// Methods module - Close splash screen

import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:linette/app/modules/methods/methods.dart';



extension CloseSplashScreenExtension on AppMethods {

  Future <void> closeSplashScreen () async {

    FlutterNativeSplash.remove ();

  }

}