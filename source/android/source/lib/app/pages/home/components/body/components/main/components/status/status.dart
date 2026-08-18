// Home page - Body - Main - Status

import 'package:flutter/material.dart';
import 'package:linette/app/theme/colors.dart';



class Status extends StatelessWidget {

  const Status ({super.key});


  @override Widget build (BuildContext context) {

    final String text = 'Соединение не защищено';


    return (

      Text (
        text,
        style: TextStyle (
          fontFamily: 'Fredoka',
          fontWeight: FontWeight.w600,
          fontSize: 21,
          color: context.colors.white
        )
      )

    );

  }

}