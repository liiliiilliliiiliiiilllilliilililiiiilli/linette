// Accout window - Not entered - Title

import 'package:flutter/material.dart';
import 'package:linette/app/modules/colors/colors.dart';
import 'package:linette/app/modules/fonts/fonts.dart';
import 'package:linette/app/modules/texts/texts.dart';



class TitleComponent extends StatelessWidget {

  const TitleComponent ({
    super.key
  });


  @override Widget build (BuildContext context) {

    return (

      Text (
        context.texts.windowAccountNotEnteredBodyTitle,
        style: TextStyle (
          fontFamily: context.fonts.archivo,
          fontWeight: FontWeight.w600,
          fontSize: 17,
          color: context.colors.windowMainTitle
        )
      )

    );

  }

}