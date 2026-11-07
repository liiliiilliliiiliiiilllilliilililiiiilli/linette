// Button global widget

import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/svg.dart';
import 'package:linette/app/modules/colors/colors.dart';
import 'package:linette/app/modules/fonts/fonts.dart';
import 'package:linette/app/widgets/presser/presser.dart';
import 'package:linette/app/widgets/presseranimator/presseranimator.dart';
import 'models/icon/icon.dart';



class ButtonComponent extends HookWidget {

  final void Function () onPress;
  final String text;
  final ButtonIcon? icon;


  const ButtonComponent ({
    super.key,
    required this.onPress,
    required this.text,
    this.icon
  });


  @override Widget build (BuildContext context) {

    final ValueNotifier <bool> isPressed = useState (false);


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

        controller.forward().then((_) => controller.reverse ());

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


    return (

      Presser (
        onPress: onPress,
        isPressed: isPressed,
        child: Padding (
          padding: const EdgeInsets.all (8),
          child: PresserAnimator (
            isPressed: isPressed,
            scaleRate: 0.97,
            child: Row (
              mainAxisSize: MainAxisSize.min,
              spacing: 8,
              children: [
                if (icon case final icon?) ... [
                  Opacity (
                    opacity: 0,
                    child: SlideTransition (
                      position: slideAnimation,
                      child: Transform.translate (
                        offset: icon.offset ?? const Offset (0, 0),
                        child: Transform.rotate (
                          angle: icon.angle ?? 0,
                          child: SvgPicture.asset (
                            icon.asset,
                            width: icon.size,
                            height: icon.size,
                            colorFilter: ColorFilter.mode (
                              context.colors.button,
                              BlendMode.srcIn
                            )
                          )
                        )
                      )
                    )
                  )
                ],
                Container (
                  alignment: Alignment.center,
                  height: 40,
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
                if (icon case final icon?) ... [
                  SlideTransition (
                    position: slideAnimation,
                    child: Transform.translate (
                      offset: icon.offset ?? const Offset (0, 0),
                      child: Transform.rotate (
                        angle: icon.angle ?? 0,
                        child: SvgPicture.asset (
                          icon.asset,
                          width: icon.size,
                          height: icon.size,
                          colorFilter: ColorFilter.mode (
                            context.colors.button,
                            BlendMode.srcIn
                          )
                        )
                      )
                    )
                  )
                ]
              ]
            )
          )
        )
      )

    );

  }

}