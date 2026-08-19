// Home page - Body - Main - Connect - Connection button

import 'dart:math' as math;
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:linette/app/theme/icons.dart';
import 'package:linette/app/theme/colors.dart';



class ConnectionButton extends StatelessWidget {

  const ConnectionButton ({super.key});


  @override Widget build (BuildContext context) {

    void handleTap () {

      print ('Нажата кнопка подключения!');

    }


    return (

      GestureDetector (
        onTap: handleTap,
        behavior: HitTestBehavior.opaque,
        child: Center (
          child: Opacity (
            opacity: 0.9,
            child: Container (
              width: 225,
              height: 225,
              padding: EdgeInsets.all (32),
              decoration: BoxDecoration (
                border: Border.all (
                  width: 4,
                  color: context.colors.black
                ),
                borderRadius: BorderRadius.circular (1000),
                boxShadow: [
                  BoxShadow (
                    color: Color.fromARGB (150, 0, 0, 0),
                    offset: Offset (0, 5),
                    blurRadius: 8,
                    spreadRadius: 2.5
                  )
                ],
                color: context.colors.prime
              ),
              child: Center (
                child: Transform.translate (
                  offset: Offset (0, -2),
                  child: Transform.rotate (
                    angle: 5 * math.pi / 180,
                    child: SvgPicture.asset (
                      context.icons.olive
                    )
                  )
                )
              )
            )
          )
        )
      )

    );

  }

}