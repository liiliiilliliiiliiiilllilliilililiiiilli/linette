// Home page - Body - Main - Connect - Tap hint

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:linette/app/theme/icons.dart';



class TapHint extends StatelessWidget {

  const TapHint ({super.key});


  @override Widget build (BuildContext context) {

    const String action = 'Нажмите для подключения к VPN';


    return (

      Row (
        children: [
          SvgPicture.asset (context.icons.tap),
          Text (
            action,
            style: TextStyle (
              fontFamily: 'Fredoka',
              fontWeight: FontWeight.w400,
              fontSize: 16,
              color: Colors.lightGreen
            )
          )
        ]
      )

    );

  }

}