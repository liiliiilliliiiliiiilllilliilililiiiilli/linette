// Methods module - Freeze

import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:linette/app/providers/actionsfreeze/actionsfreeze.dart';
import 'package:linette/app/modules/methods/methods.dart';



extension FreezeExtension on AppMethods {

  void freeze (WidgetRef ref) {

    final ActionsFreezeNotifier actionsFreezeNotifier = ref.read (actionsFreezeProvider.notifier);


    actionsFreezeNotifier.freeze ();

  }

}