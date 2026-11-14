// Arsenal window

import 'package:flutter/material.dart';
import 'package:linette/app/modules/colors/colors.dart';
import 'package:linette/app/modules/methods/methods.dart';
import 'package:linette/app/modules/texts/texts.dart';
import 'package:linette/app/widgets/textlink/textlink.dart';
import 'package:linette/app/widgets/textlink/models/type/type.dart';
import 'package:linette/app/widgets/window/window.dart';



class ArsenalWindow extends StatelessWidget {

  const ArsenalWindow ({
    super.key
  });


  @override Widget build (BuildContext context) {

    Future <void> onPress () async {

      await context.methods.openLink (context.texts.windowFeedbackBody_2_Link);

    }


    return (

      Window (
        width: 340,
        title: context.texts.windowArsenalTitle,
        body: SingleChildScrollView (
          child: Padding (
            padding: const EdgeInsets.only (
              top: 10,
              bottom: 2.5
            ),
            child: Text.rich (
              TextSpan (
                style: const TextStyle (
                  fontWeight: FontWeight.w400,
                  fontSize: 16
                ),
                children: [
                  TextSpan (
                    text: context.texts.windowFeedbackBody_1,
                    style: TextStyle (
                      color: context.colors.windowMainText
                    )
                  ),
                  WidgetSpan (
                    alignment: PlaceholderAlignment.middle,
                    child: TextLink (
                      context.texts.windowFeedbackBody_2,
                      type: TextLinkType.external,
                      onPress: onPress
                    )
                  ),
                  TextSpan (
                    text: context.texts.windowFeedbackBody_3,
                    style: TextStyle (
                      color: context.colors.windowMainText
                    )
                  )
                ]
              )
            )
          )
        ),
        action: context.texts.windowArsenalAction
      )

    );

  }

}