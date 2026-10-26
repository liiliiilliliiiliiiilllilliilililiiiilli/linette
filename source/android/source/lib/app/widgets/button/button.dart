// Global widgets - Button

import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/svg.dart';
import 'package:linette/app/modules/colors/colors.dart';
import 'package:linette/app/modules/fonts/fonts.dart';
import 'package:linette/app/widgets/animatorpresser/animatorpresser.dart';



class ButtonComponent extends HookWidget {

  final String text;
  final String? icon;
  final double? iconSize;
  final Function () onTap;


  const ButtonComponent ({
    super.key,
    required this.text,
    this.icon,
    this.iconSize,
    required this.onTap
  });


  @override Widget build (BuildContext context) {

    final ValueNotifier <bool> isPressed = useState (false);


    final iconWidth = iconSize ?? 12.5;
    final iconHeight = iconSize ?? 12.5;


    final AnimationController controller = useAnimationController (
      duration: const Duration (
        milliseconds: 1100
      ),
      initialValue: 0
    );

    final CurvedAnimation curvedAnimation = CurvedAnimation (
      parent: controller,
      curve: Curves.easeInOut
    );


    final Animation <Offset> slideAnimation = useMemoized (() {

      return (

        Tween(begin: const Offset (0, 0), end: const Offset (0.21, 0)).animate(curvedAnimation)

      );

    }, [controller]);


    useEffect (() {  // Анимация начинается с серидины

      Timer? initialTimer;
      Timer? periodicTimer;


      initialTimer = Timer (const Duration (milliseconds: 2500), () {

        controller.forward ().then ((_) => controller.reverse ());

        periodicTimer = Timer.periodic (const Duration (milliseconds: 5000), (t) async {

          await controller.forward ();
          await controller.reverse ();

        });

      });


      return () {

        initialTimer?.cancel ();
        periodicTimer?.cancel ();

      };

    }, const []);


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
        onTap: onTap,
        onPanDown: onPanDown,
        onTapUp: onTapUp,
        onPanCancel: onPanCancel,
        onTapCancel: onTapCancel,
        onLongPressCancel: onLongPressCancel,
        behavior: HitTestBehavior.opaque,
        child: AnimatorPresser (
          isPressed: isPressed,
          scaleRate: 0.97,
          child: Row (
            mainAxisSize: MainAxisSize.min,
            spacing: 8,
            children: [
              if (icon != null) ... [
                SlideTransition (
                  position: slideAnimation,
                  child: SvgPicture.asset (
                    icon!,
                    colorFilter: ColorFilter.mode (
                      context.colors.transparent,
                      BlendMode.srcIn
                    ),
                    width: iconWidth,
                    height: iconHeight
                  )
                )
              ],
              Container (
                padding: const EdgeInsets.symmetric (
                  horizontal: 16.5,
                  vertical: 7.5
                ),
                decoration: BoxDecoration (
                  borderRadius: BorderRadius.circular (10),
                  color: context.colors.button
                ),
                child: Text (
                  text,
                  style: TextStyle (
                    fontFamily: context.fonts.archivo,
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                    color: context.colors.buttonText
                  )
                )
              ),
              if (icon != null) ... [
                SlideTransition (
                  position: slideAnimation,
                  child: SvgPicture.asset (
                    icon!,
                    colorFilter: ColorFilter.mode (
                      context.colors.button,
                      BlendMode.srcIn
                    ),
                    width: iconWidth,
                    height: iconHeight
                  )
                )
              ]
            ]
          )
        )
      )

    );

  }

}