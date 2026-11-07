// Home page - Body - Main - Connect - Connection button

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:linette/app/modules/colors/colors.dart';
import 'package:linette/app/modules/icons/icons.dart';
import 'package:linette/app/widgets/presseranimator/presseranimator.dart';
import 'package:linette/app/widgets/presser/presser.dart';



class ConnectionButton extends HookWidget {

  const ConnectionButton ({
    super.key
  });


  @override Widget build (BuildContext context) {

    final ValueNotifier <bool> isPressed = useState (false);


    void onPress () {

      return;

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
        child: PresserAnimator (
          isPressed: isPressed,
          child: Opacity (
            opacity: 0.9,
            child: SizedBox (
              width: 225,
              height: 225,
              child: Stack (
                clipBehavior: Clip.none,
                children: [
                  AnimatedContainer (
                    duration: const Duration (
                      milliseconds: 80
                    ),
                    decoration: BoxDecoration (
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow (
                          blurRadius: blurRadius,
                          spreadRadius: spreadRadius,
                          offset: offset,
                          color: context.colors.buttonConnectShadow
                        )
                      ]
                    )
                  ),
                  AnimatedContainer (
                    decoration: const BoxDecoration (
                      shape: BoxShape.circle
                    ),
                    duration: const Duration (
                      milliseconds: 80
                    ),
                    child: ClipOval (
                      child: Presser (
                        onPress: onPress,
                        isPressed: isPressed,
                        child: Container (
                          padding: const EdgeInsets.all (32),
                          decoration: BoxDecoration (
                            shape: BoxShape.circle,
                            border: Border.all (
                              width: 4,
                              color: context.colors.buttonConnectBorder
                            ),
                            color: context.colors.buttonConnectBack
                          ),
                          child: Padding (
                            padding: const EdgeInsets.all (1.75),
                            child: SvgPicture.asset (
                              context.icons.olive,
                              width: 256,
                              height: 256,
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
                ]
              )
            )
          )
        )
      )

    );

  }

}