// Wallet window - Table - Stata

import 'package:flutter/material.dart';
import 'package:linette/app/modules/colors/colors.dart';



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
              fontWeight: FontWeight.w600,
              fontSize: 19,
              color: context.colors.windowBodyTableStataValue
            )
          ),
          Text (
            description,
            style: TextStyle (
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