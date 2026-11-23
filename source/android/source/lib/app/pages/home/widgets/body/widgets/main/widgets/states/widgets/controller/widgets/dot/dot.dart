// Home page - Body - Main - States - Controller - Dot

import 'package:flutter/material.dart';



class Dot extends StatelessWidget {

  final bool isActive;
  final Color colorBorder;
  final Color colorBackActive;
  final Color colorBackNotActive;


  const Dot ({
    super.key,
    required this.isActive,
    required this.colorBorder,
    required this.colorBackActive,
    required this.colorBackNotActive
  });


  @override Widget build (BuildContext context) {

    final Color colorBack = isActive
      ? colorBackActive
      : colorBackNotActive;


    return (

      Container (
        width: 16,
        height: 16,
        decoration: BoxDecoration (
          border: Border.all (
            width: 2,
            color: colorBorder
          ),
          shape: BoxShape.circle,
          color: colorBack
        )
      )

    );

  }

}