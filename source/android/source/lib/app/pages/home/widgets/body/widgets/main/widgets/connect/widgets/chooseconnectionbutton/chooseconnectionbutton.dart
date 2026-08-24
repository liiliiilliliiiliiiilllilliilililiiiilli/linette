// Home page - Body - Main - Connect - Choose connection button

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:linette/app/localization/generated/l10n.dart';
import 'package:linette/app/theme/icons/icons.dart';
import 'package:linette/app/theme/colors/colors.dart';
import 'package:linette/app/widgets/presser/presser.dart';
import 'package:linette/app/widgets/animatorpresser/animatorpresser.dart';



class ChooseConnectionButton extends HookWidget {

  const ChooseConnectionButton ({super.key});


  @override Widget build (BuildContext context) {

    final isPressed = useState (false);


    final String text = T.of(context).netherlands;


    void handleTap (context) {

      Navigator.pushNamed (context, '/connections');

    }


    return (

      Presser (
        isPressed: isPressed,
        handleTap: () => handleTap (context),
        child: AnimatorPresser (
          isPressed: isPressed,
          child: Container (
            padding: const EdgeInsets.all (5),
            child: Row (
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              spacing: 8,
              children: [
                SvgPicture.asset (
                  context.icons.location,
                  colorFilter: ColorFilter.mode (
                    context.colors.iconLocation,
                    BlendMode.srcIn
                  ),
                  width: 17,
                  height: 17
                ),
                Text (
                  text,
                  style: TextStyle (
                    fontFamily: 'Fredoka',
                    fontWeight: FontWeight.w600,
                    fontSize: 17.5,
                    color: context.colors.textChooseConnectionButton,
                    height: 1
                  )
                ),
                SvgPicture.asset (
                  context.icons.arrowConnection,
                  colorFilter: ColorFilter.mode (
                    context.colors.iconArrow,
                    BlendMode.srcIn
                  ),
                  width: 17,
                  height: 17
                )
              ]
            )
          )
        )
      )

    );

  }

}