// Home page - Drawer - Main - Language option - Change language window - Top

import 'package:flutter/material.dart';
import 'package:linette/app/theme/colors.dart';



class TopComponent extends StatelessWidget {

  const TopComponent ({super.key});


  @override Widget build (BuildContext context) {

    final String text = 'Язык приложения';


    return (

      Container (
        padding: EdgeInsets.only (
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
          text,
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