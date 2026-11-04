// Methods module

import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'elements/openlink/openlink.dart';
import 'elements/openwindow/openwindow.dart';
import 'elements/preloadicons/preloadicons.dart';



class AppMethods {

  const AppMethods ();


  Future <void> openLink (String link) {

    return OpenLinkElement.openLink (link);

  }

  Future <void> openWindow ({required BuildContext context, required WidgetRef ref, required Widget window, void Function ()? callback}) async {

    return await OpenWindowElement.openWindow (
      context: context,
      ref: ref,
      window: window,
      callback: callback
    );

  }

  Future <void> preloadIcons (List <String> icons) {

    return PreloadIconsElement.preloadIcons (icons);

  }

}



extension AppMethodsExtension on BuildContext {

  AppMethods get methods => const AppMethods ();

}