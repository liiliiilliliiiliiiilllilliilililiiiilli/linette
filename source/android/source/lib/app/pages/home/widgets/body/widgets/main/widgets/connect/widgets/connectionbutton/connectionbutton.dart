// Home page - Body - Main - Connect - Connection button

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:linette/app/modules/colors/colors.dart';
import 'package:linette/app/modules/icons/icons.dart';
import 'package:linette/app/widgets/animatorpresser/animatorpresser.dart';



class ConnectionButton extends HookWidget {

  const ConnectionButton ({
    super.key
  });


  @override Widget build (BuildContext context) {

    final ValueNotifier <bool> isPressed = useState (false);


    void handleTap () {}

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


    final Offset offset = isPressed.value
      ? const Offset (0, 5 * 0.825)
      : const Offset (0, 5);

    final double blurRadius = isPressed.value
      ? 8 * 0.825
      : 8;

    final double spreadRadius = isPressed.value
      ? 2.5 * 0.825
      : 2.5;


    return (

      Center (
        child: GestureDetector (
          onTap: handleTap,
          onPanDown: onPanDown,
          onTapUp: onTapUp,
          onPanCancel: onPanCancel,
          onTapCancel: onTapCancel,
          onLongPressCancel: onLongPressCancel,
          behavior: HitTestBehavior.opaque,
          child: AnimatorPresser (
            isPressed: isPressed,
            child: Opacity (
              opacity: 0.9,
              child: AnimatedContainer (
                duration: const Duration (
                  milliseconds: 80
                ),
                width: 225,
                height: 225,
                padding: const EdgeInsets.all (32),
                decoration: BoxDecoration (
                  border: Border.all (
                    width: 4,
                    color: context.colors.buttonConnectBorder
                  ),
                  borderRadius: BorderRadius.circular (1000),
                  boxShadow: [
                    BoxShadow (
                      color: context.colors.buttonConnectShadow,
                      offset: offset,
                      blurRadius: blurRadius,
                      spreadRadius: spreadRadius
                    )
                  ],
                  color: context.colors.prime
                ),
                child: Container (
                  padding: const EdgeInsets.all (1.75),
                  child: SvgPicture.asset (
                    context.icons.olive,
                    colorFilter: ColorFilter.mode (
                      context.colors.buttonConnectIcon,
                      BlendMode.srcIn
                    )
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