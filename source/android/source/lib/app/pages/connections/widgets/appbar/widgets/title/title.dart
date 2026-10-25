// Connections page - App bar - Title

import 'package:flutter/material.dart';
import 'package:linette/app/modules/colors/colors.dart';
import 'package:linette/app/modules/fonts/fonts.dart';
import 'package:linette/app/modules/texts/texts.dart';



class TitleComponent extends StatelessWidget {

  const TitleComponent ({
    super.key
  });


  @override Widget build (BuildContext context) {

    return (

      Transform.translate (
        offset: const Offset (-4, -1),
        child: Text (
          context.texts.pageConnectionsAppbar,
          style: TextStyle (
            fontFamily: context.fonts.fredoka,
            fontWeight: FontWeight.w600,
            fontSize: 25,
            color: context.colors.title
          )
        )
      )

    );

  }

}