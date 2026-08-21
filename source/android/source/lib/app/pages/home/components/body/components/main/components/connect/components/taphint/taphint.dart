// Home page - Body - Main - Connect - Tap hint

import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:linette/app/theme/icons.dart';
import 'package:linette/app/theme/colors.dart';



class TapHint extends HookWidget {

  const TapHint ({super.key});


  @override Widget build (BuildContext context) {

    final controller = useAnimationController (
      duration: Duration (milliseconds: 1100),
      initialValue: 1.0
    );

    final curvedAnimation = CurvedAnimation (
      parent: controller,
      curve: Curves.easeInOut
    );


    final opacityAnimation = useMemoized (() {

      return Tween(begin: 0.3, end: 1.0).animate(curvedAnimation);

    }, [controller]);

    final scaleAnimation = useMemoized (() {

      return Tween(begin: 0.9875, end: 1.0).animate(curvedAnimation);

    }, [controller]);


    useEffect (() {

      final timer = Timer.periodic (Duration (milliseconds: 7200), (t) async {

        await controller.reverse ();
        await controller.forward ();

      });

      return () => timer.cancel ();

    }, const []);


    final String text = 'Нажмите для подключения к VPN';


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
                width: 17,
                height: 17
              ),
              Text (
                text,
                style: TextStyle (
                  fontFamily: 'Fredoka',
                  fontWeight: FontWeight.w500,
                  fontSize: 17.5,
                  color: context.colors.primeHint,
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