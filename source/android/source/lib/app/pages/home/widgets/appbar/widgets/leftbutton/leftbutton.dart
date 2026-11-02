// Home page - App bar - Left button

import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:linette/app/providers/actionsfreeze/actionsfreeze.dart';
import 'package:linette/app/modules/colors/colors.dart';
import 'package:linette/app/modules/icons/icons.dart';
import 'package:linette/app/widgets/appbarbutton/appbarbutton.dart';
import 'package:linette/app/widgets/appbarbutton/models/shape/shape.dart';



class LeftButton extends ConsumerWidget {

  const LeftButton ({
    super.key
  });


  @override Widget build (BuildContext context, WidgetRef ref) {

    final ActionsFreezeNotifier actionsFreezeNotifier = ref.watch (actionsFreezeProvider.notifier);


    void onPress () {

      actionsFreezeNotifier.freeze ();

      Scaffold.of(context).openDrawer();

    }


    return (

      AppBarButton (
        onPress: onPress,
        shape: ShapeModel.square,
        icon: SvgPicture.asset (
          context.icons.menu,
          colorFilter: ColorFilter.mode (
            context.colors.appBarButtonIcon,
            BlendMode.srcIn
          )
        )
      )

    );

  }

}