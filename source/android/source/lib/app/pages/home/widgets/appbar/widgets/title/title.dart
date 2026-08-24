// Home page - App bar - Title

import 'package:flutter/material.dart';
import 'package:linette/app/theme/colors/colors.dart';



class TitleComponent extends StatelessWidget {

  const TitleComponent ({super.key});


  @override Widget build (BuildContext context) {

    final String text = 'Linette';


    return (

      IntrinsicWidth (
        child: Column (
          mainAxisSize: MainAxisSize.min,
          children: [
            Text (
              text,
              style: TextStyle (
                fontFamily: 'Fredoka',
                fontWeight: FontWeight.w600,
                fontSize: 25,
                color: context.colors.textTitle
              )
            ),
            Container (
              height: 2.75,
              decoration: BoxDecoration (
                color: context.colors.prime,
                borderRadius: BorderRadius.circular (100)
              )
            )
          ]
        )
      )

    );

  }

}