// Home page - Drawer - Main - Feedback option

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/svg.dart';
import 'package:linette/app/theme/icons.dart';
import 'package:linette/app/theme/colors.dart';
import 'package:linette/app/elements/animatorpresser/animatorpresser.dart';
import 'components/feedbackwindow/feedbackwindow.dart';



class FeedbackOption extends HookWidget {

  const FeedbackOption ({super.key});


  @override Widget build (BuildContext context) {

    final isPressed = useState (false);


    void handleTap () {

      print ('Нажата кнопка обратной связи!');

      Navigator.pop (context);

      showDialog (
        context: context,
        builder: (BuildContext context) {

          return (

            FeedbackWindow ()

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
                  context.icons.info,
                  height: 19
                ),
                SizedBox (
                  width: 12
                ),
                Text (
                  'Обратная связь',
                  style: TextStyle (
                    fontFamily: 'Fredoka',
                    fontWeight: FontWeight.w500,
                    fontSize: 17.5,
                    color: context.colors.textDrawerOption
                  )
                ),
                Flexible (
                  child: Container ()
                ),
                SvgPicture.asset (
                  context.icons.arrowNavigation,
                  height: 14
                )
              ]
            )
          )
        )
      )

    );

  }

}