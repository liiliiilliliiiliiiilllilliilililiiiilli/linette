// Hint window

import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:linette/app/modules/colors/colors.dart';
import 'package:linette/app/modules/methods/methods.dart';
import 'package:linette/app/modules/texts/texts.dart';
import 'package:linette/app/widgets/window/window.dart';
import 'package:linette/app/widgets/window/widgets/bottom/models/action/action.dart';



class HintWindow extends ConsumerWidget {

  const HintWindow ({
    super.key
  });


  @override Widget build (BuildContext context, WidgetRef ref) {

    void actionRightOnPress () {

      context.methods.freeze (ref);

      context.methods.navigateBack (context);

    }


    return (

      Window (
        width: 340,
        isExpanded: true,
        title: context.texts.windowHintTitle,
        body: SingleChildScrollView (
          padding: const EdgeInsets.only (
            top: 10,
            bottom: 2.5
          ),
          child: Text (
            context.texts.windowHintBody,
            style: TextStyle (
              fontWeight: FontWeight.w400,
              fontSize: 16,
              color: context.colors.windowBodyText
            )
          )
        ),
        actionRight: ActionModel (
          context.texts.windowHintAction,
          onPress: actionRightOnPress,
          color: ActionColorModel.green
        )
      )

    );

  }

}