// Controller menu window - Hint

import 'package:flutter/material.dart';
import 'package:linette/app/modules/colors/colors.dart';
import 'package:linette/app/modules/texts/texts.dart';



class Hint extends StatelessWidget {

  const Hint ({
    super.key
  });


  @override Widget build (BuildContext context) {

    return (

      Text (
        context.texts.windowControllerMenuHint,
        textAlign: TextAlign.center,
        style: TextStyle (
          fontWeight: FontWeight.w500,
          fontSize: 15.5,
          color: context.colors.windowBodyTextAuxiliary
        )
      )

    );

  }

}