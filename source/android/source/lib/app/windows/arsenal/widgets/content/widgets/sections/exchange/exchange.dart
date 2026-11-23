// Arsenal window - Content - Exchange section

import 'package:flutter/material.dart';
import 'package:linette/app/modules/texts/texts.dart';

import '../../sectionelements/title/title.dart';
import '../../sectionelements/instruction/instruction.dart';



class Exchange extends StatelessWidget {

  const Exchange ({
    super.key
  });


  @override Widget build (BuildContext context) {

    return (

      Column (
        spacing: 8 * 1.5,
        children: [
          TitleComponent (
            context.texts.windowArsenalBodySectionsExchangeTitle,
            state: false
          ),
          Instruction (context.texts.windowArsenalBodySectionsExchangeInstruction)
        ]
      )

    );

  }

}