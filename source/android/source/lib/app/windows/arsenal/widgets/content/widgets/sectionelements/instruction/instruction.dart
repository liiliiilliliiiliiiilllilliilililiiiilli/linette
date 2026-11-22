// Arsenal window - Content - Instruction section element

import 'package:flutter/material.dart';
import 'package:linette/app/modules/colors/colors.dart';



class Instruction extends StatelessWidget {

  final String text;


  const Instruction (
    this.text, {
    super.key
  });


  @override Widget build (BuildContext context) {

    return (

      Text (
        text,
        style: TextStyle (
          fontWeight: FontWeight.w400,
          fontSize: 15.5,
          color: context.colors.windowBodyText
        )
      )

    );

  }

}