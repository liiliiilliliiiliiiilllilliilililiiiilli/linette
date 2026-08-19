// Home page - Body - Main - Connect - Tap hint

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:linette/app/theme/icons.dart';
import 'package:linette/app/theme/colors.dart';



class TapHint extends StatelessWidget {

  const TapHint ({super.key});


  @override Widget build (BuildContext context) {

    final String text = 'Нажмите для подключения к VPN';


    return (

      Row (
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        spacing: 8,
        children: [
          SvgPicture.asset (
            context.icons.tap,
            width: 17,
            height: 17
          ),
          Text (
            text,
            style: TextStyle (
              fontFamily: 'Fredoka',
              fontWeight: FontWeight.w500,
              fontSize: 17.5,
              color: context.colors.primeHint,
              height: 1
            )
          )
        ]
      )

    );

  }

}