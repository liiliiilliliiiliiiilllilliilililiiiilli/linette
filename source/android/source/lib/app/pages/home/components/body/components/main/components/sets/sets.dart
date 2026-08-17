// Home page - Body - Main - Sets

import 'package:flutter/material.dart';
import 'package:linette/app/themes/themes.dart';



class Sets extends StatelessWidget {

  const Sets ({super.key});


  @override Widget build (BuildContext context) {

    const String sets = 'Нет подключения';


    return (

      Text (
        sets,
        style: TextStyle (
          fontFamily: 'Fredoka',
          fontWeight: FontWeight.w400,
          fontSize: 16,
          color: context.colors.grey
        )
      )

    );

  }

}