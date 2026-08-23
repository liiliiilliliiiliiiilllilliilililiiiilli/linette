// Home page - Body - Main - States

import 'package:flutter/material.dart';
import 'package:linette/app/localization/generated/l10n.dart';
import 'package:linette/app/theme/colors.dart';



class States extends StatelessWidget {

  const States ({super.key});


  @override Widget build (BuildContext context) {

    final String text = T.of(context).noConnection;


    return (

      Text (
        text,
        style: TextStyle (
          fontFamily: 'Fredoka',
          fontWeight: FontWeight.w500,
          fontSize: 16,
          color: context.colors.textStates
        )
      )

    );

  }

}