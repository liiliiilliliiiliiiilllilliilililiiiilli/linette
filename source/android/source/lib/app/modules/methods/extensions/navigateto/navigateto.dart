// Methods module - Navigate to

import 'package:flutter/material.dart';
import 'package:linette/app/modules/methods/methods.dart';



extension NavigateToExtension on AppMethods {

  void navigateTo (BuildContext context, String destination) {

    Navigator.pushNamed (context, destination);

  }

}