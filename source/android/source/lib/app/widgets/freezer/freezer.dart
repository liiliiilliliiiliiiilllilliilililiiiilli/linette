// Freezer global widget

import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:linette/app/providers/actionsfreeze/actionsfreeze.dart';



class Freezer extends ConsumerWidget {

  final Widget child;


  const Freezer ({
    super.key,
    required this.child
  });


  @override Widget build (BuildContext context, WidgetRef ref) {

    final bool actionsFreezeState = ref.watch (actionsFreezeProvider);


    return (

      AbsorbPointer (
        absorbing: actionsFreezeState,
        child: child
      )

    );

  }

}