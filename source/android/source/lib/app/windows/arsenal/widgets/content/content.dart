// Arsenal window - Content

import 'package:flutter/material.dart';
import 'widgets/bypassing/bypassing.dart';
import 'widgets/platform/platform.dart';
import 'widgets/exchange/exchange.dart';
import 'widgets/decentralization/decentralization.dart';
import 'widgets/spam/spam.dart';
import '../../models/position/position.dart';



class Content extends StatelessWidget {

  final ValueNotifier <ArsenalWindowPosition> position;


  const Content ({
    super.key,
    required this.position
  });


  @override Widget build (BuildContext context) {

    final Widget section = switch (position.value) {
      ArsenalWindowPosition.bypassing => const Bypassing (),
      ArsenalWindowPosition.platform => const Platform (),
      ArsenalWindowPosition.exchange => const Exchange (),
      ArsenalWindowPosition.decentralization => const Decentralization (),
      ArsenalWindowPosition.spam => const Spam ()
    };


    return (

      Container (
        child: section
      )

    );

  }

}