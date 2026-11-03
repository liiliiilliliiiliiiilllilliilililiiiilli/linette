// Methods module

import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'components/openlink.dart';
import 'components/openwindow.dart';
import 'components/preloadicons.dart';



class AppMethods {

  const AppMethods ();


  Future <void> openLink ({required String link}) {

    return OpenLinkComponent.openLink (
      link: link
    );

  }

  Future <void> openWindow ({required BuildContext context, required WidgetRef ref, required Widget window, required VoidCallback callback}) {

    return OpenWindowComponent.openWindow (
      context: context,
      ref: ref,
      window: window,
      callback: callback
    );

  }

  Future <void> preloadIcons (List <String> icons) {

    return PreloadIconsComponent.preloadIcons (
      icons
    );

  }

}



extension AppMethodsExtension on BuildContext {

  AppMethods get methods => const AppMethods ();

}