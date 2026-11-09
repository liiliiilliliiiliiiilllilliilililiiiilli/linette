// Methods module - Navigate to

import 'package:flutter/material.dart';



class NavigateToElement {

  static void navigateTo (BuildContext context, String destination) {

    Navigator.pushNamed (context, destination);

  }

}