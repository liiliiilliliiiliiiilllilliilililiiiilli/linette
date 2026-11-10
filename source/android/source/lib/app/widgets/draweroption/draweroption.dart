// Drawer option global widget

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:flutter_svg/svg.dart';
import 'package:linette/app/modules/colors/colors.dart';
import 'package:linette/app/modules/fonts/fonts.dart';
import 'package:linette/app/modules/icons/icons.dart';
import 'package:linette/app/modules/methods/methods.dart';
import 'package:linette/app/widgets/presser/presser.dart';
import 'package:linette/app/widgets/presseranimator/presseranimator.dart';



class DrawerOption extends HookConsumerWidget {

  final String iconLeft;
  final String text;
  final String? textRight;
  final Widget window;


  const DrawerOption ({
    super.key,
    required this.iconLeft,
    required this.text,
    this.textRight,
    required this.window
  });


  @override Widget build (BuildContext context, WidgetRef ref) {

    final ValueNotifier <bool> isPressed = useState (false);


    void onPressCallback () {

      context.methods.navigateBack (context);

    }

    Future <void> onPress () async {

      await context.methods.openWindow (
        context,
        ref,
        window: window,
        callback: onPressCallback
      );

    }


    return (

      Presser (
        onPress: onPress,
        isPressed: isPressed,
        child: Padding (
          padding: const EdgeInsets.symmetric (
            horizontal: 8
          ),
          child: PresserAnimator (
            isPressed: isPressed,
            scaleRate: 0.97,
            child: Container (
              height: 45.75,
              padding: const EdgeInsets.symmetric (
                vertical: 10
              ),
              child: Row (
                children: [
                  SvgPicture.asset (
                    iconLeft,
                    width: 19,
                    height: 19,
                    colorFilter: ColorFilter.mode (
                      context.colors.drawerOptionIconLeft,
                      BlendMode.srcIn
                    )
                  ),
                  const SizedBox (
                    width: 12
                  ),
                  Text (
                    text,
                    style: TextStyle (
                      fontFamily: context.fonts.archivo,
                      fontWeight: FontWeight.w500,
                      fontSize: 17.5,
                      color: context.colors.drawerOptionText
                    )
                  ),
                  Flexible (
                    child: Container ()
                  ),
                  if (textRight case final textRight?) ... [
                    Text (
                      textRight,
                      style: TextStyle (
                        fontFamily: context.fonts.archivo,
                        fontWeight: FontWeight.w500,
                        fontSize: 17.5,
                        color: context.colors.drawerOptionTextValue
                      )
                    )
                  ]
                  else ... [
                    SvgPicture.asset (
                      context.icons.arrow,
                      width: 14,
                      height: 14,
                      colorFilter: ColorFilter.mode (
                        context.colors.drawerOptionIconRight,
                        BlendMode.srcIn
                      )
                    )
                  ]
                ]
              )
            )
          )
        )
      )

    );

  }

}