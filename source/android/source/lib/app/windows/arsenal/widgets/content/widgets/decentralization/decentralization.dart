// Arsenal window - Content - Decentralization

import 'package:flutter/material.dart';
import 'package:linette/app/modules/texts/texts.dart';
import 'package:linette/app/widgets/window/widgets/body/widgets/switchertitle/switchertitle.dart';
import 'package:linette/app/widgets/window/widgets/body/widgets/instruction/instruction.dart';



class Decentralization extends StatelessWidget {

  const Decentralization ({
    super.key
  });


  @override Widget build (BuildContext context) {

    return (

      Column (
        spacing: 8 * 1.5,
        children: [
          SwitcherTitle (
            context.texts.windowArsenalBodySectionsDecentralizationTitle,
            value: false
          ),
          Instruction (context.texts.windowArsenalBodySectionsDecentralizationInstruction)
        ]
      )

    );

  }

}