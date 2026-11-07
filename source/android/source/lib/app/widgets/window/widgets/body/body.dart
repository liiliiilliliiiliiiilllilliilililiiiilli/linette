// Window global widget - Body

import 'package:flutter/material.dart';
import 'package:linette/app/modules/colors/colors.dart';



class BodyComponent extends StatelessWidget {

  final bool isExpanded;
  final Widget child;


  const BodyComponent ({
    super.key,
    required this.isExpanded,
    required this.child
  });


  @override Widget build (BuildContext context) {

    final Padding main = Padding (
      padding: const EdgeInsets.symmetric (
        horizontal: 20 - 4
      ),
      child: Stack (
        children: [
          child,
          Positioned (
            height: 15,
            top: 0,
            left: 0,
            right: 0,
            child: IgnorePointer (
              child: Container (
                decoration: BoxDecoration (
                  gradient: LinearGradient (
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      context.colors.windowMainBack,
                      context.colors.windowMainBack.withAlpha (0)
                    ]
                  )
                )
              )
            )
          )
        ]
      )
    );


    return (

      isExpanded ?

        Expanded (
          child: main
        )

      :

        main

    );

  }

}