// Home page - Body - Main - Connect - Choose connection button

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:linette/app/theme/icons.dart';
import 'package:linette/app/theme/colors.dart';



class ChooseConnectionButton extends StatelessWidget {

  const ChooseConnectionButton ({super.key});


  @override Widget build (BuildContext context) {

    final String text = 'Нидерланды';


    void handleTap (context) {

      print ('Нажата кнопка выбора подключения!');

      Navigator.pushNamed (context, '/connections');

    }


    return (

      GestureDetector (
        onTap: () => handleTap (context),
        behavior: HitTestBehavior.opaque,
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