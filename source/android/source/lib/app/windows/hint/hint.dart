// Hint window

import 'package:flutter/material.dart';
import 'package:linette/app/modules/colors/colors.dart';
import 'package:linette/app/modules/texts/texts.dart';
import 'package:linette/app/widgets/window/window.dart';



class HintWindow extends StatelessWidget {

  const HintWindow ({
    super.key
  });


  @override Widget build (BuildContext context) {

    return (

      Window (
        width: 340,
        isExpanded: true,
        title: context.texts.windowHintTop,
        body: SingleChildScrollView (
          child: Padding (
            padding: const EdgeInsets.only (
              top: 10
            ),
            child: Text (
              context.texts.windowHintCenter,
              style: TextStyle (
                fontFamily: 'Fedoka',
                fontWeight: FontWeight.w400,
                fontSize: 16,
                color: context.colors.windowMainText
              )
            )
          )
        ),
        action: context.texts.windowHintBottom
      )

    );

  }

}