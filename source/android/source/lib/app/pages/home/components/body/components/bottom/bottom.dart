// Home page - Body - Bottom

import 'package:flutter/material.dart';
import 'package:linette/app/themes/themes.dart';



class Bottom extends StatelessWidget {

  const Bottom ({super.key});


  @override Widget build (BuildContext context) {

    return (

      Center (
        child: Container (
          padding: EdgeInsets.fromLTRB (25, 16, 25, 16),
          decoration: BoxDecoration (
            border: Border (
              top: BorderSide (
                width: 2,
                color: context.colors.grey
              )
            ),
            color: context.colors.black
          ),
          child: Text (
            'Подробнее о приложении, которое создано для обхода ограничений.',
            style: TextStyle (
              fontFamily: 'Fredoka',
              fontWeight: FontWeight.w400,
              fontSize: 16,
              color: context.colors.white
            )
          )
        )
      )

    );

  }

}