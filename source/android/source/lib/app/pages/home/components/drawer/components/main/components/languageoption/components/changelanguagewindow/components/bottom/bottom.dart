// Home page - Drawer - Main - Language option - Change language window - Bottom

import 'package:flutter/material.dart';
import 'package:linette/app/theme/colors.dart';



class BottomComponent extends StatelessWidget {

  const BottomComponent ({super.key});


  @override Widget build (BuildContext context) {

    final String text = 'Готово';


    void handleTap () {

      print ('Нажата кнопка "Готово"!');

      Navigator.pop (context);

    }


    return (

      GestureDetector (
        onTap: handleTap,
        behavior: HitTestBehavior.opaque,
        child: Container (
          alignment: Alignment.centerRight,
          padding: EdgeInsets.only (
            top: 12,
            right: 4 + 32,
            bottom: 12 + 4
          ),
          child: Text (
            text,
            style: TextStyle (
              fontFamily: 'Fedoka',
              fontWeight: FontWeight.w400,
              fontSize: 16.5,
              color: context.colors.prime
            )
          )
        )
      )

    );

  }

}