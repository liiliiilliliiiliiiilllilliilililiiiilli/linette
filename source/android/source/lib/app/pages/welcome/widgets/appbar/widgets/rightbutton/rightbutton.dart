// Welcome page - App bar - Right button

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

    final AppThemeOption? themeState = ref.watch(themeProvider).valueOrNull;


    void onPress () {

      switch (themeState) {

        case AppThemeOption.darkGreenRegular:

          context.methods.changeTheme (ref, AppThemeBaseOption.lightGreen);

          break;

        case AppThemeOption.lightGreenRegular:

          context.methods.changeTheme (ref, AppThemeBaseOption.darkGreen);

          break;

        case AppThemeOption.darkGreenHalloween:

          context.methods.changeTheme (ref, AppThemeBaseOption.lightGreen);

          break;

        case AppThemeOption.lightGreenHalloween:

          context.methods.changeTheme (ref, AppThemeBaseOption.darkGreen);

          break;

        case AppThemeOption.darkGreenNewYear:

          context.methods.changeTheme (ref, AppThemeBaseOption.lightGreen);

          break;

        case AppThemeOption.lightGreenNewYear:

          context.methods.changeTheme (ref, AppThemeBaseOption.darkGreen);

          break;


        case AppThemeOption.darkGreenValentine:

          context.methods.changeTheme (ref, AppThemeBaseOption.lightGreen);

          break;

        case AppThemeOption.lightGreenValentine:

          context.methods.changeTheme (ref, AppThemeBaseOption.darkGreen);

          break;


        case AppThemeOption.darkGreenEaster:

          context.methods.changeTheme (ref, AppThemeBaseOption.lightGreen);

          break;

        case AppThemeOption.lightGreenEaster:

          context.methods.changeTheme (ref, AppThemeBaseOption.darkGreen);

          break;

        default:

          context.methods.changeTheme (ref, AppThemeBaseOption.darkGreen);

          break;

      }

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