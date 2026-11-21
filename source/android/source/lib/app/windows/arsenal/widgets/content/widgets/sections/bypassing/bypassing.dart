// Arsenal window - Bypassing content

import 'package:flutter/material.dart';
import 'package:linette/app/modules/texts/texts.dart';
import 'package:linette/app/windows/arsenal/widgets/content/widgets/sectionelements/action/models/type/type.dart';
import 'package:linette/app/windows/arsenal/widgets/content/widgets/sectionelements/title/title.dart';
import 'package:linette/app/windows/arsenal/widgets/content/widgets/sectionelements/instruction/instruction.dart';
import 'package:linette/app/windows/arsenal/widgets/content/widgets/sectionelements/separator/separator.dart';
import 'package:linette/app/windows/arsenal/widgets/content/widgets/sectionelements/action/action.dart';



class Bypassing extends StatelessWidget {

  const Bypassing ({
    super.key
  });


  @override Widget build (BuildContext context) {

    return (

      Column (
        spacing: 8 * 1.5,
        children: [
          TitleComponent (
            context.texts.windowArsenalBodySectionsBypassingTitle,
            state: false
          ),
          Instruction (context.texts.windowArsenalBodySectionsBypassingInstruction),
          const Separator (),
          Column (
            spacing: 8 * 2.75,
            children: [
              ActionComponent (
                context.texts.windowArsenalBodySectionsBypassingAction_1,
                type: ActionType.transition
              ),
              ActionComponent (
                context.texts.windowArsenalBodySectionsBypassingAction_2,
                type: ActionType.link
              ),
              ActionComponent (
                context.texts.windowArsenalBodySectionsBypassingAction_3,
                type: ActionType.link
              ),
              ActionComponent (
                context.texts.windowArsenalBodySectionsBypassingAction_4,
                type: ActionType.switcher
              ),
              ActionComponent (
                context.texts.windowArsenalBodySectionsBypassingAction_5,
                type: ActionType.switcher
              )
            ]
          )
        ]
      )

    );

  }

}