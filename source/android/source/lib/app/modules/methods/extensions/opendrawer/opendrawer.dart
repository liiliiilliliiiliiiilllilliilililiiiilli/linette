// Methods module - Open drawer

import 'package:flutter/material.dart';
import 'package:linette/app/modules/methods/methods.dart';



extension OpenDrawerExtension on AppMethods {

  void openDrawer (BuildContext context) {

    Scaffold.of(context).openDrawer();

  }

}