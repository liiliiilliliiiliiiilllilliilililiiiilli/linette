// Arsenal window - Tabs

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:linette/app/modules/colors/colors.dart';
import 'package:linette/app/modules/texts/texts.dart';
import 'package:linette/app/windows/arsenal/models/tab/tab.dart';
import 'package:linette/app/widgets/tab/tab.dart';



class Tabs extends HookWidget {

  final ValueNotifier <ArsenalWindowTab> tab;
  final EdgeInsets padding;


  const Tabs ({
    super.key,
    required this.tab,
    required this.padding
  });


  @override Widget build (BuildContext context) {

    final ArsenalWindowTab currentTab = useValueListenable (tab);


    final ObjectRef <bool> isFirstBuild = useRef (true);


    final Map <ArsenalWindowTab, GlobalKey <State <StatefulWidget>>> tabKeys = useMemoized (() => {

      for (final item in ArsenalWindowTab.values) item: GlobalKey ()

    }, const []);


    void scrollToTab (ArsenalWindowTab target, {bool animate = true}) {

      final BuildContext? targetContext = tabKeys[target]?.currentContext;


      if (targetContext != null) {

        final Duration duration = animate
          ? const Duration (milliseconds: 250)
          : Duration.zero;


        Scrollable.ensureVisible (
          targetContext,
          duration: duration,
          curve: Curves.easeOutCubic,
          alignment: 0.5
        );

      }

    }


    useEffect (() {

      final bool shouldAnimate = !isFirstBuild.value;


      isFirstBuild.value = false;


      WidgetsBinding.instance.addPostFrameCallback ((_) {

        scrollToTab (currentTab, animate: shouldAnimate);

      });


      return null;

    }, [currentTab]);


    return (

      Stack (
        children: [
          SingleChildScrollView (
            scrollDirection: Axis.horizontal,
            padding: padding,
            child: Row (
              spacing: 8,
              children: [
                TabComponent (
                  context.texts.windowArsenalBodyTabsBypassing,
                  key: tabKeys [ArsenalWindowTab.bypassing],
                  isChosen: tab.value == ArsenalWindowTab.bypassing,
                  onPress: () => tab.value = ArsenalWindowTab.bypassing
                ),
                TabComponent (
                  context.texts.windowArsenalBodyTabsPlatform,
                  key: tabKeys [ArsenalWindowTab.platform],
                  isChosen: tab.value == ArsenalWindowTab.platform,
                  onPress: () => tab.value = ArsenalWindowTab.platform
                ),
                TabComponent (
                  context.texts.windowArsenalBodyTabsExchange,
                  key: tabKeys [ArsenalWindowTab.exchange],
                  isChosen: tab.value == ArsenalWindowTab.exchange,
                  onPress: () => tab.value = ArsenalWindowTab.exchange
                ),
                TabComponent (
                  context.texts.windowArsenalBodyTabsDecentralization,
                  key: tabKeys [ArsenalWindowTab.decentralization],
                  isChosen: tab.value == ArsenalWindowTab.decentralization,
                  onPress: () => tab.value = ArsenalWindowTab.decentralization
                ),
                TabComponent (
                  context.texts.windowArsenalBodyTabsSpam,
                  key: tabKeys [ArsenalWindowTab.spam],
                  isChosen: tab.value == ArsenalWindowTab.spam,
                  onPress: () => tab.value = ArsenalWindowTab.spam
                )
              ]
            )
          ),
          Positioned (
            width: 14,
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
            width: 14,
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