// Feedback window

import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:linette/app/modules/colors/colors.dart';
import 'package:linette/app/modules/methods/methods.dart';
import 'package:linette/app/modules/texts/texts.dart';
import 'package:linette/app/widgets/window/window.dart';
import 'package:linette/app/widgets/window/widgets/bottom/models/action/action.dart';
import 'package:linette/app/widgets/link/link.dart';
import 'package:linette/app/widgets/link/models/type/type.dart';



class FeedbackWindow extends ConsumerWidget {

  const FeedbackWindow ({
    super.key
  });


  @override Widget build (BuildContext context, WidgetRef ref) {

    Future <void> onPress () async {

      await context.methods.openLink (context.texts.windowFeedbackBody_2_Link);

    }


    void actionRightOnPress () {

      context.methods.freeze (ref);

      context.methods.navigateBack (context);

    }


    return (

      Window (
        width: 340,
        title: context.texts.windowFeedbackTitle,
        body: SingleChildScrollView (
          padding: const EdgeInsets.symmetric (
            horizontal: 20,
            vertical: 14
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
                    color: context.colors.windowBodyText
                  )
                ),
                WidgetSpan (
                  alignment: PlaceholderAlignment.middle,
                  child: Link (
                    context.texts.windowFeedbackBody_2,
                    type: LinkType.external,
                    onPress: onPress
                  )
                ),
                TextSpan (
                  text: context.texts.windowFeedbackBody_3,
                  style: TextStyle (
                    color: context.colors.windowBodyText
                  )
                )
              ]
            )
          )
        ),
        actionRight: ActionModel (
          context.texts.windowFeedbackAction,
          onPress: actionRightOnPress,
          color: ActionColorModel.green
        )
      )

    );

  }

}