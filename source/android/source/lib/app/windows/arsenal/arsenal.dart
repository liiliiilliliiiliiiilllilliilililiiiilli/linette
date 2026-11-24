// Arsenal window

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:linette/app/modules/methods/methods.dart';
import 'package:linette/app/modules/texts/texts.dart';
import 'package:linette/app/widgets/window/window.dart';
import 'package:linette/app/widgets/window/widgets/bottom/models/action/action.dart';
import 'widgets/tabs/tabs.dart';
import 'widgets/content/content.dart';
import 'models/position/position.dart';



class ArsenalWindow extends HookConsumerWidget {

  const ArsenalWindow ({
    super.key
  });


  @override Widget build (BuildContext context, WidgetRef ref) {

    final ValueNotifier <ArsenalWindowPosition> position = useState (ArsenalWindowPosition.bypassing);


    void actionRightOnPress () {

      context.methods.freeze (ref);

      context.methods.navigateBack (context);

    }


    return (

      Window (
        width: 340,
        isExpanded: true,
        title: context.texts.windowArsenalTitle,
        body: SingleChildScrollView (
          padding: const EdgeInsets.only (
            top: 14,
            left: 2,
            right: 2,
            bottom: 14
          ),
          child: Column (
            spacing: 8 * 2,
            children: [
              Tabs (
                position: position,
                padding: const EdgeInsets.symmetric (
                  horizontal: 20 - 2
                )
              ),
              Content (
                position: position,
                padding: const EdgeInsets.symmetric (
                  horizontal: 20 - 2
                )
              )
            ]
          )
        ),
        actionRight: ActionModel (
          context.texts.windowArsenalAction,
          onPress: actionRightOnPress,
          color: ActionColorModel.green
        )
      )

    );

  }

}