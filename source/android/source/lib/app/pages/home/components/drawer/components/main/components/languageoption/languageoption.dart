// Home page - Drawer - Main - Language option

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:linette/app/theme/icons.dart';
import 'package:linette/app/theme/colors.dart';
import 'components/changelanguagewindow/changelanguagewindow.dart';



class LanguageOption extends StatelessWidget {

  const LanguageOption ({super.key});


  @override Widget build (BuildContext context) {

    void handleTap () {

      print ('Нажата кнопка опции смены языка!');

      Navigator.pop (context);

      showDialog (
        context: context,
        builder: (BuildContext context) {

          return (

            ChangeLanguageWindow ()

          );

        }
      );

    }


    return (

      GestureDetector (
        onTap: handleTap,
        behavior: HitTestBehavior.opaque,
        child: Container (
          padding: EdgeInsets.only (
            top: 10,
            bottom: 10
          ),
          child: Row (
            children: [
              SvgPicture.asset (
                context.icons.world,
                height: 19
              ),
              SizedBox (
                width: 12
              ),
              Text (
                'Язык',
                style: TextStyle (
                  fontFamily: 'Fredoka',
                  fontWeight: FontWeight.w500,
                  fontSize: 17.5,
                  color: context.colors.white
                )
              ),
              Flexible (
                child: Container ()
              ),
              Text (
                'Русский',
                style: TextStyle (
                  fontFamily: 'Fredoka',
                  fontWeight: FontWeight.w500,
                  fontSize: 17.5,
                  color: context.colors.grey
                )
              )
            ]
          )
        )
      )

    );

  }

}