// Welcome page - Body - Main

import 'package:flutter/material.dart';
import 'package:linette/app/modules/colors/colors.dart';
import 'package:linette/app/modules/fonts/fonts.dart';
import 'package:linette/app/modules/texts/texts.dart';



class Main extends StatelessWidget {

  const Main ({
    super.key
  });


  @override Widget build (BuildContext context) {

    return (

      Text (
        context.texts.pageWelcomeCenter,
        textAlign: TextAlign.center,
        style: TextStyle (
          fontFamily: context.fonts.archivo,
          fontWeight: FontWeight.w500,
          fontSize: 18,
          color: context.colors.title
        )
      )

    );

  }

}