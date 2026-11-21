// Arsenal window - Spam content

import 'package:flutter/material.dart';
import 'package:linette/app/modules/texts/texts.dart';
import 'package:linette/app/windows/arsenal/widgets/content/widgets/sectionelements/action/models/type/type.dart';
import 'package:linette/app/windows/arsenal/widgets/content/widgets/sectionelements/title/title.dart';
import 'package:linette/app/windows/arsenal/widgets/content/widgets/sectionelements/instruction/instruction.dart';
import 'package:linette/app/windows/arsenal/widgets/content/widgets/sectionelements/separator/separator.dart';
import 'package:linette/app/windows/arsenal/widgets/content/widgets/sectionelements/action/action.dart';



class Spam extends StatelessWidget {

  const Spam ({
    super.key
  });


  @override Widget build (BuildContext context) {

    return (

      Column (
        spacing: 8 * 1.5,
        children: [
          TitleComponent (
            context.texts.windowArsenalBodySectionsSpamTitle,
            state: false
          ),
          Instruction (context.texts.windowArsenalBodySectionsSpamInstruction),
          const Separator (),
          Column (
            spacing: 8 * 2.75,
            children: [
              ActionComponent (
                context.texts.windowArsenalBodySectionsSpamAction_1_1,
                textValue: context.texts.windowArsenalBodySectionsSpamAction_1_2,
                type: ActionType.choice
              ),
              ActionComponent (
                context.texts.windowArsenalBodySectionsSpamAction_2_1,
                textValue: context.texts.windowArsenalBodySectionsSpamAction_2_2,
                type: ActionType.choice
              ),
              ActionComponent (
                context.texts.windowArsenalBodySectionsSpamAction_3_1,
                textValue: context.texts.windowArsenalBodySectionsSpamAction_3_2,
                type: ActionType.choice
              )
            ]
          )
        ]
      )

    );

  }

}