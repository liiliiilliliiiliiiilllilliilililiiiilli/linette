// Accout window - Entered - User - Ava

import 'package:flutter/material.dart';
import 'package:linette/app/modules/colors/colors.dart';
import 'package:linette/app/modules/icons/icons.dart';



class Ava extends StatelessWidget {

  const Ava ({
    super.key
  });


  @override Widget build (BuildContext context) {

    return (

      Container (
        width: 50,
        height: 50,
        padding: const EdgeInsets.all (2.5),
        decoration: BoxDecoration (
          shape: BoxShape.circle,
          border: Border.all (
            width: 2,
            color: context.colors.windowAccountBodyUserAvaBorder
          )
        ),
        child: ClipOval (
          child: Image.asset (context.icons.windowBodyAccountNameAva)
        )
      )

    );

  }

}