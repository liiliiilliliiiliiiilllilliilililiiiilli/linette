// Arsenal window - Content - Action - Choice item - Choices - Choice

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:linette/app/modules/colors/colors.dart';
import 'package:linette/app/modules/icons/icons.dart';



class Choice extends StatelessWidget {

  final String text;
  final bool isChosen;


  const Choice (
    this.text, {
    required this.isChosen,
    super.key
  });


  @override Widget build (BuildContext context) {

    return (

      Row (
        spacing: 8,
        children: [
          isChosen ? (
            SvgPicture.asset (
              context.icons.buttonConnect,
              width: 256,
              height: 256,
              colorFilter: ColorFilter.mode (
                context.colors.buttonConnectIcon,
                BlendMode.srcIn
              )
            )
          ) : (
            Container ()
          ),
          Text (
            text,
            style: TextStyle (
              fontWeight: FontWeight.w500,
              fontSize: 17.5,
              height: 1,
              color: context.colors.buttonChooseConnection
            )
          )
        ]
      )

    );

  }

}