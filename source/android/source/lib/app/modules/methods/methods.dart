// Methods module

import 'package:flutter/material.dart';

export 'extensions/changelanguage/changelanguage.dart';
export 'extensions/changetheme/changetheme.dart';
export 'extensions/closedrawer/closedrawer.dart';
export 'extensions/closesplashscreen/closesplashscreen.dart';
export 'extensions/freeze/freeze.dart';
export 'extensions/getscreenwidth/getscreenwidth.dart';
export 'extensions/holdsplashscreen/holdsplashscreen.dart';
export 'extensions/iscurrentpageactive/iscurrentpageactive.dart';
export 'extensions/isdraweropened/isdraweropened.dart';
export 'extensions/navigateback/navigateback.dart';
export 'extensions/navigateto/navigateto.dart';
export 'extensions/opendrawer/opendrawer.dart';
export 'extensions/openlink/openlink.dart';
export 'extensions/openwindow/openwindow.dart';
export 'extensions/preloadgraphics/preloadgraphics.dart';
export 'extensions/preloadicons/preloadicons.dart';
export 'extensions/transittopage/transittopage.dart';



class AppMethods {

  const AppMethods ();

}



extension AppMethodsExtension on BuildContext {

  AppMethods get methods => const AppMethods ();

}