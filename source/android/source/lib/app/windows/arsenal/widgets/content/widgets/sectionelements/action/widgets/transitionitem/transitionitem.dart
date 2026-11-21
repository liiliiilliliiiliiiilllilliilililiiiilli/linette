// Arsenal window - Content - Action - Transition item

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:linette/app/modules/colors/colors.dart';
import 'package:linette/app/modules/icons/icons.dart';



class TransitionItem extends StatelessWidget {

  const TransitionItem ({
    super.key
  });


  @override Widget build (BuildContext context) {

    return (

      SvgPicture.asset (
        context.icons.windowBodyActionTransition,
        width: 14.25,
        height: 14.25,
        colorFilter: ColorFilter.mode (
          context.colors.windowBodyActionRegular,
          BlendMode.srcIn
        )
      )

    );

  }

}