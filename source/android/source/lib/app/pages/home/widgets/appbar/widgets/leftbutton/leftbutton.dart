// Home page - App bar - Left button

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

      Scaffold.of(context).openDrawer();

    }


    return (

      AppBarButton (
        onPress: handleTap,
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