// Hint window

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:linette/app/modules/colors/colors.dart';
import 'package:linette/app/modules/texts/texts.dart';
import 'package:linette/app/widgets/window/window.dart';



class HintWindow extends HookWidget {

  const HintWindow ({
    super.key
  });


  @override Widget build (BuildContext context) {

    return (

      Window (
        isExpanded: true,
        title: context.texts.windowPurposeOfThisAppTop,
        body: Stack (
          children: [
            SingleChildScrollView (
              child: Padding (
                padding: const EdgeInsets.only (
                  top: 10
                ),
                child: Text (
                  context.texts.windowPurposeOfThisAppCenter,
                  style: TextStyle (
                    fontFamily: 'Fedoka',
                    fontWeight: FontWeight.w400,
                    fontSize: 16,
                    color: context.colors.windowMainText
                  )
                )
              )
            ),
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
        ),
        action: context.texts.windowPurposeOfThisAppBottom,
        width: 340
      )

    );

  }

}