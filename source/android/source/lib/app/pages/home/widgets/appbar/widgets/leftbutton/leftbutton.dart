// Home page - App bar - Left button

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:linette/app/theme/icons/icons.dart';
import 'package:linette/app/theme/colors/colors.dart';
import 'package:linette/app/widgets/presser/presser.dart';
import 'package:linette/app/widgets/animatorpresser/animatorpresser.dart';



class LeftButton extends HookWidget {

  const LeftButton ({super.key});


  @override Widget build (BuildContext context) {

    final isPressed = useState (false);


    void handleTap () {

      Scaffold.of(context).openDrawer ();

    }


    return (

      Presser (
        isPressed: isPressed,
        handleTap: handleTap,
        child: AnimatorPresser (
          isPressed: isPressed,
          child: AnimatedContainer (
            duration: const Duration (
              milliseconds: 80
            ),
            transform: Matrix4.translationValues (0, isPressed.value ? 1.0 : 0.0, 0),
            child: Center (
              child: Container (
                width: 38,
                height: 38,
                padding: const EdgeInsets.all (7.5),
                decoration: BoxDecoration (
                  color: context.colors.appBarButtonBack,
                  border: Border.all (
                    width: 3,
                    color: context.colors.appBarButtonBorder
                  ),
                  borderRadius: const BorderRadius.all (Radius.circular (10))
                ),
                child: SvgPicture.asset (
                  context.icons.menu,
                  colorFilter: ColorFilter.mode (
                    context.colors.iconMenu,
                    BlendMode.srcIn
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