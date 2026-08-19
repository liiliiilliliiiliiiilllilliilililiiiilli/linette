// Home page - Body - Main - Connect - Choose connection button

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:linette/app/theme/icons.dart';
import 'package:linette/app/theme/colors.dart';



class ChooseConnectionButton extends StatelessWidget {

  const ChooseConnectionButton ({super.key});


  void handleTap () {

    print ('Нажата кнопка выбора подключения!');

  }


  @override Widget build (BuildContext context) {

    final String text = 'Нидерланды';


    return (

      GestureDetector (
        onTap: handleTap,
        child: Row (
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          spacing: 8,
          children: [
            SvgPicture.asset (
              context.icons.location,
              width: 17,
              height: 17
            ),
            Text (
              text,
              style: TextStyle (
                fontFamily: 'Fredoka',
                fontWeight: FontWeight.w600,
                fontSize: 17.5,
                color: context.colors.prime,
                height: 1
              )
            ),
            SvgPicture.asset (
              context.icons.arrow,
              width: 17,
              height: 17
            )
          ]
        )
      )

    );

  }

}