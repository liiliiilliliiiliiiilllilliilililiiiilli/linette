// Arsenal window - Content - Decentralization section

import 'package:flutter/material.dart';
import 'package:linette/app/modules/texts/texts.dart';
import 'package:linette/app/windows/arsenal/widgets/content/widgets/sectionelements/title/title.dart';
import 'package:linette/app/windows/arsenal/widgets/content/widgets/sectionelements/instruction/instruction.dart';



class Decentralization extends StatelessWidget {

  const Decentralization ({
    super.key
  });


  @override Widget build (BuildContext context) {

    return (

      Column (
        spacing: 8 * 1.5,
        children: [
          TitleComponent (
            context.texts.windowArsenalBodySectionsDecentralizationTitle,
            state: false
          ),
          Instruction (context.texts.windowArsenalBodySectionsDecentralizationInstruction)
        ]
      )

    );

  }

}