// Home page - Body - Main - Status

import 'package:flutter/material.dart';
import 'package:linette/app/themes/themes.dart';



class Status extends StatelessWidget {

  const Status ({super.key});


  @override Widget build (BuildContext context) {

    const String status = 'Соединение не защищено';


    return (

      Text (
        status,
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