// Methods module - Release splash screen

import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:linette/app/modules/methods/methods.dart';



extension ReleaseSplashScreenExtension on AppMethods {

  Future <void> releaseSplashScreen () async {

    FlutterNativeSplash.remove ();

  }

}