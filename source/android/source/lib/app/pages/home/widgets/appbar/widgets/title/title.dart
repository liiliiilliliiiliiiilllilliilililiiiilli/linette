// Home page - App bar - Title

import 'package:flutter/material.dart';
import 'package:linette/app/modules/colors/colors.dart';
import 'package:linette/app/modules/fonts/fonts.dart';
import 'package:linette/app/modules/texts/texts.dart';



class TitleComponent extends StatelessWidget {

  const TitleComponent ({
    super.key
  });


  @override Widget build (BuildContext context) {

    return (

      IntrinsicWidth (
        child: Column (
          mainAxisSize: MainAxisSize.min,
          children: [
            Text (
              context.texts.pageHomeAppBar,
              style: TextStyle (
                fontFamily: context.fonts.fredoka,
                fontWeight: FontWeight.w600,
                fontSize: 25,
                color: context.colors.title
              )
            ),
            Container (
              height: 2.75,
              decoration: BoxDecoration (
                borderRadius: BorderRadius.circular (100),
                color: context.colors.prime
              )
            )
          ]
        )
      )

    );

  }

}