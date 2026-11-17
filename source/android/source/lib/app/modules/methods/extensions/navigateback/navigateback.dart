// Methods module - Navigate back

import 'package:flutter/material.dart';
import 'package:linette/app/modules/methods/methods.dart';



extension NavigateBackExtension on AppMethods {

  void navigateBack (BuildContext context) {

    Navigator.pop (context);

  }

}