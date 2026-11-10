// Text button global widget

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/svg.dart';
import 'package:linette/app/modules/colors/colors.dart';
import 'package:linette/app/modules/fonts/fonts.dart';
import 'package:linette/app/widgets/presser/presser.dart';
import 'package:linette/app/widgets/presseranimator/presseranimator.dart';
import 'models/icons/icons.dart';



class TextButtonComponent extends HookWidget {

  final void Function () onPress;
  final String text;
  final TextButtonIcons? icons;


  const TextButtonComponent ({
    super.key,
    required this.onPress,
    required this.text,
    this.icons
  });


  @override Widget build (BuildContext context) {

    final ValueNotifier <bool> isPressed = useState (false);


    return (

      Presser (
        onPress: onPress,
        isPressed: isPressed,
        child: Padding (
          padding: const EdgeInsets.all (8),
          child: PresserAnimator (
            isPressed: isPressed,
            scaleRate: 0.97,
            child: Row (
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              spacing: 8,
              children: [
                if (icons case final icons?) ... [
                  if (icons.left case final iconsLeft?) ... [
                    Transform.translate (
                      offset: iconsLeft.offset,
                      child: Transform.rotate (
                        angle: iconsLeft.angle,
                        child: SvgPicture.asset (
                          iconsLeft.asset,
                          width: iconsLeft.size,
                          height: iconsLeft.size,
                          colorFilter: ColorFilter.mode (
                            context.colors.textButton,
                            BlendMode.srcIn
                          )
                        )
                      )
                    )
                  ]
                ],
                Container (
                  alignment: Alignment.center,
                  height: 25,
                  child: Text (
                    text,
                    style: TextStyle (
                      fontFamily: context.fonts.archivo,
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                      color: context.colors.textButton
                    )
                  )
                ),
                if (icons case final icons?) ... [
                  if (icons.right case final iconsRight?) ... [
                    Transform.translate (
                      offset: iconsRight.offset,
                      child: Transform.rotate (
                        angle: iconsRight.angle,
                        child: SvgPicture.asset (
                          iconsRight.asset,
                          width: iconsRight.size,
                          height: iconsRight.size,
                          colorFilter: ColorFilter.mode (
                            context.colors.textButton,
                            BlendMode.srcIn
                          )
                        )
                      )
                    )
                  ]
                ]
              ]
            )
          )
        )
      )

    );

  }

}