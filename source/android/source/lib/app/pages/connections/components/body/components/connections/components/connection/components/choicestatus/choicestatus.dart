// Connections page - Body - Connections list - Connection - Choice status

import 'package:flutter/material.dart';
import 'package:linette/app/theme/colors.dart';



class ChoiceStatus extends StatelessWidget {

  final bool isChosen;


  const ChoiceStatus ({
    super.key,
    required this.isChosen
  });


  @override Widget build (BuildContext context) {

    final String text = isChosen ? 'Выбран' : '';


    return (

      Transform.translate (
        offset: Offset (0, -1),
        child: Text (
          text,
          style: TextStyle (
            fontFamily: 'Archivo',
            fontWeight: FontWeight.w600,
            fontSize: 16.5,
            color: context.colors.grey
          )
        )
      )

    );

  }

}