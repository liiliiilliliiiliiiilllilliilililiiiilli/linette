// Controller menu window - Controllers

import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:linette/app/modules/methods/methods.dart';
import 'package:linette/app/modules/texts/texts.dart';
import 'package:linette/app/windows/arsenal/arsenal.dart';
import 'widgets/controller/controller.dart';



class Controllers extends ConsumerWidget {

  const Controllers ({
    super.key
  });


  @override Widget build (BuildContext context, WidgetRef ref) {

    void navigateCallbackBefore () {

      context.methods.navigateBack (context);

    }

    Future <void> navigate (destination) async {

      await context.methods.openWindow (
        context,
        ref,
        window: destination,
        callbackBefore: navigateCallbackBefore
      );

    }


    return (

      Column (
        spacing: 12,
        children: [
          Controller (
            context.texts.windowControllerMenuController_1,
            onPress: () {navigate (const ArsenalWindow ());},
            value: true
          ),
          Controller (
            context.texts.windowControllerMenuController_2,
            onPress: () {navigate (const ArsenalWindow ());},
            value: true
          ),
          Controller (
            context.texts.windowControllerMenuController_3,
            onPress: () {navigate (const ArsenalWindow ());},
            value: false
          ),
          Controller (
            context.texts.windowControllerMenuController_4,
            onPress: () {navigate (const ArsenalWindow ());},
            value: false
          ),
          Controller (
            context.texts.windowControllerMenuController_5,
            onPress: () {navigate (const ArsenalWindow ());},
            value: false
          )
        ]
      )

    );

  }

}