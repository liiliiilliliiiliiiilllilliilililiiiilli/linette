// Radio item global widget

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:linette/app/modules/colors/colors.dart';
import 'package:linette/app/modules/fonts/fonts.dart';
import 'package:linette/app/widgets/presser/presser.dart';
import 'package:linette/app/widgets/presseranimator/presseranimator.dart';



class RadioItem extends HookWidget {

  final void Function () onPress;
  final bool isChosen;
  final String value;
  final String title;
  final String subtitle;


  const RadioItem ({
    super.key,
    required this.onPress,
    required this.isChosen,
    required this.value,
    required this.title,
    required this.subtitle
  });


  @override Widget build (BuildContext context) {

    final ValueNotifier <bool> isPressed = useState (false);


    final Color colorInsides = isChosen
      ? context.colors.radioButtonInsidesChosen
      : context.colors.radioButtonInsidesNotChosen;

    final Color colorOutsides = isChosen
      ? context.colors.radioButtonOutsidesChosen
      : context.colors.radioButtonOutsidesNotChosen;


    return (

      Padding (
        padding: const EdgeInsets.symmetric (
          horizontal: 10 - 4
        ),
        child: Presser (
          onPress: onPress,
          isPressed: isPressed,
          child: Padding (
            padding: const EdgeInsets.all (4),
            child: PresserAnimator (
              isPressed: isPressed,
              scaleRate: 0.9675,
              child: Row (
                spacing: 15,
                children: [
                  Container (
                    decoration: BoxDecoration (
                      shape: BoxShape.circle,
                      border: Border.all (
                        width: 1.5,
                        color: colorOutsides
                      ),
                      color: context.colors.radioButtonBack
                    ),
                    child: Padding (
                      padding: const EdgeInsets.all (2.5),
                      child: Container (
                        width: 11,
                        height: 11,
                        decoration: BoxDecoration (
                          shape: BoxShape.circle,
                          color: colorInsides
                        )
                      )
                    )
                  ),
                  Column (
                    crossAxisAlignment: CrossAxisAlignment.start,
                    spacing: 5,
                    children: [
                      Text (
                        title,
                        style: TextStyle (
                          fontFamily: context.fonts.archivo,
                          fontWeight: FontWeight.w600,
                          fontSize: 15,
                          color: context.colors.windowMainText
                        )
                      ),
                      Text (
                        subtitle,
                        style: TextStyle (
                          fontFamily: context.fonts.archivo,
                          fontWeight: FontWeight.w500,
                          fontSize: 15,
                          color: context.colors.windowMainText
                        )
                      )
                    ]
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