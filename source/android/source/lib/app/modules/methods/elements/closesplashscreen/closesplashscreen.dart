// Methods module - Close splash screen

import 'package:flutter_native_splash/flutter_native_splash.dart';



class CloseSplashScreenElement {

  static Future <void> closeSplashScreen () async {

    FlutterNativeSplash.remove ();

  }

}