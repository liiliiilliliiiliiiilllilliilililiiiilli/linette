// Arsenal window - Content - Action - Choice item

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:linette/app/modules/colors/colors.dart';
import 'package:linette/app/modules/icons/icons.dart';



class ChoiceItem extends StatelessWidget {

  final String text;


  const ChoiceItem (
    this.text, {
    super.key
  });


  @override Widget build (BuildContext context) {

    return (

      Row (
        spacing: 8,
        children: [
          Text (
            text,
            style: TextStyle (
              fontWeight: FontWeight.w500,
              fontSize: 15.5,
              height: 1,
              color: context.colors.windowBodyActionRegular
            )
          ),
          SvgPicture.asset (
            context.icons.windowBodyActionChoice,
            width: 8.8,
            height: 8.8,
            colorFilter: ColorFilter.mode (
              context.colors.windowBodyActionRegular,
              BlendMode.srcIn
            )
          )
        ]
      )

    );

  }

}