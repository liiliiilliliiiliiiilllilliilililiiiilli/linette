// Welcome page - App bar - Right button

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:linette/app/providers/theme/theme.dart';
import 'package:linette/app/modules/colors/colors.dart';
import 'package:linette/app/modules/icons/icons.dart';
import 'package:linette/app/widgets/animatorpresser/animatorpresser.dart';



class RightButton extends HookConsumerWidget {

  const RightButton ({
    super.key
  });


  @override Widget build (BuildContext context, WidgetRef ref) {

    final AppThemeOption themeState = ref.read (themeProvider);
    final ThemeNotifier themeNotifier = ref.read (themeProvider.notifier);


    final ValueNotifier <bool> isPressed = useState (false);


    void handleTap () {

      themeState == AppThemeOption.darkGreen
        ? themeNotifier.changeState (AppThemeOption.lightGreen)
        : themeNotifier.changeState (AppThemeOption.darkGreen);

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


    final String themeIcon = themeState == AppThemeOption.darkGreen
      ? context.icons.moon
      : context.icons.sun;


    final double translationYValue = isPressed.value
      ? 1
      : 0;


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
                    context.colors.appBarButtonIcon,
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