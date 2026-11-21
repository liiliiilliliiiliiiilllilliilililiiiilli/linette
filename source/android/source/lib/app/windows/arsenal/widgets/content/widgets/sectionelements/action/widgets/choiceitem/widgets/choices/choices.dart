// Arsenal window - Content - Action - Choice item - Choices

import 'package:flutter/material.dart';
import 'package:linette/app/modules/colors/colors.dart';
import 'widgets/choice/choice.dart';
import 'widgets/separator/separator.dart';



class Choices extends StatelessWidget {

  final List <Choice> choices;


  const Choices (
    this.choices, {
    super.key
  });


  @override Widget build (BuildContext context) {

    return (

      DecoratedBox (
        decoration: BoxDecoration (
          color: context.colors.bodyBackPrime
        ),
        child: Column (
          children: [

            for (int i = 0; i < choices.length; i++) ... [

              choices [i],

              if (i < choices.length - 1) const Separator ()

            ]

          ]
        )
      )

    );

  }

}