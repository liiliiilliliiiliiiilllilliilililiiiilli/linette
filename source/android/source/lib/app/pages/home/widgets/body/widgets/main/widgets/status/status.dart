// Home page - Body - Main - Status

import 'package:flutter/material.dart';
import 'package:linette/app/modules/colors/colors.dart';
import 'package:linette/app/modules/fonts/fonts.dart';
import 'package:linette/app/modules/texts/texts.dart';



class Status extends StatelessWidget {

  const Status ({
    super.key
  });


  @override Widget build (BuildContext context) {

    return (

      Text (
        context.texts.pageHomeBodyTop,
        style: TextStyle (
          fontFamily: context.fonts.archivo,
          fontWeight: FontWeight.w600,
          fontSize: 26,
          color: context.colors.status
        )
      )

    );

  }

}