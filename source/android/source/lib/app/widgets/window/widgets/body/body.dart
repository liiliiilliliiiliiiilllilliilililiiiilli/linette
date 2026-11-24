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

    Widget main () {

      return (

        Stack (
          children: [
            child,
            if (isExpanded) ... [
              Positioned (
                height: 14,
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
                          context.colors.windowBodyBack,
                          context.colors.windowBodyBack.withAlpha (0)
                        ]
                      )
                    )
                  )
                )
              ),
              Positioned (
                height: 14,
                left: 0,
                right: 0,
                bottom: 0,
                child: IgnorePointer (
                  child: Container (
                    decoration: BoxDecoration (
                      gradient: LinearGradient (
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          context.colors.windowBodyBack.withAlpha (0),
                          context.colors.windowBodyBack
                        ]
                      )
                    )
                  )
                )
              )
            ]
          ]
        )

      );

    }


    return (

      (isExpanded) ? (
        Expanded (
          child: main ()
        )
      ) : (
        main ()
      )

    );

  }

}