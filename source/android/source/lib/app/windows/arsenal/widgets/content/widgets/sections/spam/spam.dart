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
        children: [
          TitleComponent (
            context.texts.windowArsenalBodySectionsSpamTitle,
            state: false
          ),
          Instruction (context.texts.windowArsenalBodySectionsSpamInstruction),
          const Separator (),
          ActionComponent (
            context.texts.windowArsenalBodySectionsSpamAction_1,
            type: ActionType.transition
          ),
          ActionComponent (
            context.texts.windowArsenalBodySectionsSpamAction_2,
            type: ActionType.link
          ),
          ActionComponent (
            context.texts.windowArsenalBodySectionsSpamAction_3,
            type: ActionType.link
          )
        ]
      )

    );

  }

}