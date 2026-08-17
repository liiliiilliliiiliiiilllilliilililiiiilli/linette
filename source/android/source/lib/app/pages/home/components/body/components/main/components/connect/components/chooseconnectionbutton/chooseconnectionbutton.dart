// Home page - Body - Main - Connect - Choose connection button

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';



class ChooseConnectionButton extends StatelessWidget {

  const ChooseConnectionButton ({super.key});


  @override Widget build (BuildContext context) {

    const String location = 'Нидерланды';


    return (

      Row (
        children: [
          SvgPicture.asset ('assets/pictures/theme_green_light/icons/location.svg'),
          Text (
            location,
            style: TextStyle (
              fontFamily: 'Fredoka',
              fontWeight: FontWeight.w400,
              fontSize: 16,
              color: Colors.lightGreenAccent
            )
          ),
          SvgPicture.asset ('assets/pictures/theme_green_light/icons/arrow.svg')
        ]
      )

    );

  }

}