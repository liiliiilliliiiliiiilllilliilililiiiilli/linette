// Methods module - Is drawer opened

import 'package:flutter/material.dart';



class IsDrawerOpenedElement {

  static bool isDrawerOpened (BuildContext context) {

    final bool isDrawerOpened = Scaffold.of(context).isDrawerOpen;


    return isDrawerOpened;

  }

}