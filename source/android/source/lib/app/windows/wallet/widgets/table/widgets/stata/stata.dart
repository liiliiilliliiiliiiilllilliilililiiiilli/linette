// Wallet window - Table - Stata

import 'package:flutter/material.dart';
import 'package:linette/app/modules/colors/colors.dart';
import 'package:linette/app/modules/fonts/fonts.dart';



class TableStata extends StatelessWidget {

  final String amount;
  final String description;


  const TableStata ({
    super.key,
    required this.amount,
    required this.description
  });


  @override Widget build (BuildContext context) {

    return (

      Column (
        children: [
          Text (
            amount,
            style: TextStyle (
              fontFamily: context.fonts.archivo,
              fontWeight: FontWeight.w600,
              fontSize: 19,
              color: context.colors.windowBodyTableStataValue
            )
          ),
          Text (
            description,
            style: TextStyle (
              fontFamily: context.fonts.archivo,
              fontWeight: FontWeight.w500,
              fontSize: 12,
              color: context.colors.windowBodyTableStataName
            )
          )
        ]
      )

    );

  }

}