// Home page - Drawer - Main - Language option - Change language window

import 'package:flutter/material.dart';
import 'package:linette/app/theme/colors.dart';
import 'components/top/top.dart';
import 'components/body/body.dart';
import 'components/bottom/bottom.dart';



class ChangeLanguageWindow extends StatelessWidget {

  const ChangeLanguageWindow ({super.key});


  @override Widget build (BuildContext context) {

    return (

      Center (
        child: Container (
          decoration: BoxDecoration (
            boxShadow: [
              BoxShadow (
                color: context.colors.black.withAlpha (64),
                offset: Offset (0, 10),
                blurRadius: 12,
                spreadRadius: 5
              )
            ]
          ),
          child: ClipRRect (
            borderRadius: BorderRadius.circular (8),
            child: Container (
              width: 300,
              color: context.colors.windowBack,
              child: Column (
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  TopComponent (),
                  BodyComponent (),
                  BottomComponent ()
                ]
              )
            )
          )
        )
      )

    );

  }

}