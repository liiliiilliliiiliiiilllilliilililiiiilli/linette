// Connections page - App bar - Title

import 'package:flutter/material.dart';
import 'package:linette/app/theme/colors.dart';



class TitleComponent extends StatelessWidget {

  const TitleComponent ({super.key});


  @override Widget build (BuildContext context) {

    return (

      Transform.translate (
        offset: Offset (-4, -1),
        child: Text (
          'Выберите сервер',
          style: TextStyle (
            fontFamily: 'Fredoka',
            fontWeight: FontWeight.w600,
            fontSize: 25,
            color: context.colors.white
          )
        )
      )

    );

  }

}