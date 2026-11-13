// Accout window - Entered - Actions - Action

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:linette/app/modules/icons/icons.dart';



class ActionComponent extends StatelessWidget {

  final String text;


  const ActionComponent (
    this.text, {
    super.key
  });


  @override Widget build (BuildContext context) {

    return (

      Row (
        children: [
          Text (text),
          SvgPicture.asset (context.icons.drawerOptionLeftAccount)
        ]
      )

    );

  }

}