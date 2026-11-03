// Methods module

import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'components/openlink.dart';
import 'components/openwindow.dart';



class AppMethods {

  const AppMethods ();


  Future <void> openLink ({required String link}) => OpenLinkMethod.openLink (
    link: link
  );

  Future <void> openWindow ({required Widget window, required VoidCallback callback, required BuildContext context, required WidgetRef ref}) => OpenWindowMethod.openWindow (
    window: window,
    callback: callback,
    context: context,
    ref: ref
  );

}



extension AppMethodsExtension on BuildContext {

  AppMethods get methods => const AppMethods ();

}