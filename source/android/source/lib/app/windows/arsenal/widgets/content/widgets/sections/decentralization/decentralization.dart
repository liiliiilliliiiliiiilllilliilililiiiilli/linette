// Arsenal window - Decentralization content

import 'package:flutter/material.dart';
import 'package:linette/app/modules/texts/texts.dart';
import 'package:linette/app/windows/arsenal/widgets/content/widgets/sectionelements/title/title.dart';
import 'package:linette/app/windows/arsenal/widgets/content/widgets/sectionelements/instruction/instruction.dart';
import 'package:linette/app/windows/arsenal/widgets/content/widgets/sectionelements/separator/separator.dart';



class Decentralization extends StatelessWidget {

  const Decentralization ({
    super.key
  });


  @override Widget build (BuildContext context) {

    return (

      Column (
        children: [
          TitleComponent (
            context.texts.windowArsenalBodySectionsDecentralizationTitle,
            state: false
          ),
          Instruction (context.texts.windowArsenalBodySectionsDecentralizationInstruction),
          const Separator ()
        ]
      )

    );

  }

}