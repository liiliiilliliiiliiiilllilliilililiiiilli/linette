// Methods module - Is current page active

import 'package:flutter/material.dart';
import 'package:linette/app/modules/methods/methods.dart';



extension IsCurrentPageActiveExtension on AppMethods {

  bool isCurrentPageActive (BuildContext context) {

    final bool isCurrentPageActive = ModalRoute.of(context)?.isCurrent ?? true;


    return isCurrentPageActive;

  }

}