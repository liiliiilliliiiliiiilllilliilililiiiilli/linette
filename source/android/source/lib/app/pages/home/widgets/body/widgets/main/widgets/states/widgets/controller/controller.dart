// Home page - Body - Main - States - Controller

import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:linette/app/modules/colors/colors.dart';
import 'package:linette/app/modules/methods/methods.dart';
import 'package:linette/app/menus/controller/controller.dart';
import 'package:linette/app/widgets/presser/presser.dart';
import 'package:linette/app/widgets/presseranimator/presseranimator.dart';
import 'widgets/dot/dot.dart';



class Controller extends HookConsumerWidget {

  const Controller ({
    super.key
  });


  @override Widget build (BuildContext context, WidgetRef ref) {

    final ValueNotifier <bool> isPressed = useState (false);


    Future <void> onPress () async {

      await context.methods.openMenu (
        context,
        ref,
        menu: const ControllerMenu (),
        targetAnchor: Alignment.topCenter,
        followerAnchor: Alignment.bottomCenter,
        offsetStartPoint: Alignment.bottomCenter,
        offset: const Offset (0, -15)
      );

    }


    return (

      Presser (
        onPress: onPress,
        isPressed: isPressed,
        child: PresserAnimator (
          isPressed: isPressed,
          scaleRate: 0.9625,
          child: Padding (
            padding: const EdgeInsets.all (8),
            child: ClipRRect (
              borderRadius: BorderRadius.circular (100),
              child: BackdropFilter (
                filter: ImageFilter.blur (
                  sigmaX: 150,
                  sigmaY: 150
                ),
                child: IntrinsicWidth (
                  child: Container (
                    alignment: Alignment.center,
                    height: 25,
                    padding: const EdgeInsets.all (4),
                    decoration: BoxDecoration (
                      border: Border.all (
                        width: 2,
                        color: context.colors.controllerBorder
                      ),
                      borderRadius: BorderRadius.circular (100),
                      color: context.colors.controllerBack
                    ),
                    child: Row (
                      mainAxisSize: MainAxisSize.min,
                      spacing: 4,
                      children: [
                        Dot (
                          isActive: true,
                          colorBorder: context.colors.controllerIndicatorBypassingBorder,
                          colorBackActive: context.colors.controllerIndicatorBypassingActiveBack,
                          colorBackNotActive: context.colors.controllerIndicatorBypassingNotActiveBack
                        ),
                        Dot (
                          isActive: true,
                          colorBorder: context.colors.controllerIndicatorPlatformBorder,
                          colorBackActive: context.colors.controllerIndicatorPlatformActiveBack,
                          colorBackNotActive: context.colors.controllerIndicatorPlatformNotActiveBack
                        ),
                        Dot (
                          isActive: true,
                          colorBorder: context.colors.controllerIndicatorExchangeBorder,
                          colorBackActive: context.colors.controllerIndicatorExchangeActiveBack,
                          colorBackNotActive: context.colors.controllerIndicatorExchangeNotActiveBack
                        ),
                        Dot (
                          isActive: true,
                          colorBorder: context.colors.controllerIndicatorDecentralizationBorder,
                          colorBackActive: context.colors.controllerIndicatorDecentralizationActiveBack,
                          colorBackNotActive: context.colors.controllerIndicatorDecentralizationNotActiveBack
                        ),
                        Dot (
                          isActive: true,
                          colorBorder: context.colors.controllerIndicatorSpamBorder,
                          colorBackActive: context.colors.controllerIndicatorSpamActiveBack,
                          colorBackNotActive: context.colors.controllerIndicatorSpamNotActiveBack
                        )
                      ]
                    )
                  )
                )
              )
            )
          )
        )
      )

    );

  }

}