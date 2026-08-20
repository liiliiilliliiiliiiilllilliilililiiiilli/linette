// Home page - Body - Bottom - Hint window - Bottom

import 'package:flutter/material.dart';
import 'package:linette/app/theme/colors.dart';



class BottomComponent extends StatelessWidget {

  const BottomComponent ({super.key});


  @override Widget build (BuildContext context) {

    final String text = 'Хорошо';


    void handleTap () {

      print ('Нажата кнопка "Хорошо"!');

      Navigator.of(context).pop ();

    }


    return (

      GestureDetector (
        onTap: handleTap,
        behavior: HitTestBehavior.opaque,
        child: Container (
          alignment: Alignment.centerRight,
          padding: EdgeInsets.only (
            top: 12 - 8,
            right: 35
          ),
          child: Text (
            text,
            style: TextStyle (
              fontFamily: 'Fedoka',
              fontWeight: FontWeight.w400,
              fontSize: 17.5,
              color: context.colors.prime
            )
          )
        )
      )

    );

  }

}