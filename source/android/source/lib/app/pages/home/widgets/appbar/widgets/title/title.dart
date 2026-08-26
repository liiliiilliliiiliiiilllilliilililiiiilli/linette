// Home page - App bar - Title

import 'package:flutter/material.dart';
import 'package:linette/app/localization/generated/l10n.dart';
import 'package:linette/app/theme/colors/colors.dart';



class TitleComponent extends StatelessWidget {

  const TitleComponent ({super.key});


  @override Widget build (BuildContext context) {

    return (

      IntrinsicWidth (
        child: Column (
          mainAxisSize: MainAxisSize.min,
          children: [
            Text (
              T.of(context).title,
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