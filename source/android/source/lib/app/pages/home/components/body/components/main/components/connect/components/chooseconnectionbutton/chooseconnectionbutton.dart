// Home page - Body - Main - Connect - Choose connection button

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:linette/app/theme/icons.dart';



class ChooseConnectionButton extends StatelessWidget {

  const ChooseConnectionButton ({super.key});


  @override Widget build (BuildContext context) {

    const String location = 'Нидерланды';


    return (

      Row (
        children: [
          SvgPicture.asset (context.icons.location),
          Text (
            location,
            style: TextStyle (
              fontFamily: 'Fredoka',
              fontWeight: FontWeight.w400,
              fontSize: 16,
              color: Colors.lightGreenAccent
            )
          ),
          SvgPicture.asset (context.icons.arrow)
        ]
      )

    );

  }

}