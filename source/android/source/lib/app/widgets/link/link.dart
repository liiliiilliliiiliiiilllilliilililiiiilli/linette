// Link global widget

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:linette/app/modules/colors/colors.dart';
import 'package:linette/app/widgets/presser/presser.dart';
import 'package:linette/app/widgets/presseranimator/presseranimator.dart';
import 'models/type/type.dart';
import 'models/icon/icon.dart';



class Link extends HookWidget {

  final String text;
  final LinkType type;
  final LinkIcon? iconRight;
  final void Function () onPress;


  const Link (
    this.text, {
    super.key,
    required this.type,
    this.iconRight,
    required this.onPress
  });


  @override Widget build (BuildContext context) {

    final ValueNotifier <bool> isPressed = useState (false);


    final double scaleRate;
    final FontWeight fontWeight;
    final double fontSize;
    final Color color;


    switch (type) {

      case LinkType.internal:

        scaleRate = 0.9725;
        fontWeight = FontWeight.w500;
        fontSize = 15.5;
        color = context.colors.linkInternal;

        break;

      case LinkType.external:

        scaleRate = 0.985;
        fontWeight = FontWeight.w400;
        fontSize = 16;
        color = context.colors.linkExternal;

        break;

    }


    return (

      Presser (
        onPress: onPress,
        isPressed: isPressed,
        child: PresserAnimator (
          isPressed: isPressed,
          scaleRate: scaleRate,
          child: Row (
            mainAxisSize: MainAxisSize.min,
            spacing: 8,
            children: [
              Text (
                text,
                style: TextStyle (
                  fontWeight: fontWeight,
                  fontSize: fontSize,
                  color: color
                )
              ),
              if (iconRight case final iconRight?) ... [
                Transform.translate (
                  offset: iconRight.offset,
                  child: Transform.rotate (
                    angle: iconRight.angle,
                    child: SvgPicture.asset (
                      iconRight.asset,
                      width: iconRight.size,
                      height: iconRight.size,
                      colorFilter: ColorFilter.mode (
                        color,
                        BlendMode.srcIn
                      )
                    )
                  )
                )
              ]
            ]
          )
        )
      )

    );

  }

}