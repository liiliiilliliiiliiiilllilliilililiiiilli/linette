// Connections page - Body - Connections - Connection - Choice status

import 'package:flutter/material.dart';
import 'package:linette/app/modules/colors/colors.dart';
import 'package:linette/app/modules/fonts/fonts.dart';
import 'package:linette/app/modules/texts/texts.dart';



class ChoiceStatus extends StatelessWidget {

  const ChoiceStatus ({
    super.key
  });


  @override Widget build (BuildContext context) {

    return (

      Transform.translate (
        offset: const Offset (0, -1),
        child: Text (
          context.texts.pageConnectionsBodyConnectionsIsChosen,
          style: TextStyle (
            fontFamily: context.fonts.archivo,
            fontWeight: FontWeight.w600,
            fontSize: 16.5,
            color: context.colors.connectionChoiceStatus
          )
        )
      )

    );

  }

}