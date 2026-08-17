// Home page - Body - Main - Connect - Connection button

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:linette/app/themes/themes.dart';



class ConnectionButton extends StatelessWidget {

  const ConnectionButton ({super.key});


  @override Widget build (BuildContext context) {

    return (

      Center (
        child: Container (
          width: 250,
          height: 250,
          decoration: BoxDecoration (
            border: Border.all (
              width: 4,
              color: context.colors.black
            ),
            borderRadius: BorderRadius.circular (1000),
            color: context.colors.grey
          ),
          child: SvgPicture.asset ('assets/pictures/theme_green_light/icons/olive.svg')
        )
      )

    );

  }

}