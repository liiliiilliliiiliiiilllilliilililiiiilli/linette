// Confirmation account deletion 1 window

import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:linette/app/modules/colors/colors.dart';
import 'package:linette/app/modules/methods/methods.dart';
import 'package:linette/app/modules/texts/texts.dart';
import 'package:linette/app/widgets/window/window.dart';
import 'package:linette/app/widgets/window/widgets/bottom/models/action/action.dart';



class ConfirmationAccountDeletion_1_Window extends ConsumerWidget {

  const ConfirmationAccountDeletion_1_Window ({
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
        title: context.texts.windowConfirmationAccountDeletion_1_Title,
        body: SingleChildScrollView (
          padding: const EdgeInsets.only (
            top: 14,
            left: 20,
            right: 20,
            bottom: 14
          ),
          child: Text (
            context.texts.windowConfirmationAccountDeletion_1_Body,
            style: TextStyle (
              fontWeight: FontWeight.w400,
              fontSize: 16,
              color: context.colors.windowBodyText
            )
          )
        ),
        actionLeft: ActionModel (
          context.texts.windowConfirmationAccountDeletion_1_ActionLeft,
          onPress: actionLeftOnPress,
          color: ActionColorModel.grey
        ),
        actionRight: ActionModel (
          context.texts.windowConfirmationAccountDeletion_1_ActionRight,
          onPress: actionRightOnPress,
          color: ActionColorModel.red
        )
      )

    );

  }

}