// Home page - Body - Main - States

import 'package:flutter/material.dart';
import 'package:linette/app/modules/colors/colors.dart';
import 'package:linette/app/modules/fonts/fonts.dart';
import 'package:linette/app/modules/texts/texts.dart';



class States extends StatelessWidget {

  const States ({
    super.key
  });


  @override Widget build (BuildContext context) {

    return (

      Text (
        context.texts.pageHomeBodyBottom,
        style: TextStyle (
          fontFamily: context.fonts.archivo,
          fontWeight: FontWeight.w500,
          fontSize: 16,
          color: context.colors.states
        )
      )

    );

  }

}