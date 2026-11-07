// Connections page

import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:linette/app/providers/actionsfreeze/actionsfreeze.dart';
import 'package:linette/app/modules/colors/colors.dart';
import 'widgets/appbar/appbar.dart';
import 'widgets/body/body.dart';



class ConnectionsPage extends ConsumerWidget {

  const ConnectionsPage ({
    super.key
  });


  @override Widget build (BuildContext context, WidgetRef ref) {

    final bool actionsFreezeState = ref.watch (actionsFreezeProvider);


    return (

      AbsorbPointer (
        absorbing: actionsFreezeState,
        child: ClipRect (
          child: Scaffold (
            appBar: const AppBarComponent (),
            body: const BodyComponent (),
            backgroundColor: context.colors.backPrime
          )
        )
      )

    );

  }

}