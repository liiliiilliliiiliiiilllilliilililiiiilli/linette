// Connections page - Body - Connections list - Connection - Choice status

import 'package:flutter/material.dart';
import 'package:linette/app/modules/colors/colors.dart';
import 'package:linette/app/modules/fonts/fonts.dart';
import 'package:linette/app/modules/texts/texts.dart';



class ChoiceStatus extends StatelessWidget {

  final bool isChosen;


  const ChoiceStatus ({
    super.key,
    required this.isChosen
  });


  @override Widget build (BuildContext context) {

    final String text = isChosen
      ? context.texts.pageConnectionsBodyListConnectionIsChosen
      : '';


    return (

      Transform.translate (
        offset: const Offset (0, -1),
        child: Text (
          text,
          style: TextStyle (
            fontFamily: context.fonts.archivo,
            fontWeight: FontWeight.w600,
            fontSize: 16.5,
            color: context.colors.textChoiceStatus
          )
        )
      )

    );

  }

}