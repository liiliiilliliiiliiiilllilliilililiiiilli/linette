// Home page - App bar - Left button

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:linette/app/theme/icons.dart';
import 'package:linette/app/theme/colors.dart';
import 'package:linette/app/elements/presser/presser.dart';
import 'package:linette/app/elements/animatorpresser/animatorpresser.dart';



class LeftButton extends HookWidget {

  const LeftButton ({super.key});


  @override Widget build (BuildContext context) {

    final isPressed = useState (false);


    void handleTap () {

      print ('Нажата кнопка открытия меню!');

      Scaffold.of(context).openDrawer ();

    }


    return (

      Presser (
        isPressed: isPressed,
        handleTap: handleTap,
        child: AnimatorPresser (
          isPressed: isPressed,
          child: Center (
            child: Container (
              width: 38,
              height: 38,
              padding: EdgeInsets.all (7.5),
              decoration: BoxDecoration (
                color: context.colors.black,
                border: Border.all (
                  width: 3,
                  color: context.colors.buttonsBorder
                ),
                borderRadius: BorderRadius.all (Radius.circular (10))
              ),
              child: SvgPicture.asset (context.icons.menu)
            )
          )
        )
      )

    );

  }

}