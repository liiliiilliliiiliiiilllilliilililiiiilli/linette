// Window global widget - Body

import 'package:flutter/material.dart';
import 'package:linette/app/modules/colors/colors.dart';



class BodyComponent extends StatelessWidget {

  final bool isExpanded;
  final Widget child;


  const BodyComponent ({
    required this.isExpanded,
    required this.child,
    super.key
  });


  @override Widget build (BuildContext context) {

    return (

      !isExpanded ?

        Container (
          padding: const EdgeInsets.symmetric (
            horizontal: 20 - 4
          ),
          child: Stack (
            children: [
              child,
              Positioned (
                top: 0,
                left: 0,
                right: 0,
                height: 15,
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
        )

      :

        Expanded (
          child: Container (
            padding: const EdgeInsets.symmetric (
              horizontal: 20 - 4
            ),
            child: Stack (
              children: [
                child,
                Positioned (
                  top: 0,
                  left: 0,
                  right: 0,
                  height: 15,
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
          )
        )

    );

  }

}