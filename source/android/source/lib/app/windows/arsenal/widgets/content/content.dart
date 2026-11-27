// Arsenal window - Content

import 'package:flutter/material.dart';
import 'widgets/bypassing/bypassing.dart';
import 'widgets/platform/platform.dart';
import 'widgets/exchange/exchange.dart';
import 'widgets/decentralization/decentralization.dart';
import 'widgets/spam/spam.dart';
import '../../models/tab/tab.dart';



class Content extends StatelessWidget {

  final ValueNotifier <ArsenalWindowTab> tab;
  final EdgeInsets padding;


  const Content ({
    super.key,
    required this.tab,
    required this.padding
  });


  @override Widget build (BuildContext context) {

    final Widget section = switch (tab.value) {

      ArsenalWindowTab.bypassing => const Bypassing (),
      ArsenalWindowTab.platform => const Platform (),
      ArsenalWindowTab.exchange => const Exchange (),
      ArsenalWindowTab.decentralization => const Decentralization (),
      ArsenalWindowTab.spam => const Spam ()

    };


    return (

      Padding (
        padding: padding,
        child: section
      )

    );

  }

}