// Controller menu - Controllers - Controller

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/svg.dart';
import 'package:linette/app/modules/colors/colors.dart';
import 'package:linette/app/modules/icons/icons.dart';
import 'package:linette/app/widgets/presser/presser.dart';
import 'package:linette/app/widgets/presseranimator/presseranimator.dart';
import 'package:linette/app/widgets/switch/switch.dart';



class Controller extends HookWidget {

  final String text;
  final void Function () onPress;
  final bool switchValue;


  const Controller (
    this.text, {
    super.key,
    required this.onPress,
    required this.switchValue
  });


  @override Widget build (BuildContext context) {

    final ValueNotifier <bool> isPressed = useState (false);

    final ValueNotifier <bool> switchState = useState (switchValue);


    void switchOnChanged (bool change) {

      switchState.value = !switchState.value;

    }


    return (

      Row (
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded (
            child: Presser (
              onPress: onPress,
              isPressed: isPressed,
              child: PresserAnimator (
                isPressed: isPressed,
                scaleRate: 0.975,
                child: Row (
                  spacing: 12,
                  children: [
                    SvgPicture.asset (
                      context.icons.windowControllerMenuControllerLeft,
                      width: 17,
                      height: 17,
                      colorFilter: ColorFilter.mode (
                        context.colors.windowBodyTextIcon,
                        BlendMode.srcIn
                      )
                    ),
                    Text (
                      text,
                      style: TextStyle (
                        fontWeight: FontWeight.w500,
                        fontSize: 15.5,
                        color: context.colors.windowBodyText
                      )
                    )
                  ]
                )
              )
            )
          ),
          Row (
            spacing: 12,
            children: [
              Container (
                width: 2,
                height: 12.5,
                decoration: BoxDecoration (
                  borderRadius: BorderRadius.circular (100),
                  color: context.colors.windowBodySeparator
                )
              ),
              SwitchComponent (
                value: switchState.value,
                onChanged: switchOnChanged
              )
            ]
          )
        ]
      )

    );

  }

}