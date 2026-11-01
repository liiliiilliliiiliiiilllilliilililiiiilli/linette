// Actions freeze state provider

import 'dart:async';
import 'package:hooks_riverpod/hooks_riverpod.dart';



final actionsFreezeProvider = NotifierProvider <ActionsFreezeNotifier, bool> (ActionsFreezeNotifier.new);



class ActionsFreezeNotifier extends Notifier <bool> {

  Timer? timer;


  @override bool build () {

    initState ();


    return false;

  }


  Future <void> initState () async {

    state = false;

  }


  Future <void> freeze ({int duration = 71}) async {

    timer?.cancel ();  // Сбрасывание предыдущего таймера, если он присутствовал

    state = true;

    timer = Timer (Duration (milliseconds: duration), () {

      state = false;

    });

  }

}