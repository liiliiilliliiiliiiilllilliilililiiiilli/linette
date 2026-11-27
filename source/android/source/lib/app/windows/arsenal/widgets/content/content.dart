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
  final EdgeInsets padding;


  const Content ({
    super.key,
    required this.position,
    required this.padding
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

      Padding (
        padding: padding,
        child: section
      )

    );

  }

}