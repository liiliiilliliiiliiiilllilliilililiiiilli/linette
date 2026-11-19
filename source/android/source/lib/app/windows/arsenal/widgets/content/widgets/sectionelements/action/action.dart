// Arsenal window - Content - Action

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/svg.dart';
import 'package:linette/app/modules/colors/colors.dart';
import 'package:linette/app/modules/fonts/fonts.dart';
import 'package:linette/app/modules/icons/icons.dart';
import 'package:linette/app/modules/texts/texts.dart';
import 'package:linette/app/widgets/presser/presser.dart';
import 'package:linette/app/widgets/presseranimator/presseranimator.dart';
import 'models/type/type.dart';



class ActionComponent extends HookWidget {

  final String text;
  final ActionType type;


  const ActionComponent (
    this.text, {
    super.key,
    required this.type
  });


  @override Widget build (BuildContext context) {

    final isPressed = useState (false);


    void onPress () {



    }


    Widget transitionOption () {

      return (

        SvgPicture.asset (
          context.icons.buttonConnect,
          width: 256,
          height: 256,
          colorFilter: ColorFilter.mode (
            context.colors.buttonConnectIcon,
            BlendMode.srcIn
          )
        )

      );

    }

    Widget linkOption () {

      return (

        SvgPicture.asset (
          context.icons.buttonConnect,
          width: 256,
          height: 256,
          colorFilter: ColorFilter.mode (
            context.colors.buttonConnectIcon,
            BlendMode.srcIn
          )
        )

      );

    }

    Widget choiceOption () {

      return (

        Row (
          children: [
            Text (
              context.texts.pageHomeBodyCenterGoNetherlands,
              style: TextStyle (
                fontFamily: context.fonts.archivo,
                fontWeight: FontWeight.w600,
                fontSize: 17.5,
                height: 1,
                color: context.colors.buttonChooseConnection
              )
            ),
            SvgPicture.asset (
              context.icons.buttonConnect,
              width: 256,
              height: 256,
              colorFilter: ColorFilter.mode (
                context.colors.buttonConnectIcon,
                BlendMode.srcIn
              )
            )
          ]
        )

      );

    }

    Widget switcherOption () {

      final ValueNotifier <bool> state = useState (false);


      void onChanged (bool change) {

        state.value = !state.value;

      }


      return (

        Switch (
          value: state.value,
          onChanged: onChanged
        )

      );

    }


    final Widget rightItem = switch (type) {

      ActionType.transition => transitionOption (),
      ActionType.link => linkOption (),
      ActionType.choice => choiceOption (),
      ActionType.switcher => switcherOption ()

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
            children: [
              Text (
                text,
                style: TextStyle (
                  fontFamily: context.fonts.archivo,
                  fontWeight: FontWeight.w500,
                  fontSize: 15.5,
                  color: context.colors.windowBodyActionRegular
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