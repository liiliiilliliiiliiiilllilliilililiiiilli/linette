// Home page - App bar - Right button

import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:linette/app/providers/theme/theme.dart';
import 'package:linette/app/modules/icons/icons.dart';
import 'package:linette/app/modules/methods/methods.dart';
import 'package:linette/app/widgets/appbarbutton/appbarbutton.dart';
import 'package:linette/app/widgets/appbarbutton/models/icon/icon.dart';
import 'package:linette/app/widgets/appbarbutton/models/shape/shape.dart';



class RightButton extends ConsumerWidget {

  const RightButton ({
    super.key
  });


  @override Widget build (BuildContext context, WidgetRef ref) {

    final AppThemeOption themeState = ref.watch (themeProvider);


    void onPress () {

      (themeState == AppThemeOption.darkGreen)
        ? context.methods.changeTheme (ref, AppThemeOption.lightGreen)
        : context.methods.changeTheme (ref, AppThemeOption.darkGreen);

    }


    return (

      AppBarButton (
        onPress: onPress,
        shape: AppBarButtonShape.circle,
        icon: AppBarButtonIcon (context.icons.buttonAppBarTheme)
      )

    );

  }

}