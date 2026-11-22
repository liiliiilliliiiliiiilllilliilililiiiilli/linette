// Arsenal window - Tabs

import 'package:flutter/material.dart';
import 'package:linette/app/modules/colors/colors.dart';
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

      Stack (
        children: [
          SingleChildScrollView (
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.symmetric (
              horizontal: 20 - 4 - 2 + 2.5 * 1.5
            ),
            child: Row (
              spacing: 8,
              children: [
                TabComponent (
                  context.texts.windowArsenalBodyTabsBypassing,
                  isChosen: (position.value == ArsenalWindowPosition.bypassing),
                  onPress: () => {position.value = ArsenalWindowPosition.bypassing}
                ),
                TabComponent (
                  context.texts.windowArsenalBodyTabsPlatform,
                  isChosen: (position.value == ArsenalWindowPosition.platform),
                  onPress: () => {position.value = ArsenalWindowPosition.platform}
                ),
                TabComponent (
                  context.texts.windowArsenalBodyTabsExchange,
                  isChosen: (position.value == ArsenalWindowPosition.exchange),
                  onPress: () => {position.value = ArsenalWindowPosition.exchange}
                ),
                TabComponent (
                  context.texts.windowArsenalBodyTabsDecentralization,
                  isChosen: (position.value == ArsenalWindowPosition.decentralization),
                  onPress: () => {position.value = ArsenalWindowPosition.decentralization}
                ),
                TabComponent (
                  context.texts.windowArsenalBodyTabsSpam,
                  isChosen: (position.value == ArsenalWindowPosition.spam),
                  onPress: () => {position.value = ArsenalWindowPosition.spam}
                )
              ]
            )
          ),
          Positioned (
            width: 15,
            top: 0,
            left: 0,
            bottom: 0,
            child: IgnorePointer (
              child: Container (
                decoration: BoxDecoration (
                  gradient: LinearGradient (
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                    colors: [
                      context.colors.windowBodyBack,
                      context.colors.windowBodyBack.withAlpha (0)
                    ]
                  )
                )
              )
            )
          ),
          Positioned (
            width: 15,
            top: 0,
            right: 0,
            bottom: 0,
            child: IgnorePointer (
              child: Container (
                decoration: BoxDecoration (
                  gradient: LinearGradient (
                    begin: Alignment.centerRight,
                    end: Alignment.centerLeft,
                    colors: [
                      context.colors.windowBodyBack,
                      context.colors.windowBodyBack.withAlpha (0)
                    ]
                  )
                )
              )
            )
          )
        ]
      )

    );

  }

}