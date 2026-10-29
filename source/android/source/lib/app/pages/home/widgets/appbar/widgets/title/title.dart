// Home page - App bar - Title

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:linette/app/modules/colors/colors.dart';
import 'package:linette/app/modules/fonts/fonts.dart';
import 'package:linette/app/modules/texts/texts.dart';



class TitleComponent extends HookWidget {

  const TitleComponent ({
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

      IntrinsicWidth (
        child: Column (
          mainAxisSize: MainAxisSize.min,
          children: [
            ShaderMask (
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
                context.texts.pageHomeAppBar,
                style: TextStyle (
                  fontFamily: context.fonts.fredoka,
                  fontWeight: FontWeight.w600,
                  fontSize: 25,
                  color: context.colors.title
                )
              )
            ),
            Container (
              height: 2.75,
              decoration: BoxDecoration (
                borderRadius: BorderRadius.circular (100),
                color: context.colors.prime
              )
            )
          ]
        )
      )

    );

  }

}