// Accout window - Not entered - Hint - Text

import 'package:flutter/material.dart';
import 'package:linette/app/modules/colors/colors.dart';
import 'package:linette/app/modules/fonts/fonts.dart';
import 'package:linette/app/modules/texts/texts.dart';



class TextComponent extends StatelessWidget {

  const TextComponent ({
    super.key
  });


  @override Widget build (BuildContext context) {

    return (

      Text (
        context.texts.windowAccountNotEnteredBodyHint_1,
        style: TextStyle (
          fontFamily: context.fonts.archivo,
          fontWeight: FontWeight.w500,
          fontSize: 15.5,
          color: context.colors.windowMainTextAuxiliary
        )
      )

    );

  }

}