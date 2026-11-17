// Methods module - Get screen width

import 'package:flutter/material.dart';
import 'package:linette/app/modules/methods/methods.dart';



extension GetScreenWidthExtension on AppMethods {

  double getScreenWidth (BuildContext context) {

    final double width = MediaQuery.of(context).size.width;


    return width;

  }

}