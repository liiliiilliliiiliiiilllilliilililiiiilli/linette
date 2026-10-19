// Welcome page - Body - Bottom - Button go - Button

import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/svg.dart';
import 'package:linette/app/theme/colors/colors.dart';
import 'package:linette/app/widgets/animatorpresser/animatorpresser.dart';



class ButtonComponent extends HookWidget {

  final String text;
  final String? picture;
  final double? pictureSize;
  final Function () onTap;


  const ButtonComponent ({
    super.key,
    required this.text,
    this.picture,
    this.pictureSize,
    required this.onTap
  });


  @override Widget build (BuildContext context) {

    final ValueNotifier <bool> isPressed = useState (false);


    final pictureWidth = pictureSize ?? 12.5;
    final pictureHeight = pictureSize ?? 12.5;


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

        Tween (begin: const Offset (0, 0), end: const Offset (0.21, 0)).animate(curvedAnimation)

      );

    }, [controller]);


    useEffect (() {

      final Timer timer = Timer.periodic (const Duration (milliseconds: 7200), (t) async {

        await controller.forward ();
        await controller.reverse ();

      });

      return () => timer.cancel ();

    }, const []);


    return (

      GestureDetector (
        onTap: () => onTap (),
        onPanDown: (details) => isPressed.value = true,
        onTapUp: (details) => isPressed.value = false,
        onPanCancel: () => isPressed.value = false,
        onTapCancel: () => isPressed.value = false,
        onLongPressCancel: () => isPressed.value = false,
        behavior: HitTestBehavior.opaque,
        child: AnimatorPresser (
          isPressed: isPressed,
          scaleRate: 0.97,
          child: Row (
            mainAxisSize: MainAxisSize.min,
            spacing: 8,
            children: [
              if (picture != null) ... [
                SlideTransition (
                  position: slideAnimation,
                  child: SvgPicture.asset (
                    picture!,
                    colorFilter: ColorFilter.mode (
                      context.colors.transparent,
                      BlendMode.srcIn
                    ),
                    width: pictureWidth,
                    height: pictureHeight
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
                    fontFamily: 'Archivo',
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                    color: context.colors.buttonText
                  )
                )
              ),
              if (picture != null) ... [
                SlideTransition (
                  position: slideAnimation,
                  child: SvgPicture.asset (
                    picture!,
                    colorFilter: ColorFilter.mode (
                      context.colors.button,
                      BlendMode.srcIn
                    ),
                    width: pictureWidth,
                    height: pictureHeight
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