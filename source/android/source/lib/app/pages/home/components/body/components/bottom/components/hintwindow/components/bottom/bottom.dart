// Home page - Body - Bottom - Hint window - Bottom

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:linette/app/theme/colors.dart';
import 'package:linette/app/elements/presser/presser.dart';
import 'package:linette/app/elements/animatorpresser/animatorpresser.dart';



class BottomComponent extends HookWidget {

  const BottomComponent ({super.key});


  @override Widget build (BuildContext context) {

    final isPressed = useState (false);


    final String text = 'Ок';


    void handleTap () {

      print ('Нажата кнопка "Ок"!');

      Navigator.pop (context);

    }


    return (

      Presser (
        isPressed: isPressed,
        handleTap: handleTap,
        child: AnimatorPresser (
          isPressed: isPressed,
          scaleRate: 0.98,
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
      )

    );

  }

}