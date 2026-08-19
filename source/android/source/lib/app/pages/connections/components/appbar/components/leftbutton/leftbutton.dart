// Connections page - App bar - Left button

import 'dart:math' as math;
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:linette/app/theme/icons.dart';
import 'package:linette/app/theme/colors.dart';



class LeftButton extends StatelessWidget {

  const LeftButton ({super.key});


  @override Widget build (BuildContext context) {

    void handleTap (context) {

      print ('Нажата кнопка "назад"!');

      Navigator.pop (context);

    }


    return (

      GestureDetector (
        onTap: () => handleTap (context),
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
              borderRadius: BorderRadius.all (Radius.circular (100))
            ),
            child: Transform.translate (
              offset: Offset (-1, 0),
              child: Transform.rotate (
                angle: 180 * math.pi / 180,
                child: SvgPicture.asset (context.icons.arrowNavigation)
              )
            )
          )
        )
      )

    );

  }

}