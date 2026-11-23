// Net window - Parameters block

import 'package:flutter/material.dart';
import 'widgets/title/title.dart';
import 'widgets/parameter/parameter.dart';



class ParametersBlock extends StatelessWidget {

  final bool darkened;
  final TitleComponent title;
  final List <ParameterComponent> parameters;


  const ParametersBlock ({
    super.key,
    this.darkened = false,
    required this.title,
    required this.parameters
  });


  @override Widget build (BuildContext context) {

    Widget main () {

      return (

        Column (
          crossAxisAlignment: CrossAxisAlignment.start,
          spacing: 8 * 2,
          children: [
            title,
            Column (
              crossAxisAlignment: CrossAxisAlignment.start,
              spacing: 8 * 1,
              children: parameters
            )
          ]
        )

      );

    }


    return (

      (darkened) ? (
        Opacity (
          opacity: 0.25,
          child: main ()
        )
      ) : (
        main ()
      )

    );

  }

}