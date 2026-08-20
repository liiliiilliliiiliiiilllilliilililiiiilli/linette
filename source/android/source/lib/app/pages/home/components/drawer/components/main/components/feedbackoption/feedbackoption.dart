// Home page - Drawer - Main - Feedback option

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:linette/app/theme/icons.dart';
import 'package:linette/app/theme/colors.dart';
import 'components/feedbackwindow/feedbackwindow.dart';



class FeedbackOption extends StatelessWidget {

  const FeedbackOption ({super.key});


  @override Widget build (BuildContext context) {

    void handleTap () {

      print ('Нажата кнопка обратной связи!');

      Navigator.pop (context);

      showDialog (
        context: context,
        builder: (BuildContext context) {

          return (

            FeedbackWindow ()

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
                context.icons.info,
                height: 19
              ),
              SizedBox (
                width: 12
              ),
              Text (
                'Обратная связь',
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
              SvgPicture.asset (
                context.icons.arrowNavigation,
                height: 14
              )
            ]
          )
        )
      )

    );

  }

}