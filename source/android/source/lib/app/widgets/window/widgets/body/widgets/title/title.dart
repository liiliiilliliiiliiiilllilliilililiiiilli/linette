// Window global widget - Body - Title

import 'package:flutter/material.dart';
import 'package:linette/app/modules/colors/colors.dart';



class TitleComponent extends StatelessWidget {

  final String text;


  const TitleComponent (
    this.text, {
    super.key
  });


  @override Widget build (BuildContext context) {

    return (

      Text (
        text,
        style: TextStyle (
          fontWeight: FontWeight.w500,
          fontSize: 18.5,
          color: context.colors.windowBodyTitle
        )
      )

    );

  }

}