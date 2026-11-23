// Home page - Body - Main - States - Info

import 'package:flutter/material.dart';
import 'package:linette/app/modules/colors/colors.dart';
import 'package:linette/app/modules/fonts/fonts.dart';
import 'package:linette/app/modules/texts/texts.dart';



class Info extends StatelessWidget {

  const Info ({
    super.key
  });


  @override Widget build (BuildContext context) {

    return (

      Container (
        alignment: Alignment.center,
        height: 25,
        child: Text (
          context.texts.pageHomeBodyBottom,
          style: TextStyle (
            fontFamily: context.fonts.archivo,
            fontWeight: FontWeight.w500,
            fontSize: 16,
            color: context.colors.states
          )
        )
      )

    );

  }

}