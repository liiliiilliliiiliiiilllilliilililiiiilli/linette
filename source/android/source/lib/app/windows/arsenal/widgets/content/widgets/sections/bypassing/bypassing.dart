// Arsenal window - Content - Bypassing section

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:linette/app/modules/texts/texts.dart';

import '../../sectionelements/title/title.dart';
import '../../sectionelements/instruction/instruction.dart';
import '../../sectionelements/separator/separator.dart';
import '../../sectionelements/action/action.dart';
import '../../sectionelements/action/widgets/transitionactivity/transitionactivity.dart';
import '../../sectionelements/action/widgets/linkactivity/linkactivity.dart';
import '../../sectionelements/action/widgets/switchactivity/switchactivity.dart';



class Bypassing extends HookWidget {

  const Bypassing ({
    super.key
  });


  @override Widget build (BuildContext context) {

    final ValueNotifier <bool> action_4_SwitchValue = useState (false);

    final ValueNotifier <bool> action_5_SwitchValue = useState (false);


    void action_1_OnPress () {



    }

    void action_2_OnPress () {



    }

    void action_3_OnPress () {



    }

    void action_4_OnPress () {

      action_4_SwitchValue.value = !action_4_SwitchValue.value;

    }

    void action_5_OnPress () {

      action_5_SwitchValue.value = !action_5_SwitchValue.value;

    }


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
                onPress: action_1_OnPress,
                activity: const TransitionActivity ()
              ),
              ActionComponent (
                context.texts.windowArsenalBodySectionsBypassingAction_2,
                onPress: action_2_OnPress,
                activity: const LinkActivity ()
              ),
              ActionComponent (
                context.texts.windowArsenalBodySectionsBypassingAction_3,
                onPress: action_3_OnPress,
                activity: const LinkActivity ()
              ),
              ActionComponent (
                context.texts.windowArsenalBodySectionsBypassingAction_4,
                onPress: action_4_OnPress,
                activity: SwitchActivity (action_4_SwitchValue)
              ),
              ActionComponent (
                context.texts.windowArsenalBodySectionsBypassingAction_5,
                onPress: action_5_OnPress,
                activity: SwitchActivity (action_5_SwitchValue)
              )
            ]
          )
        ]
      )

    );

  }

}