// Controller menu window - Controllers

import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:linette/app/modules/methods/methods.dart';
import 'package:linette/app/modules/texts/texts.dart';
import 'package:linette/app/windows/arsenal/arsenal.dart';
import 'package:linette/app/windows/arsenal/models/tab/tab.dart';
import 'widgets/controller/controller.dart';



class Controllers extends ConsumerWidget {

  const Controllers ({
    super.key
  });


  @override Widget build (BuildContext context, WidgetRef ref) {

    Future <void> switchToArsenalWindow (ArsenalWindowTab tab) async {

      final BuildContext contextRoot = Navigator.of (context, rootNavigator: true).context;


      context.methods.navigateBack (context);


      await contextRoot.methods.openWindow (
        contextRoot,
        ref,
        window: ArsenalWindow (
          tab: tab
        )
      );

    }


    return (

      Column (
        spacing: 12,
        children: [
          Controller (
            context.texts.windowControllerMenuController_1,
            onPress: () => switchToArsenalWindow (ArsenalWindowTab.bypassing),
            switchValue: true
          ),
          Controller (
            context.texts.windowControllerMenuController_2,
            onPress: () => switchToArsenalWindow (ArsenalWindowTab.platform),
            switchValue: true
          ),
          Controller (
            context.texts.windowControllerMenuController_3,
            onPress: () => switchToArsenalWindow (ArsenalWindowTab.exchange),
            switchValue: false
          ),
          Controller (
            context.texts.windowControllerMenuController_4,
            onPress: () => switchToArsenalWindow (ArsenalWindowTab.decentralization),
            switchValue: false
          ),
          Controller (
            context.texts.windowControllerMenuController_5,
            onPress: () => switchToArsenalWindow (ArsenalWindowTab.spam),
            switchValue: false
          )
        ]
      )

    );

  }

}