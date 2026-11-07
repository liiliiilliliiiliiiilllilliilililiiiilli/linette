// Home page

import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:linette/app/providers/actionsfreeze/actionsfreeze.dart';
import 'package:linette/app/modules/colors/colors.dart';
import 'widgets/appbar/appbar.dart';
import 'widgets/body/body.dart';
import 'widgets/drawer/drawer.dart';



class HomePage extends ConsumerWidget {

  const HomePage ({
    super.key
  });


  @override Widget build (BuildContext context, WidgetRef ref) {

    final bool actionsFreezeState = ref.watch (actionsFreezeProvider);
    final ActionsFreezeNotifier actionsFreezeNotifier = ref.watch (actionsFreezeProvider.notifier);


    void onDrawerChanged (bool isOpened) {

      actionsFreezeNotifier.freeze ();

    }


    return (

      AbsorbPointer (
        absorbing: actionsFreezeState,
        child: ClipRect (
          child: Scaffold (
            appBar: const AppBarComponent (),
            body: const BodyComponent (),
            drawer: const DrawerComponent (),
            onDrawerChanged: onDrawerChanged,
            drawerEnableOpenDragGesture: false,
            backgroundColor: context.colors.backPrime
          )
        )
      )

    );

  }

}