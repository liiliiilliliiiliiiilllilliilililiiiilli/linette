// Global widgets - Radio item

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:linette/app/theme/colors/colors.dart';
import 'package:linette/app/widgets/presser/presser.dart';
import 'package:linette/app/widgets/animatorpresser/animatorpresser.dart';



class RadioItem extends HookWidget {

  final String value;
  final bool isChosen;
  final void Function () onPress;
  final String title;
  final String subtitle;


  const RadioItem ({
    super.key,
    required this.value,
    required this.isChosen,
    required this.onPress,
    required this.title,
    required this.subtitle
  });


  @override Widget build (BuildContext context) {

    final isPressed = useState (false);


    void handleTap () {

      onPress ();

    }


    final Color colorInsides = isChosen
      ? context.colors.radioButtonInsidesChosen
      : context.colors.radioButtonInsidesNotChosen;

    final Color colorOutsides = isChosen
      ? context.colors.radioButtonOutsidesChosen
      : context.colors.radioButtonOutsidesNotChosen;


    return (

      Container (
        color: context.colors.transparent,
        padding: const EdgeInsets.symmetric (
          horizontal: 10
        ),
        child: Presser (
          isPressed: isPressed,
          handleTap: handleTap,
          child: AnimatorPresser (
            scaleRate: 0.9675,
            isPressed: isPressed,
            child: Row (
              spacing: 15,
              children: [
                Container (
                  decoration: BoxDecoration (
                    shape: BoxShape.circle,
                    color: context.colors.radioButtonBack,
                    border: Border.all (
                      width: 1.5,
                      color: colorOutsides
                    )
                  ),
                  child: Container (
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
                        fontFamily: 'Archivo',
                        fontWeight: FontWeight.w600,
                        fontSize: 15,
                        color: context.colors.windowMainText
                      )
                    ),
                    Text (
                      subtitle,
                      style: TextStyle (
                        fontFamily: 'Archivo',
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

    );

  }

}