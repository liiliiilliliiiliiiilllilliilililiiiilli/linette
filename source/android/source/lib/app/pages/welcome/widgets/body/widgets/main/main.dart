// Welcome page - Body - Main

import 'package:flutter/material.dart';
import 'package:linette/app/localization/generated/l10n.dart';
import 'package:linette/app/theme/colors/colors.dart';



class Main extends StatelessWidget {

  const Main ({
    super.key
  });


  @override Widget build (BuildContext context) {

    return (

      Text (
        T.of(context).welcomeWhatToDo,
        textAlign: TextAlign.center,
        style: TextStyle (
          fontFamily: 'Archivo',
          fontWeight: FontWeight.w500,
          fontSize: 18,
          color: context.colors.textTitle
        )
      )

    );

  }

}