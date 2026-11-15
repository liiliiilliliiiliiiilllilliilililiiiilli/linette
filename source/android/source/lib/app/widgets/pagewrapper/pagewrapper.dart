// Page wrapper global widget

import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:linette/app/providers/actionsfreeze/actionsfreeze.dart';



class PageWrapper extends ConsumerWidget {

  final Widget child;


  const PageWrapper ({
    super.key,
    required this.child
  });


  @override Widget build (BuildContext context, WidgetRef ref) {

    final bool? actionsFreezeState = ref.watch(actionsFreezeProvider).valueOrNull;


    return (

      AbsorbPointer (
        absorbing: actionsFreezeState ?? false,
        child: ClipRect (
          child: child
        )
      )

    );

  }

}