// Home page - Body - Bottom - Hint window

import 'package:flutter/material.dart';
import 'package:linette/app/theme/colors.dart';
import 'components/top/top.dart';
import 'components/body/body.dart';
import 'components/bottom/bottom.dart';



class HintWindow extends StatelessWidget {

  const HintWindow ({super.key});


  @override Widget build (BuildContext context) {

    return (

      Center (
        child: Container (
          decoration: BoxDecoration (
            boxShadow: [
              BoxShadow (
                color: Color.fromARGB (64, 0, 0, 0),
                offset: Offset (0, 10),
                blurRadius: 12,
                spreadRadius: 5
              )
            ]
          ),
          child: ClipRRect (
            borderRadius: BorderRadius.circular (8),
            child: Container (
              padding: EdgeInsets.only (
                bottom: 16
              ),
              decoration: BoxDecoration (
                color: context.colors.windowBack
              ),
              width: 340,
              height: 500,
              child: Column (
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                spacing: 1 + 8,
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