// Arsenal window - Content - Action

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:linette/app/modules/colors/colors.dart';
import 'package:linette/app/widgets/presser/presser.dart';
import 'package:linette/app/widgets/presseranimator/presseranimator.dart';
import 'widgets/transitionitem/transitionitem.dart';
import 'widgets/linkitem/linkitem.dart';
import 'widgets/choiceitem/choiceitem.dart';
import 'widgets/switcheritem/switcheritem.dart';
import 'models/type/type.dart';



class ActionComponent extends HookWidget {

  final String text;
  final String? textValue;
  final ActionType type;


  const ActionComponent (
    this.text, {
    super.key,
    this.textValue,
    required this.type
  });


  @override Widget build (BuildContext context) {

    final ValueNotifier <bool> isPressed = useState (false);

    final ValueNotifier <bool> value = useState (false);


    void onPress () {

      value.value = !value.value;

    }


    final Widget rightItem;


    switch (type) {

      case ActionType.transition: {

        rightItem = const TransitionItem ();

        break;

      }

      case ActionType.link: {

        rightItem = const LinkItem ();

        break;

      }

      case ActionType.choice: {

        rightItem = ChoiceItem (textValue ?? '');

        break;

      }

      case ActionType.switcher: {

        rightItem = IgnorePointer (
          child: SwitcherItem (
            value: value,
            onChanged: (bool change) {}
          )
        );

        break;

      }

    };


    return (

      Presser (
        onPress: onPress,
        isPressed: isPressed,
        child: PresserAnimator (
          isPressed: isPressed,
          scaleRate: 0.9775,
          child: Row (
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            spacing: 8,
            children: [
              Expanded (
                child: Text (
                  text,
                  style: TextStyle (
                    fontWeight: FontWeight.w500,
                    fontSize: 15.5,
                    color: context.colors.windowBodyActionRegular
                  )
                )
              ),
              rightItem
            ]
          )
        )
      )

    );

  }

}