// Welcome page - App bar - Right button

import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:linette/app/providers/theme/theme.dart';
import 'package:linette/app/modules/colors/colors.dart';
import 'package:linette/app/modules/icons/icons.dart';
import 'package:linette/app/widgets/appbarbutton/appbarbutton.dart';
import 'package:linette/app/widgets/appbarbutton/models/shape/shape.dart';



class RightButton extends HookConsumerWidget {

  const RightButton ({
    super.key
  });


  @override Widget build (BuildContext context, WidgetRef ref) {

    final AppThemeOption themeState = ref.read (themeProvider);
    final ThemeNotifier themeNotifier = ref.read (themeProvider.notifier);


    void handleTap () {

      themeState == AppThemeOption.darkGreen
        ? themeNotifier.changeState (AppThemeOption.lightGreen)
        : themeNotifier.changeState (AppThemeOption.darkGreen);

    }


    final String themeIcon = themeState == AppThemeOption.darkGreen
      ? context.icons.moon
      : context.icons.sun;


    return (

      AppBarButton (
        onPress: handleTap,
        shape: ShapeModel.circle,
        icon: SvgPicture.asset (
          themeIcon,
          colorFilter: ColorFilter.mode (
            context.colors.appBarButtonIcon,
            BlendMode.srcIn
          )
        )
      )

    );

  }

}