// Confirmation connections delition window

import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:linette/app/modules/colors/colors.dart';
import 'package:linette/app/modules/methods/methods.dart';
import 'package:linette/app/modules/texts/texts.dart';
import 'package:linette/app/widgets/window/window.dart';
import 'package:linette/app/widgets/window/widgets/bottom/models/action/action.dart';



class ConfirmationConnectionsDelitionWindow extends ConsumerWidget {

  const ConfirmationConnectionsDelitionWindow ({
    super.key
  });


  @override Widget build (BuildContext context, WidgetRef ref) {

    void actionLeftOnPress () {

      context.methods.freeze (ref);

      context.methods.navigateBack (context);

    }

    void actionRightOnPress () {

      context.methods.freeze (ref);

      context.methods.navigateBack (context);

    }


    return (

      Window (
        width: 340,
        title: context.texts.windowConfirmationConnectionsDelitionTitle,
        body: SingleChildScrollView (
          padding: const EdgeInsets.only (
            top: 14,
            left: 20,
            right: 20,
            bottom: 14
          ),
          child: Text (
            context.texts.windowConfirmationConnectionsDelitionBody,
            style: TextStyle (
              fontWeight: FontWeight.w400,
              fontSize: 16,
              color: context.colors.windowBodyText
            )
          )
        ),
        actionLeft: ActionModel (
          context.texts.windowConfirmationConnectionsDelitionActionLeft,
          onPress: actionLeftOnPress,
          color: ActionColorModel.grey
        ),
        actionRight: ActionModel (
          context.texts.windowConfirmationConnectionsDelitionActionRight,
          onPress: actionRightOnPress,
          color: ActionColorModel.red
        )
      )

    );

  }

}