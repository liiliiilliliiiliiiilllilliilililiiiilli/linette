// Home page - Drawer - Main - Feedback option - Feedback window

import 'package:flutter/material.dart';
import 'package:linette/app/theme/colors/colors.dart';
import 'widgets/top/top.dart';
import 'widgets/body/body.dart';
import 'widgets/bottom/bottom.dart';



class FeedbackWindow extends StatelessWidget {

  const FeedbackWindow ({super.key});


  @override Widget build (BuildContext context) {

    return (

      Material (
        type: MaterialType.transparency,
        child: Center (
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
                width: 340,
                color: context.colors.windowMainBack,
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
      )

    );

  }

}