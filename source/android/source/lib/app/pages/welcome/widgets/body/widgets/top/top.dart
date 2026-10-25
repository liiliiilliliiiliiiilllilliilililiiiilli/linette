// Welcome page - Body - Top

import 'package:flutter/material.dart';
import 'package:linette/app/modules/colors/colors.dart';
import 'package:linette/app/modules/fonts/fonts.dart';
import 'package:linette/app/modules/texts/texts.dart';



class Top extends StatelessWidget {

  const Top ({
    super.key
  });


  @override Widget build (BuildContext context) {

    return (

      Column (
        children: [
          Text.rich (
            TextSpan (
              style: TextStyle (
                fontFamily: context.fonts.fredoka,
                fontWeight: FontWeight.w600,
                fontSize: 41
              ),
              children: [
                TextSpan (
                  text: context.texts.pageWelcomeTopTitleDot,
                  style: TextStyle (
                    fontWeight: FontWeight.w500,
                    color: context.colors.prime
                  )
                ),
                TextSpan (
                  text: context.texts.pageWelcomeTopTitle,
                  style: TextStyle (
                    color: context.colors.title
                  )
                ),
                TextSpan (
                  text: context.texts.pageWelcomeTopTitleDot,
                  style: TextStyle (
                    fontWeight: FontWeight.w500,
                    color: context.colors.prime
                  )
                )
              ]
            )
          ),
          Text (
            context.texts.pageWelcomeTopSubtitle,
            style: TextStyle (
              fontFamily: context.fonts.archivo,
              fontWeight: FontWeight.w500,
              fontSize: 20,
              color: context.colors.title
            )
          )
        ]
      )

    );

  }

}