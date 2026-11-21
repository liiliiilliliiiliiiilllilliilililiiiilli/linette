// Arsenal window - Tabs - Tab

import 'package:flutter/material.dart';
import 'package:linette/app/modules/colors/colors.dart';



class TabComponent extends StatelessWidget {

  final String text;
  final bool isChosen;


  const TabComponent (
    this.text, {
    super.key,
    required this.isChosen
  });


  @override Widget build (BuildContext context) {

    final Color colorBorder;
    final Color colorBack;
    final Color colorText;


    switch (isChosen) {

      case true:

        colorBorder = context.colors.windowBodyTabChosenBorder;
        colorBack = context.colors.windowBodyTabChosenBack;
        colorText = context.colors.windowBodyTabChosenText;

        break;

      case false:

        colorBorder = context.colors.windowBodyTabNotChosenBorder;
        colorBack = context.colors.windowBodyTabNotChosenBack;
        colorText = context.colors.windowBodyTabNotChosenText;

        break;

    }


    return (

      Container (
        decoration: BoxDecoration (
          border: Border (
            top: BorderSide (
              width: 2,
              color: colorBorder
            )
          ),
          borderRadius: BorderRadius.circular (25),
          color: colorBack
        ),
        padding: const EdgeInsets.symmetric (
          horizontal: 16,
          vertical: 8
        ),
        child: Text (
          text,
          style: TextStyle (
            fontWeight: FontWeight.w600,
            fontSize: 17,
            color: colorText
          )
        )
      )

    );

  }

}