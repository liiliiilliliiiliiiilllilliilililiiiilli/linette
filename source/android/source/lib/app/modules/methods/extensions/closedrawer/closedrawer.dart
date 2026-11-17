// Methods module - Close drawer

import 'package:flutter/material.dart';
import 'package:linette/app/modules/methods/methods.dart';



extension CloseDrawerExtension on AppMethods {

  void closeDrawer (BuildContext context) {

    Scaffold.of(context).closeDrawer();

  }

}