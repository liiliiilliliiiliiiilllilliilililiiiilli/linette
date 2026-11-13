// Accout window - Not entered - Hint - Text link

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:linette/app/modules/colors/colors.dart';
import 'package:linette/app/modules/fonts/fonts.dart';
import 'package:linette/app/modules/icons/icons.dart';
import 'package:linette/app/modules/texts/texts.dart';
import 'package:linette/app/widgets/presser/presser.dart';
import 'package:linette/app/widgets/presseranimator/presseranimator.dart';



class TextLink extends HookWidget {

  const TextLink ({
    super.key
  });


  @override Widget build (BuildContext context) {

    final ValueNotifier <bool> isPressed = useState (false);


    void onPress () {



    }


    return (

      Transform.translate (
        offset: const Offset ((8 + 15.5) / 2, 0),
        child: Presser (
          onPress: onPress,
          isPressed: isPressed,
          child: PresserAnimator (
            isPressed: isPressed,
            scaleRate: 0.9725,
            child: Row (
              mainAxisSize: MainAxisSize.min,
              spacing: 8,
              children: [
                Text (
                  context.texts.windowAccountNotEnteredBodyHint_2,
                  style: TextStyle (
                    fontFamily: context.fonts.archivo,
                    fontWeight: FontWeight.w500,
                    fontSize: 15.5,
                    color: context.colors.linkLocal
                  )
                ),
                SvgPicture.asset (
                  context.icons.linkEnter,
                  width: 15.5,
                  height: 15.5,
                  colorFilter: ColorFilter.mode (
                    context.colors.linkLocal,
                    BlendMode.srcIn
                  )
                )
              ]
            )
          )
        )
      )

    );

  }

}