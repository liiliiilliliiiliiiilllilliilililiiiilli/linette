// Arsenal window - Tabs

import 'package:flutter/material.dart';
import 'package:linette/app/modules/texts/texts.dart';
import 'package:linette/app/windows/arsenal/models/position/position.dart';
import 'widgets/tab/tab.dart';



class Tabs extends StatelessWidget {

  final ValueNotifier <ArsenalWindowPosition> position;


  const Tabs ({
    super.key,
    required this.position
  });


  @override Widget build (BuildContext context) {

    return (

      Row (
        spacing: 8,
        children: [
          TabComponent (
            context.texts.windowArsenalBodyTabsBypassing,
            isChosen: (position.value == ArsenalWindowPosition.bypassing)
          ),
          TabComponent (
            context.texts.windowArsenalBodyTabsPlatform,
            isChosen: (position.value == ArsenalWindowPosition.platform)
          ),
          TabComponent (
            context.texts.windowArsenalBodyTabsExchange,
            isChosen: (position.value == ArsenalWindowPosition.exchange)
          ),
          TabComponent (
            context.texts.windowArsenalBodyTabsDecentralization,
            isChosen: (position.value == ArsenalWindowPosition.decentralization)
          ),
          TabComponent (
            context.texts.windowArsenalBodyTabsSpam,
            isChosen: (position.value == ArsenalWindowPosition.spam)
          )
        ]
      )

    );

  }

}