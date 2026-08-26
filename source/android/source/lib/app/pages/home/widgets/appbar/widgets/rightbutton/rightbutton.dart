// Home page - App bar - Right button

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:linette/app/theme/icons/icons.dart';
import 'package:linette/app/theme/colors/colors.dart';
import 'package:linette/app/widgets/presser/presser.dart';
import 'package:linette/app/widgets/animatorpresser/animatorpresser.dart';



class RightButton extends HookWidget {

  const RightButton ({super.key});


  @override Widget build (BuildContext context) {

    final isPressed = useState (false);


    void handleTap () {

      currentTheme.value == AppThemeOption.darkGreen
        ? currentTheme.value = AppThemeOption.lightGreen
        : currentTheme.value = AppThemeOption.darkGreen;

    }


    final String themeIcon = currentTheme.value == AppThemeOption.darkGreen
      ? context.icons.moon
      : context.icons.sun;


    final Color themeIconColor = currentTheme.value == AppThemeOption.darkGreen
      ? context.colors.iconMoon
      : context.colors.iconSun;


    final double translationYValue = isPressed.value
      ? 1
      : 0;


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
            transform: Matrix4.translationValues (0, translationYValue, 0),
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
                  borderRadius: const BorderRadius.all (Radius.circular (100))
                ),
                child: SvgPicture.asset (
                  themeIcon,
                  colorFilter: ColorFilter.mode (
                    themeIconColor,
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