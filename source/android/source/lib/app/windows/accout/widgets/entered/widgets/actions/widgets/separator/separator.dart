// Accout window - Entered - Actions - Separator

import 'package:flutter/material.dart';
import 'package:linette/app/modules/colors/colors.dart';



class Separator extends StatelessWidget {

  const Separator ({
    super.key
  });


  @override Widget build (BuildContext context) {

    return (

      Container (
        height: 2,
        color: context.colors.windowSeparator
      )

    );

  }

}