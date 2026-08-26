// Home page - Body - Main - Status

import 'package:flutter/material.dart';
import 'package:linette/app/localization/generated/l10n.dart';
import 'package:linette/app/theme/colors/colors.dart';



class Status extends StatelessWidget {

  const Status ({super.key});


  @override Widget build (BuildContext context) {

    return (

      Text (
        T.of(context).connectionIsNotProtected,
        style: TextStyle (
          fontFamily: 'Fredoka',
          fontWeight: FontWeight.w600,
          fontSize: 26,
          color: context.colors.textStatus
        )
      )

    );

  }

}