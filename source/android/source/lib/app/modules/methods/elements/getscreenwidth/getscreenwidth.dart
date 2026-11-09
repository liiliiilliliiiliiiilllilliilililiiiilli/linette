// Methods module - Get screen width

import 'package:flutter/material.dart';



class GetScreenWidthElement {

  static double getScreenWidth (BuildContext context) {

    final double width = MediaQuery.of(context).size.width;


    return width;

  }

}