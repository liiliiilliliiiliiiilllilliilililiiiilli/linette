// Arsenal window - Content - Spam

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:linette/app/modules/texts/texts.dart';
import 'package:linette/app/widgets/window/widgets/body/widgets/switchertitle/switchertitle.dart';
import 'package:linette/app/widgets/window/widgets/body/widgets/instruction/instruction.dart';
import 'package:linette/app/widgets/window/widgets/body/widgets/separator/separator.dart';
import 'package:linette/app/widgets/window/widgets/body/widgets/action/action.dart';
import 'package:linette/app/widgets/window/widgets/body/widgets/action/widgets/choiceactivity/choiceactivity.dart';
import 'package:linette/app/widgets/window/widgets/body/widgets/action/widgets/choiceactivity/widgets/menu/widgets/choice/choice.dart';



class Spam extends HookWidget {

  const Spam ({
    super.key
  });


  @override Widget build (BuildContext context) {

    final OverlayPortalController action_1_PortalController = useMemoized (() => OverlayPortalController ());
    final OverlayPortalController action_2_PortalController = useMemoized (() => OverlayPortalController ());
    final OverlayPortalController action_3_PortalController = useMemoized (() => OverlayPortalController ());


    final List <String> action_1_Options = [
      context.texts.windowArsenalBodySectionsSpamAction_1_2_1,
      context.texts.windowArsenalBodySectionsSpamAction_1_2_2
    ];

    final List <String> action_2_Options = [
      context.texts.windowArsenalBodySectionsSpamAction_2_2_1,
      context.texts.windowArsenalBodySectionsSpamAction_2_2_2
    ];

    final List <String> action_3_Options = [
      context.texts.windowArsenalBodySectionsSpamAction_3_2_1,
      context.texts.windowArsenalBodySectionsSpamAction_3_2_2
    ];


    final ValueNotifier <int> action_1_SelectedOption = useState (0);
    final ValueNotifier <int> action_2_SelectedOption = useState (0);
    final ValueNotifier <int> action_3_SelectedOption = useState (0);


    void action_1_OnPress () async {

      await Future.delayed (const Duration (milliseconds: 80));

      action_1_PortalController.show ();

    }

    void action_2_OnPress () async {

      await Future.delayed (const Duration (milliseconds: 80));

      action_2_PortalController.show ();

    }

    void action_3_OnPress () async {

      await Future.delayed (const Duration (milliseconds: 80));

      action_3_PortalController.show ();

    }


    return (

      Column (
        spacing: 8 * 1.5,
        children: [
          SwitcherTitle (
            context.texts.windowArsenalBodySectionsSpamTitle,
            value: false
          ),
          Instruction (context.texts.windowArsenalBodySectionsSpamInstruction),
          const Padding (
            padding: EdgeInsets.symmetric (
              vertical: 8
            ),
            child: Separator ()
          ),
          Column (
            spacing: 8 * 2.75,
            children: [
              ActionComponent (
                context.texts.windowArsenalBodySectionsSpamAction_1_1,
                onPress: action_1_OnPress,
                activity: ChoiceActivity (
                  action_1_Options [action_1_SelectedOption.value],
                  controller: action_1_PortalController,
                  choices: [
                    for (int index = 0; index < action_1_Options.length; index ++) ... [
                      Choice (
                        action_1_Options [index],
                        onPress: () async {
                          await Future.delayed (const Duration (milliseconds: 80));
                          action_1_SelectedOption.value = index;
                          action_1_PortalController.hide ();
                        },
                        isChosen: (index == action_1_SelectedOption.value)
                      )
                    ]
                  ]
                )
              ),
              ActionComponent (
                context.texts.windowArsenalBodySectionsSpamAction_2_1,
                onPress: action_2_OnPress,
                activity: ChoiceActivity (
                  action_2_Options [action_2_SelectedOption.value],
                  controller: action_2_PortalController,
                  choices: [
                    for (int index = 0; index < action_2_Options.length; index ++) ... [
                      Choice (
                        action_2_Options [index],
                        onPress: () async {
                          await Future.delayed (const Duration (milliseconds: 80));
                          action_2_SelectedOption.value = index;
                          action_2_PortalController.hide ();
                        },
                        isChosen: (index == action_2_SelectedOption.value)
                      )
                    ]
                  ]
                )
              ),
              ActionComponent (
                context.texts.windowArsenalBodySectionsSpamAction_3_1,
                onPress: action_3_OnPress,
                activity: ChoiceActivity (
                  action_3_Options [action_3_SelectedOption.value],
                  controller: action_3_PortalController,
                  choices: [
                    for (int index = 0; index < action_3_Options.length; index ++) ... [
                      Choice (
                        action_3_Options [index],
                        onPress: () async {
                          await Future.delayed (const Duration (milliseconds: 80));
                          action_3_SelectedOption.value = index;
                          action_3_PortalController.hide ();
                        },
                        isChosen: (index == action_3_SelectedOption.value)
                      )
                    ]
                  ]
                )
              )
            ]
          )
        ]
      )

    );

  }

}