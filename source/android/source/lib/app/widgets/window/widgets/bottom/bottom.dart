// Window global widget - Bottom

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:linette/app/modules/colors/colors.dart';
import 'package:linette/app/modules/methods/methods.dart';
import 'package:linette/app/widgets/presser/presser.dart';
import 'package:linette/app/widgets/presseranimator/presseranimator.dart';
import 'models/action/action.dart';



class BottomComponent extends HookConsumerWidget {

  final ActionModel? actionLeft;
  final ActionModel actionRight;
  final ValueNotifier <bool>? activity;


  const BottomComponent ({
    super.key,
    this.actionLeft,
    required this.actionRight,
    this.activity
  });


  @override Widget build (BuildContext context, WidgetRef ref) {

    final ValueNotifier <bool> isPressed_1 = useState (false);

    final ValueNotifier <bool> isPressed_2 = useState (false);


    void onPress () {

      context.methods.freeze (ref);

      context.methods.navigateBack (context);

    }


    final Color actionLeftColor = (actionLeft != null) ? switch (actionLeft!.color) {
      ActionColorModel.disabled => context.colors.windowBottomTextDisabled,
      ActionColorModel.grey => context.colors.windowBottomTextGrey,
      ActionColorModel.green => context.colors.windowBottomTextGreen,
      ActionColorModel.red => context.colors.windowBottomTextRed
    } : context.colors.windowBottomTextGrey;


    final Color actionRightColor = switch (actionRight.color) {
      ActionColorModel.disabled => context.colors.windowBottomTextDisabled,
      ActionColorModel.grey => context.colors.windowBottomTextGrey,
      ActionColorModel.green => context.colors.windowBottomTextGreen,
      ActionColorModel.red => context.colors.windowBottomTextRed
    };


    return (

      (actionLeft != null) ? (
        Row (
          children: [
            Expanded (
              child: IgnorePointer (
                ignoring: actionLeft!.isDisabled,
                child: Presser (
                  onPress: onPress,
                  isPressed: isPressed_1,
                  child: PresserAnimator (
                    isPressed: isPressed_1,
                    scaleRate: 0.96,
                    child: Container (
                      alignment: Alignment.centerLeft,
                      padding: const EdgeInsets.only (
                        top: 12,
                        left: 4 + 32,
                        bottom: 12 + 4
                      ),
                      child: Text (
                        actionLeft!.text,
                        maxLines: 1,
                        style: TextStyle (
                          fontWeight: FontWeight.w400,
                          fontSize: 15.5,
                          color: actionLeftColor
                        )
                      )
                    )
                  )
                )
              )
            ),
            Expanded (
              child: IgnorePointer (
                ignoring: actionRight.isDisabled,
                child: Presser (
                  onPress: onPress,
                  isPressed: isPressed_2,
                  child: PresserAnimator (
                    isPressed: isPressed_2,
                    scaleRate: 0.96,
                    child: Container (
                      alignment: Alignment.centerRight,
                      padding: const EdgeInsets.only (
                        top: 12,
                        right: 4 + 32,
                        bottom: 12 + 4
                      ),
                      child: Text (
                        actionRight.text,
                        maxLines: 1,
                        style: TextStyle (
                          fontWeight: FontWeight.w400,
                          fontSize: 15.5,
                          color: actionRightColor
                        )
                      )
                    )
                  )
                )
              )
            )
          ]
        )
      ) : (
        IgnorePointer (
          ignoring: actionRight.isDisabled,
          child: Presser (
            onPress: onPress,
            isPressed: isPressed_2,
            child: PresserAnimator (
              isPressed: isPressed_2,
              scaleRate: 0.98,
              child: Container (
                alignment: Alignment.centerRight,
                padding: const EdgeInsets.only (
                  top: 12,
                  right: 4 + 32,
                  bottom: 12 + 4
                ),
                child: Text (
                  actionRight.text,
                  maxLines: 1,
                  style: TextStyle (
                    fontWeight: FontWeight.w400,
                    fontSize: 15.5,
                    color: actionRightColor
                  )
                )
              )
            )
          )
        )
      )

    );

  }

}