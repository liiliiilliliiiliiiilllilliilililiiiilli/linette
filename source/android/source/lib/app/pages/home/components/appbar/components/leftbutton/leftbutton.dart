// Home page - App bar - Left button

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:linette/app/theme/icons.dart';
import 'package:linette/app/theme/colors.dart';



class LeftButton extends StatelessWidget {

  const LeftButton ({super.key});


  @override Widget build (BuildContext context) {

    void handleTap () {

      print ('Нажата кнопка открытия меню!');

      Scaffold.of(context).openDrawer ();

    }


    return (

      GestureDetector (
        onTap: handleTap,
        behavior: HitTestBehavior.opaque,
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

    );

  }

}