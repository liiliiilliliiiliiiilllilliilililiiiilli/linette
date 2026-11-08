// Net window - Parameters block - Title

import 'package:flutter/material.dart';
import 'package:linette/app/modules/colors/colors.dart';



class TitleComponent extends StatelessWidget {

  final String text;


  const TitleComponent (
    this.text,
    {
      super.key
    }
  );


  @override Widget build (BuildContext context) {

    return (

      Text (
        text,
        style: TextStyle (
          fontWeight: FontWeight.w500,
          color: context.colors.windowMainTitle
        )
      )

    );

  }

}