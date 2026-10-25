// Home page - Body - Main - Connect - Tap hint

import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:linette/app/modules/colors/colors.dart';
import 'package:linette/app/modules/fonts/fonts.dart';
import 'package:linette/app/modules/icons/icons.dart';
import 'package:linette/app/modules/texts/texts.dart';



class TapHint extends HookWidget {

  const TapHint ({
    super.key
  });


  @override Widget build (BuildContext context) {

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


    final Animation <double> scaleAnimation = useMemoized (() {

      return (

        Tween(begin: 1.0, end: 0.9875).animate(curvedAnimation)

      );

    }, [controller]);

    final Animation <double> opacityAnimation = useMemoized (() {

      return (

        Tween(begin: 1.0, end: 0.3).animate(curvedAnimation)

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

      ScaleTransition (
        scale: scaleAnimation,
        child: FadeTransition (
          opacity: opacityAnimation,
          child: Row (
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            spacing: 8,
            children: [
              SvgPicture.asset (
                context.icons.tap,
                colorFilter: ColorFilter.mode (
                  context.colors.tapHintIcon,
                  BlendMode.srcIn
                ),
                width: 17,
                height: 17
              ),
              Text (
                context.texts.pageHomeBodyCenterTapToConnect,
                style: TextStyle (
                  fontFamily: context.fonts.archivo,
                  fontWeight: FontWeight.w500,
                  fontSize: 17.5,
                  color: context.colors.tapHintText,
                  height: 1
                )
              )
            ]
          )
        )
      )

    );

  }

}