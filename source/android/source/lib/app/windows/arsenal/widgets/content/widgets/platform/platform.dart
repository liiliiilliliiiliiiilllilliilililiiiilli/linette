// Arsenal window - Content - Platform

import 'package:flutter/material.dart';
import 'package:linette/app/modules/texts/texts.dart';
import 'package:linette/app/widgets/window/widgets/body/widgets/switchertitle/switchertitle.dart';
import 'package:linette/app/widgets/window/widgets/body/widgets/instruction/instruction.dart';



class Platform extends StatelessWidget {

  const Platform ({
    super.key
  });


  @override Widget build (BuildContext context) {

    return (

      Column (
        spacing: 8 * 1.5,
        children: [
          SwitcherTitle (
            context.texts.windowArsenalBodySectionsPlatformTitle,
            value: false
          ),
          Instruction (context.texts.windowArsenalBodySectionsPlatformInstruction)
        ]
      )

    );

  }

}