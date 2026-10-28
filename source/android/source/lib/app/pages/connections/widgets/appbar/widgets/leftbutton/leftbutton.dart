// Connections page - App bar - Left button

import 'dart:math' as math;
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:linette/app/modules/colors/colors.dart';
import 'package:linette/app/modules/icons/icons.dart';
import 'package:linette/app/widgets/appbarbutton/appbarbutton.dart';
import 'package:linette/app/widgets/appbarbutton/models/shape/shape.dart';



class LeftButton extends HookWidget {

  const LeftButton ({
    super.key
  });


  @override Widget build (BuildContext context) {

    void handleTap () {

      Navigator.pop (context);

    }


    return (

      AppBarButton (
        onPress: handleTap,
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