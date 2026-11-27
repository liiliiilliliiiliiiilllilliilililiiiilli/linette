// Arsenal window - Content - Exchange

import 'package:flutter/material.dart';
import 'package:linette/app/modules/texts/texts.dart';
import 'package:linette/app/widgets/window/widgets/body/widgets/switchtitle/switchtitle.dart';
import 'package:linette/app/widgets/window/widgets/body/widgets/instruction/instruction.dart';



class Exchange extends StatelessWidget {

  const Exchange ({
    super.key
  });


  @override Widget build (BuildContext context) {

    return (

      Column (
        spacing: 8 * 1.5,
        children: [
          SwitchTitle (
            context.texts.windowArsenalBodySectionsExchangeTitle,
            switchValue: false
          ),
          Instruction (context.texts.windowArsenalBodySectionsExchangeInstruction)
        ]
      )

    );

  }

}