// Arsenal window - Platform content

import 'package:flutter/material.dart';
import 'package:linette/app/modules/texts/texts.dart';
import 'package:linette/app/windows/arsenal/widgets/content/widgets/sectionelements/title/title.dart';
import 'package:linette/app/windows/arsenal/widgets/content/widgets/sectionelements/instruction/instruction.dart';



class Platform extends StatelessWidget {

  const Platform ({
    super.key
  });


  @override Widget build (BuildContext context) {

    return (

      Column (
        spacing: 8 * 1.5,
        children: [
          TitleComponent (
            context.texts.windowArsenalBodySectionsPlatformTitle,
            state: false
          ),
          Instruction (context.texts.windowArsenalBodySectionsPlatformInstruction)
        ]
      )

    );

  }

}