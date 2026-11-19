// Wallet window - Separator

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
        decoration: BoxDecoration (
          borderRadius: BorderRadius.circular (100),
          color: context.colors.windowBodySeparator
        )
      )

    );

  }

}