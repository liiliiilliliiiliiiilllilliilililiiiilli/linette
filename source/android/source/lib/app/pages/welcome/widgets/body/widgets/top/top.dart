// Welcome page - Body - Top

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:linette/app/modules/colors/colors.dart';
import 'package:linette/app/modules/fonts/fonts.dart';
import 'package:linette/app/modules/texts/texts.dart';



class Top extends HookWidget {

  const Top ({
    super.key
  });


  @override Widget build (BuildContext context) {

    const double common = 7.5;
    const double speed = 1.25;
    const double periodicity = 1.5;

    const double glowWidth = 0.32;


    final animationController = useAnimationController(
      duration: Duration (seconds: (common * 4 / speed / periodicity).toInt ()),
      initialValue: 0.32
    )..repeat();

    final double animationValue = useAnimation (animationController);


    final double transformValue = (common * (1.0 - animationValue) * 2.5 * speed / periodicity) - 0.5;


    return (

      Column (
        children: [
          Text.rich (
            TextSpan (
              style: TextStyle (
                fontFamily: context.fonts.fredoka,
                fontWeight: FontWeight.w600,
                fontSize: 41
              ),
              children: [
                TextSpan (
                  text: context.texts.pageWelcomeBodyTopTitleDot,
                  style: TextStyle (
                    fontWeight: FontWeight.w500,
                    color: context.colors.prime
                  )
                ),
                WidgetSpan (
                  alignment: PlaceholderAlignment.middle,
                  child: ShaderMask (
                    blendMode: BlendMode.srcIn,
                    shaderCallback: (bounds) {

                      return (

                        LinearGradient(
                          begin: const Alignment (1.0, 0.0),
                          end: const Alignment (-1.0, 0.0),
                          stops: [
                            (transformValue - glowWidth).clamp (0.0, 1.0),
                            transformValue.clamp (0.0, 1.0),
                            (transformValue + glowWidth).clamp (0.0, 1.0)
                          ],
                          colors: [
                            context.colors.title,
                            context.colors.titleShadow,
                            context.colors.title
                          ]
                        ).createShader(bounds)

                      );

                    },
                    child: Text (
                      context.texts.pageWelcomeBodyTopTitle,
                      style: TextStyle (
                        fontFamily: context.fonts.fredoka,
                        fontWeight: FontWeight.w600,
                        fontSize: 41,
                        color: context.colors.title
                      )
                    )
                  )
                ),
                TextSpan (
                  text: context.texts.pageWelcomeBodyTopTitleDot,
                  style: TextStyle (
                    fontWeight: FontWeight.w500,
                    color: context.colors.prime
                  )
                )
              ]
            )
          ),
          Text (
            context.texts.pageWelcomeBodyTopSubtitle,
            style: TextStyle (
              fontFamily: context.fonts.archivo,
              fontWeight: FontWeight.w500,
              fontSize: 20,
              color: context.colors.title
            )
          )
        ]
      )

    );

  }

}