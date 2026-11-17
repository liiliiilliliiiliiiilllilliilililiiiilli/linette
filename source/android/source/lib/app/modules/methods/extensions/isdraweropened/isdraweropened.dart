// Methods module - Is drawer opened

import 'package:flutter/material.dart';
import 'package:linette/app/modules/methods/methods.dart';



extension IsDrawerOpenedExtension on AppMethods {

  bool isDrawerOpened (BuildContext context) {

    final bool isDrawerOpened = Scaffold.of(context).isDrawerOpen;


    return isDrawerOpened;

  }

}