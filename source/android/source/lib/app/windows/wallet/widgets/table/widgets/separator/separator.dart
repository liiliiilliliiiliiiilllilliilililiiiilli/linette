// Wallet window - Table - Separator

import 'package:flutter/material.dart';
import 'package:linette/app/modules/colors/colors.dart';
import 'model/type/type.dart';



class Separator extends StatelessWidget {

  final SeparatorType type;


  const Separator (
    this.type, {
    super.key
  });


  @override Widget build (BuildContext context) {

    return (

      (type == SeparatorType.horizontal) ? (
        Container (
          height: 2,
          decoration: BoxDecoration (
            borderRadius: BorderRadius.circular (100),
            color: context.colors.windowTableSeparator
          )
        )
      ) : (
        Container (
          width: 2,
          decoration: BoxDecoration (
            borderRadius: BorderRadius.circular (100),
            color: context.colors.windowTableSeparator
          )
        )
      )

    );

  }

}