// Home page - App bar - Left button

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:linette/app/themes/themes.dart';



class LeftButtonComponent extends StatelessWidget {

  const LeftButtonComponent ({super.key});


  @override Widget build (BuildContext context) {

    void handleTap () {

      print ('Нажата кнопка открытия меню!');

    }


    return (

      GestureDetector (
        onTap: handleTap,
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
            child: SvgPicture.asset ('assets/pictures/theme_green_dark/icons/menu.svg')
          )
        )
      )

    );

  }

}