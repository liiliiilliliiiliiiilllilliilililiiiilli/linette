// Home page - Drawer - Main - Separator

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
        margin: const EdgeInsets.symmetric (
          horizontal: 2.5 + 8
        ),
        color: context.colors.line
      )

    );

  }

}