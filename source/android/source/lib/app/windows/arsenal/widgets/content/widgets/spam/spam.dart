// Arsenal window - Content - Spam

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:linette/app/modules/methods/methods.dart';
import 'package:linette/app/modules/texts/texts.dart';
import 'package:linette/app/menus/choose/choose.dart';
import 'package:linette/app/menus/choose/widgets/choice/choice.dart';
import 'package:linette/app/widgets/window/widgets/body/widgets/switchtitle/switchtitle.dart';
import 'package:linette/app/widgets/window/widgets/body/widgets/instruction/instruction.dart';
import 'package:linette/app/widgets/window/widgets/body/widgets/separator/separator.dart';
import 'package:linette/app/widgets/window/widgets/body/widgets/action/action.dart';
import 'package:linette/app/widgets/window/widgets/body/widgets/action/widgets/choiceactivity/choiceactivity.dart';



class Spam extends HookConsumerWidget {

  const Spam ({
    super.key
  });


  @override Widget build (BuildContext context, WidgetRef ref) {

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


    final GlobalKey action_1_Key = useMemoized (() => GlobalKey ());
    final GlobalKey action_2_Key = useMemoized (() => GlobalKey ());
    final GlobalKey action_3_Key = useMemoized (() => GlobalKey ());


    Future <void> onPressChoice (ValueNotifier <int> selectedOption, int index) async {

      await Future.delayed (const Duration (milliseconds: 80));


      selectedOption.value = index;


      if (context.mounted) {

        context.methods.navigateBack (context);

      }

    }


    Future <void> onPressAction (GlobalKey key, List <String> options, ValueNotifier <int> selectedOption) async {

      final BuildContext? activityContext = key.currentContext;

      if (activityContext == null) {

        return;

      }


      await Future.delayed (const Duration (milliseconds: 80));


      if (!activityContext.mounted) {

        return;

      }


      await activityContext.methods.openMenu (
        activityContext,
        ref,
        menu: Choose (
          choices: [
            for (int index = 0; index < options.length; index ++) ... [
              Choice (
                options [index],
                onPress: () => onPressChoice (selectedOption, index),
                isChosen: index == selectedOption.value
              )
            ]
          ]
        ),
        offsetStartPoint: Alignment.topRight
      );

    }


    return (

      Column (
        spacing: 8 * 1.5,
        children: [
          SwitchTitle (
            context.texts.windowArsenalBodySectionsSpamTitle,
            switchValue: false
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
                onPress: () => onPressAction (action_1_Key, action_1_Options, action_1_SelectedOption),
                activity: ChoiceActivity (
                  action_1_Options [action_1_SelectedOption.value],
                  key: action_1_Key,
                  choices: [
                    for (int index = 0; index < action_1_Options.length; index ++) ... [
                      Choice (
                        action_1_Options [index],
                        onPress: () => onPressChoice (action_1_SelectedOption, index),
                        isChosen: index == action_1_SelectedOption.value
                      )
                    ]
                  ]
                )
              ),
              ActionComponent (
                context.texts.windowArsenalBodySectionsSpamAction_2_1,
                onPress: () => onPressAction (action_2_Key, action_2_Options, action_2_SelectedOption),
                activity: ChoiceActivity (
                  action_2_Options [action_2_SelectedOption.value],
                  key: action_2_Key,
                  choices: [
                    for (int index = 0; index < action_2_Options.length; index ++) ... [
                      Choice (
                        action_2_Options [index],
                        onPress: () => onPressChoice (action_2_SelectedOption, index),
                        isChosen: index == action_2_SelectedOption.value
                      )
                    ]
                  ]
                )
              ),
              ActionComponent (
                context.texts.windowArsenalBodySectionsSpamAction_3_1,
                onPress: () => onPressAction (action_3_Key, action_3_Options, action_3_SelectedOption),
                activity: ChoiceActivity (
                  action_3_Options [action_3_SelectedOption.value],
                  key: action_3_Key,
                  choices: [
                    for (int index = 0; index < action_3_Options.length; index ++) ... [
                      Choice (
                        action_3_Options [index],
                        onPress: () => onPressChoice (action_3_SelectedOption, index),
                        isChosen: index == action_3_SelectedOption.value
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