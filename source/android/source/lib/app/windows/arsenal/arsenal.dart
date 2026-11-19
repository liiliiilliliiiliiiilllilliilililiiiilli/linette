// Arsenal window

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:linette/app/modules/texts/texts.dart';
import 'package:linette/app/widgets/window/window.dart';
// import 'package:linette/app/windows/arsenal/widgets/content/content.dart';
// import 'widgets/tabs/tabs.dart';
// import 'models/position/position.dart';



class ArsenalWindow extends HookWidget {

  const ArsenalWindow ({
    super.key
  });


  @override Widget build (BuildContext context) {

    // final ValueNotifier <ArsenalWindowPosition> position = useState (ArsenalWindowPosition.decentralization);


    return (

      Window (
        width: 340,
        isExpanded: true,
        title: context.texts.windowArsenalTitle,
        body: SingleChildScrollView (
          child: Padding (
            padding: const EdgeInsets.only (
              top: 10,
              bottom: 2.5
            ),
            child: Container ()
            // Column (
            //   children: [
            //     Tabs (
            //       position: position
            //     ),
            //     Content (
            //       position: position
            //     )
            //   ]
            // )
          )
        ),
        action: context.texts.windowArsenalAction
      )

    );

  }

}