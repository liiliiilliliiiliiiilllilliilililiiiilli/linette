// Methods module

import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:linette/app/providers/theme/theme.dart';
import 'elements/changelanguage/changelanguage.dart';
import 'elements/changetheme/changetheme.dart';
import 'elements/closedrawer/closedrawer.dart';
import 'elements/freeze/freeze.dart';
import 'elements/getscreenwidth/getscreenwidth.dart';
import 'elements/iscurrentpageactive/iscurrentpageactive.dart';
import 'elements/isdraweropened/isdraweropened.dart';
import 'elements/navigateback/navigateback.dart';
import 'elements/navigateto/navigateto.dart';
import 'elements/opendrawer/opendrawer.dart';
import 'elements/openlink/openlink.dart';
import 'elements/openwindow/openwindow.dart';
import 'elements/preloadgraphics/preloadgraphics.dart';
import 'elements/preloadicons/preloadicons.dart';
import 'elements/transittopage/transittopage.dart';



class AppMethods {

  const AppMethods ();


  void changeLanguage (WidgetRef ref, String code) {

    return ChangeLanguageElement.changeLanguage (ref, code);

  }

  void changeTheme (WidgetRef ref, AppThemeOption theme) {

    return ChangeThemeElement.changeTheme (ref, theme);

  }

  void closeDrawer (BuildContext context) {

    return CloseDrawerElement.closeDrawer (context);

  }

  void freeze (WidgetRef ref) {

    return FreezeElement.freeze (ref);

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

  Future <void> preloadGraphics () async {

    PreloadGraphicsElement.preloadGraphics ();

  }

  Future <void> preloadIcons (List <String> icons) async {

    return await PreloadIconsElement.preloadIcons (icons);

  }

  Future <void> transitToPage (BuildContext context, WidgetRef ref, Widget page) async {

    return await TransitToPageElement.transitToPage (context, ref, page);

  }

}



extension AppMethodsExtension on BuildContext {

  AppMethods get methods => const AppMethods ();

}