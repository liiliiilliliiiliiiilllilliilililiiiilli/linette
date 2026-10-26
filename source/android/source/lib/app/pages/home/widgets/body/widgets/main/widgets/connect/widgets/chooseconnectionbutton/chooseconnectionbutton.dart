// Home page - Body - Main - Connect - Choose connection button

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:linette/app/modules/colors/colors.dart';
import 'package:linette/app/modules/fonts/fonts.dart';
import 'package:linette/app/modules/icons/icons.dart';
import 'package:linette/app/modules/texts/texts.dart';
import 'package:linette/app/widgets/animatorpresser/animatorpresser.dart';



class ChooseConnectionButton extends HookWidget {

  const ChooseConnectionButton ({
    super.key
  });


  @override Widget build (BuildContext context) {

    final ValueNotifier <bool> isPressed = useState (false);


    void handleTap () {

      Navigator.pushNamed (context, '/connections');

    }

    void onPanDown (details) {

      isPressed.value = true;

    }

    void onTapUp (details) {

      isPressed.value = false;

    }

    void onPanCancel () {

      isPressed.value = false;

    }

    void onTapCancel () {

      isPressed.value = false;

    }

    void onLongPressCancel () {

      isPressed.value = false;

    }


    return (

      GestureDetector (
        onTap: handleTap,
        onPanDown: onPanDown,
        onTapUp: onTapUp,
        onPanCancel: onPanCancel,
        onTapCancel: onTapCancel,
        onLongPressCancel: onLongPressCancel,
        behavior: HitTestBehavior.opaque,
        child: AnimatorPresser (
          isPressed: isPressed,
          child: Container (
            padding: const EdgeInsets.all (5),
            child: Row (
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              spacing: 8,
              children: [
                SvgPicture.asset (
                  context.icons.location,
                  colorFilter: ColorFilter.mode (
                    context.colors.buttonChooseConnectionIconLeft,
                    BlendMode.srcIn
                  ),
                  width: 17,
                  height: 17
                ),
                Text (
                  context.texts.pageHomeBodyCenterGoNetherlands,
                  style: TextStyle (
                    fontFamily: context.fonts.archivo,
                    fontWeight: FontWeight.w600,
                    fontSize: 17.5,
                    color: context.colors.buttonChooseConnectionText,
                    height: 1
                  )
                ),
                SvgPicture.asset (
                  context.icons.arrow,
                  colorFilter: ColorFilter.mode (
                    context.colors.buttonChooseConnectionIconRight,
                    BlendMode.srcIn
                  ),
                  width: 15,
                  height: 15
                )
              ]
            )
          )
        )
      )

    );

  }

}