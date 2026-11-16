// Methods module

import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:linette/app/providers/theme/theme.dart';
import 'elements/changelanguage/changelanguage.dart';
import 'elements/changetheme/changetheme.dart';
import 'elements/closedrawer/closedrawer.dart';
import 'elements/closesplashscreen/closesplashscreen.dart';
import 'elements/freeze/freeze.dart';
import 'elements/getscreenwidth/getscreenwidth.dart';
import 'elements/holdsplashscreen/holdsplashscreen.dart';
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

    ChangeLanguageElement.changeLanguage (ref, code);

  }

  void changeTheme (WidgetRef ref, AppThemeBaseOption theme) {

    ChangeThemeElement.changeTheme (ref, theme);

  }

  void closeDrawer (BuildContext context) {

    CloseDrawerElement.closeDrawer (context);

  }

  Future <void> closeSplashScreen () async {

    await CloseSplashScreenElement.closeSplashScreen ();

  }

  void freeze (WidgetRef ref) {

    FreezeElement.freeze (ref);

  }

  double getScreenWidth (BuildContext context) {

    return GetScreenWidthElement.getScreenWidth (context);

  }

  Future <void> holdSplashScreen () async {

    await HoldSplashScreenElement.holdSplashScreen ();

  }

  bool isCurrentPageActive (BuildContext context) {

    return IsCurrentPageActiveElement.isCurrentPageActive (context);

  }

  bool isDrawerOpened (BuildContext context) {

    return IsDrawerOpenedElement.isDrawerOpened (context);

  }

  void navigateBack (BuildContext context) {

    NavigateBackElement.navigateBack (context);

  }

  void navigateTo (BuildContext context, String destination) {

    NavigateToElement.navigateTo (context, destination);

  }

  void openDrawer (BuildContext context) {

    OpenDrawerElement.openDrawer (context);

  }

  Future <void> openLink (String link) async {

    await OpenLinkElement.openLink (link);

  }

  Future <void> openWindow (BuildContext context, WidgetRef ref, {required Widget window, void Function ()? callback}) async {

    await OpenWindowElement.openWindow (
      context,
      ref,
      window: window,
      callback: callback
    );

  }

  Future <void> preloadGraphics () async {

    await PreloadGraphicsElement.preloadGraphics ();

  }

  Future <void> preloadIcons (List <String> icons) async {

    await PreloadIconsElement.preloadIcons (icons);

  }

  Future <void> transitToPage (BuildContext context, WidgetRef ref, Widget page, {bool shouldCompleteWelcome = false}) async {

    await TransitToPageElement.transitToPage (
      context,
      ref,
      page,
      shouldCompleteWelcome: shouldCompleteWelcome
    );

  }

}



extension AppMethodsExtension on BuildContext {

  AppMethods get methods => const AppMethods ();

}