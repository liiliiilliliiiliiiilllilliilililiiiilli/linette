// Arsenal window

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:linette/app/modules/texts/texts.dart';
import 'package:linette/app/widgets/window/window.dart';
// import 'widgets/tabs/tabs.dart';
import 'widgets/content/content.dart';
import 'models/position/position.dart';



class ArsenalWindow extends HookWidget {

  const ArsenalWindow ({
    super.key
  });


  @override Widget build (BuildContext context) {

    final ValueNotifier <ArsenalWindowPosition> position = useState (ArsenalWindowPosition.bypassing);


    return (

      Window (
        width: 340,
        isExpanded: true,
        title: context.texts.windowArsenalTitle,
        body: SingleChildScrollView (
          child: Padding (
            padding: const EdgeInsets.only (
              top: 10 * 1,
              left: 2.5 * 1.5,
              right: 2.5 * 1.5,
              bottom: 10 * 1.5
            ),
            child: Column (
              children: [
                // Tabs (
                //   position: position
                // ),
                Content (
                  position: position
                )
              ]
            )
          )
        ),
        action: context.texts.windowArsenalAction
      )

    );

  }

}