// Home page - Body - Main - Connect - Choose connection button

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:linette/app/modules/colors/colors.dart';
import 'package:linette/app/modules/fonts/fonts.dart';
import 'package:linette/app/modules/icons/icons.dart';
import 'package:linette/app/modules/methods/methods.dart';
import 'package:linette/app/modules/texts/texts.dart';
import 'package:linette/app/widgets/presser/presser.dart';
import 'package:linette/app/widgets/presseranimator/presseranimator.dart';



class ChooseConnectionButton extends HookWidget {

  const ChooseConnectionButton ({
    super.key
  });


  @override Widget build (BuildContext context) {

    final ValueNotifier <bool> isPressed = useState (false);


    void onPress () {

      context.methods.navigateTo (context, '/connections');

    }


    return (

      Container (
        alignment: Alignment.center,
        height: 29 + 8 * 2,
        child: Presser (
          onPress: onPress,
          isPressed: isPressed,
          child: PresserAnimator (
            isPressed: isPressed,
            child: Padding (
              padding: const EdgeInsets.all (8),
              child: Row (
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                spacing: 8,
                children: [
                  SvgPicture.asset (
                    context.icons.location,
                    width: 17,
                    height: 17,
                    colorFilter: ColorFilter.mode (
                      context.colors.buttonChooseConnection,
                      BlendMode.srcIn
                    )
                  ),
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
                    context.icons.arrow,
                    width: 15,
                    height: 15,
                    colorFilter: ColorFilter.mode (
                      context.colors.buttonChooseConnection,
                      BlendMode.srcIn
                    )
                  )
                ]
              )
            )
          )
        )
      )

    );

  }

}