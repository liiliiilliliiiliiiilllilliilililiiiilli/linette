// Window global widget - Body

import 'package:flutter/material.dart';
import 'package:linette/app/modules/colors/colors.dart';



class BodyComponent extends StatelessWidget {

  final bool isExpanded;
  final bool customPadding;
  final Widget child;


  const BodyComponent ({
    super.key,
    required this.isExpanded,
    required this.customPadding,
    required this.child
  });


  @override Widget build (BuildContext context) {

    Widget main () {

      return (

        Padding (
          padding: EdgeInsets.symmetric (
            horizontal: customPadding ? 2 : 20 - 4
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
                          context.colors.windowBodyBack,
                          context.colors.windowBodyBack.withAlpha (0)
                        ]
                      )
                    )
                  )
                )
              )
            ]
          )
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