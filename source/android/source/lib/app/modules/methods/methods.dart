// Methods module

import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'elements/closedrawer/closedrawer.dart';
import 'elements/getscreenwidth/getscreenwidth.dart';
import 'elements/iscurrentpageactive/iscurrentpageactive.dart';
import 'elements/isdraweropened/isdraweropened.dart';
import 'elements/navigateback/navigateback.dart';
import 'elements/navigateto/navigateto.dart';
import 'elements/opendrawer/opendrawer.dart';
import 'elements/openlink/openlink.dart';
import 'elements/openwindow/openwindow.dart';
import 'elements/preloadicons/preloadicons.dart';
import 'elements/transittopage/transittopage.dart';



class AppMethods {

  const AppMethods ();


  void closeDrawer (BuildContext context) {

    return CloseDrawerElement.closeDrawer (context);

  }

  double getScreenWidth (BuildContext context) {

    return GetScreenWidthElement.getScreenWidth (context);

  }

  bool isCurrentPageActive (BuildContext context) {

    return IsCurrentPageActiveElement.isCurrentPageActive (context);

  }

  bool isDrawerOpened (BuildContext context) {

    return IsDrawerOpenedElement.isDrawerOpened (context);

  }

  void navigateBack (BuildContext context) {

    return NavigateBackElement.navigateBack (context);

  }

  void navigateTo (BuildContext context, String destination) {

    return NavigateToElement.navigateTo (context, destination);

  }

  void openDrawer (BuildContext context) {

    return OpenDrawerElement.openDrawer (context);

  }

  Future <void> openLink (String link) async {

    return await OpenLinkElement.openLink (link);

  }

  Future <void> openWindow (BuildContext context, WidgetRef ref, {required Widget window, void Function ()? callback}) async {

    return await OpenWindowElement.openWindow (
      context,
      ref,
      window: window,
      callback: callback
    );

  }

  Future <void> preloadIcons (List <String> icons) async {

    return await PreloadIconsElement.preloadIcons (icons);

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