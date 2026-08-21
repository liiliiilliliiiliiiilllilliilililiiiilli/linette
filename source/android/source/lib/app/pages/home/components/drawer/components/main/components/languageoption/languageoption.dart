// Home page - Drawer - Main - Language option

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/svg.dart';
import 'package:linette/app/theme/icons.dart';
import 'package:linette/app/theme/colors.dart';
import 'package:linette/app/elements/animatorpresser/animatorpresser.dart';
import 'components/changelanguagewindow/changelanguagewindow.dart';



class LanguageOption extends HookWidget {

  const LanguageOption ({super.key});


  @override Widget build (BuildContext context) {

    final isPressed = useState (false);


    void handleTap () {

      print ('Нажата кнопка опции смены языка!');

      Navigator.pop (context);

      showDialog (
        context: context,
        builder: (BuildContext context) {

          return (

            ChangeLanguageWindow ()

          );

        }
      );

    }


    return (

      GestureDetector (
        onTap: handleTap,
        onPanDown: (details) => isPressed.value = true,
        onTapUp: (details) => isPressed.value = false,
        onPanCancel: () => isPressed.value = false,
        onTapCancel: () => isPressed.value = false,
        onLongPressCancel: () => isPressed.value = false,
        behavior: HitTestBehavior.opaque,
        child: AnimatorPresser (
          isPressed: isPressed,
          scaleRate: 0.97,
          child: Container (
            padding: EdgeInsets.only (
              top: 10,
              bottom: 10
            ),
            child: Row (
              children: [
                SvgPicture.asset (
                  context.icons.world,
                  height: 19
                ),
                SizedBox (
                  width: 12
                ),
                Text (
                  'Язык',
                  style: TextStyle (
                    fontFamily: 'Fredoka',
                    fontWeight: FontWeight.w500,
                    fontSize: 17.5,
                    color: context.colors.white
                  )
                ),
                Flexible (
                  child: Container ()
                ),
                Text (
                  'Русский',
                  style: TextStyle (
                    fontFamily: 'Fredoka',
                    fontWeight: FontWeight.w500,
                    fontSize: 17.5,
                    color: context.colors.grey
                  )
                )
              ]
            )
          )
        )
      )

    );

  }

}