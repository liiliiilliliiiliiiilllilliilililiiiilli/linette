// Methods module

import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'elements/openlink/openlink.dart';
import 'elements/openwindow/openwindow.dart';
import 'elements/preloadicons/preloadicons.dart';
import 'elements/transittopage/transittopage.dart';



class AppMethods {

  const AppMethods ();


  Future <void> openLink (String link) {

    return OpenLinkElement.openLink (link);

  }

  Future <void> openWindow (BuildContext context, WidgetRef ref, {required Widget window, void Function ()? callback}) async {

    return await OpenWindowElement.openWindow (
      context,
      ref,
      window: window,
      callback: callback
    );

  }

  Future <void> preloadIcons (List <String> icons) {

    return PreloadIconsElement.preloadIcons (icons);

  }

  Future <void> transitToPage (BuildContext context, WidgetRef ref, {required Widget page}) async {

    return await TransitToPageElement.transitToPage (
      context,
      ref,
      page: page
    );

  }

}



extension AppMethodsExtension on BuildContext {

  AppMethods get methods => const AppMethods ();

}