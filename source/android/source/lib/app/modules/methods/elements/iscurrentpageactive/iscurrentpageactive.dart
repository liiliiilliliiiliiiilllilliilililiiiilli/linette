// Methods module - Is current page active

import 'package:flutter/material.dart';



class IsCurrentPageActiveElement {

  static bool isCurrentPageActive (BuildContext context) {

    final bool isCurrentPageActive = ModalRoute.of(context)?.isCurrent ?? true;


    return isCurrentPageActive;

  }

}