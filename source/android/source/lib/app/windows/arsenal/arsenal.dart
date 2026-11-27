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
import 'models/tab/tab.dart';



class ArsenalWindow extends HookConsumerWidget {

  final ArsenalWindowTab tab;


  const ArsenalWindow ({
    this.tab = ArsenalWindowTab.bypassing,
    super.key
  });


  @override Widget build (BuildContext context, WidgetRef ref) {

    final ValueNotifier <ArsenalWindowTab> tabState = useState (tab);


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
          padding: const EdgeInsets.symmetric (
            horizontal: 2,
            vertical: 14
          ),
          child: Column (
            spacing: 8 * 2,
            children: [
              Tabs (
                tab: tabState,
                padding: const EdgeInsets.symmetric (
                  horizontal: 18
                )
              ),
              Content (
                tab: tabState,
                padding: const EdgeInsets.symmetric (
                  horizontal: 18
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