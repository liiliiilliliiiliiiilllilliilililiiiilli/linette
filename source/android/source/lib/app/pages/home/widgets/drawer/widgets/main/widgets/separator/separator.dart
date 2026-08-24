// Home page - Drawer - Main - Separator

import 'package:flutter/material.dart';
import 'package:linette/app/theme/colors/colors.dart';



class Separator extends StatelessWidget {

  const Separator ({super.key});


  @override Widget build (BuildContext context) {

    return (

      Container (
        height: 2,
        margin: EdgeInsets.only (
          left: 2.5,
          right: 2.5
        ),
        color: context.colors.line
      )

    );

  }

}