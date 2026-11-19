// Arsenal window - Content

import 'package:flutter/material.dart';
import 'package:linette/app/windows/arsenal/models/position/position.dart';
import 'widgets/sections/bypassing/bypassing.dart';
import 'widgets/sections/decentralization/decentralization.dart';
import 'widgets/sections/exchange/exchange.dart';
import 'widgets/sections/platform/platform.dart';
import 'widgets/sections/spam/spam.dart';



class Content extends StatelessWidget {

  final ValueNotifier <ArsenalWindowPosition> position;


  const Content ({
    required this.position,
    super.key
  });


  @override Widget build (BuildContext context) {

    final Widget section = switch (position.value) {
      ArsenalWindowPosition.bypassing => const Bypassing (),
      ArsenalWindowPosition.platform => const Decentralization (),
      ArsenalWindowPosition.exchange => const Exchange (),
      ArsenalWindowPosition.decentralization => const Platform (),
      ArsenalWindowPosition.spam => const Spam ()
    };


    return (

      Container (
        child: section
      )

    );

  }

}