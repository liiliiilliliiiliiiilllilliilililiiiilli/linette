// Actions freeze state provider

import 'dart:async';
import 'package:hooks_riverpod/hooks_riverpod.dart';



final AsyncNotifierProvider <ActionsFreezeNotifier, bool> actionsFreezeProvider = AsyncNotifierProvider (ActionsFreezeNotifier.new);



class ActionsFreezeNotifier extends AsyncNotifier <bool> {

  Timer? timer;


  @override Future <bool> build () async {

    state = const AsyncValue.data (false);


    return false;

  }


  Future <void> freeze ({int duration = 71}) async {

    timer?.cancel ();  // Сбрасывание предыдущего таймера, если он присутствовал


    state = const AsyncValue.data (true);

    timer = Timer (Duration (milliseconds: duration), () {

      state = const AsyncValue.data (false);

    });

  }

}