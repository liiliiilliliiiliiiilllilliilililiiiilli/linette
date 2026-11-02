// Connections page - App bar - Left button

import 'dart:math' as math;
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

      Navigator.pop (context);

    }


    return (

      AppBarButton (
        onPress: onPress,
        shape: ShapeModel.circle,
        icon: Transform.translate (
          offset: const Offset (-1, 0),
          child: Transform.rotate (
            angle: 180 * math.pi / 180,
            child: SvgPicture.asset (
              context.icons.arrow,
              colorFilter: ColorFilter.mode (
                context.colors.appBarButtonIcon,
                BlendMode.srcIn
              )
            )
          )
        )
      )

    );

  }

}