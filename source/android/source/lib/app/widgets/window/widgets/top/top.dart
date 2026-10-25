// Global widgets - Window - Top

import 'package:flutter/material.dart';
import 'package:linette/app/modules/colors/colors.dart';



class TopComponent extends StatelessWidget {

  final String title;


  const TopComponent ({
    required this.title,
    super.key
  });


  @override Widget build (BuildContext context) {

    return (

      Container (
        padding: const EdgeInsets.only (
          top: 12 + 2,
          left: 4 + 16,
          bottom: 12
        ),
        decoration: BoxDecoration (
          border: Border (
            bottom: BorderSide (
              width: 2,
              color: context.colors.windowSeparator
            )
          ),
          color: context.colors.windowTopBack
        ),
        child: Text (
          title,
          style: TextStyle (
            fontFamily: 'Fedoka',
            fontWeight: FontWeight.w600,
            fontSize: 16.5,
            color: context.colors.windowTopText
          )
        )
      )

    );

  }

}