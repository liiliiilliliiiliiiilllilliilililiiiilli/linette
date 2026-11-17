// Accout window - Entered - User - Data

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:linette/app/modules/colors/colors.dart';
import 'package:linette/app/modules/fonts/fonts.dart';
import 'package:linette/app/modules/icons/icons.dart';
import 'package:linette/app/modules/texts/texts.dart';



class Data extends StatelessWidget {

  const Data ({
    super.key
  });


  @override Widget build (BuildContext context) {

    return (

      Column (
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row (
            spacing: 8,
            children: [
              Text (
                context.texts.windowAccountEnteredBodyUserName,
                style: TextStyle (
                  // fontFamily: context.fonts.archivo,
                  fontWeight: FontWeight.w500,
                  fontSize: 15.5,
                  color: context.colors.windowAccountBodyUserNameText
                )
              ),
              SvgPicture.asset (
                context.icons.windowBodyAccountNameEdit,
                width: 12.5,
                height: 12.5,
                colorFilter: ColorFilter.mode (
                  context.colors.windowAccountBodyUserNameIcon,
                  BlendMode.srcIn
                )
              )
            ]
          ),
          Text (
            context.texts.windowAccountEnteredBodyUserUsersNum (127),
            style: TextStyle (
              // fontFamily: context.fonts.archivo,
              fontWeight: FontWeight.w500,
              fontSize: 15.5,
              color: context.colors.windowAccountBodyUserSubscribers
            )
          )
        ]
      )

    );

  }

}