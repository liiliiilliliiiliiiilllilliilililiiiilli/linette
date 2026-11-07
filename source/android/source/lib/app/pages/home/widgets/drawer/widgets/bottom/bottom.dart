// Home page - Drawer - Bottom

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:linette/app/modules/colors/colors.dart';
import 'package:linette/app/modules/fonts/fonts.dart';
import 'package:linette/app/modules/texts/texts.dart';
import 'package:linette/app/widgets/presser/presser.dart';
import 'package:linette/app/widgets/presseranimator/presseranimator.dart';



class Bottom extends HookWidget {

  const Bottom ({
    super.key
  });


  @override build (BuildContext context) {

    final ValueNotifier <bool> isPressed = useState (false);
    final ValueNotifier <bool> isChecked = useState (false);


    void onPress () {

      isChecked.value = !isChecked.value;

    }

    bool isInDeadZone (double localY) {

      const double componentHeight = 80;
      const double deadZoneHeight = 9.5;


      final bool isInDeadZone = localY > (componentHeight - deadZoneHeight);


      return isInDeadZone;

    }

    void onTapDown (TapDownDetails details) {

      if (!isInDeadZone (details.localPosition.dy)) {

        isPressed.value = true;

      }

    }

    void onTapUp (TapUpDetails details) {

      isPressed.value = false;

      if (!isInDeadZone (details.localPosition.dy)) {

        onPress ();

      }

    }

    void onPanDown (DragDownDetails details) {

      if (!isInDeadZone (details.localPosition.dy)) {

        isPressed.value = true;

      }

    }


    return (

      Presser (
        onPress: onPress,
        isPressed: isPressed,
        onTapDown: onTapDown,
        onTapUp: onTapUp,
        onPanDown: onPanDown,
        child: Container (
          alignment: Alignment.bottomLeft,
          height: 80,
          padding: const EdgeInsets.symmetric (
            horizontal: 20,
            vertical: 15
          ),
          decoration: BoxDecoration (
            border: Border (
              top: BorderSide (
                width: 2,
                color: context.colors.drawerBottomBarBorder
              )
            ),
            color: context.colors.drawerBottomBarBack
          ),
          child: PresserAnimator (
            isPressed: isPressed,
            scaleRate: 0.97,
            child: Row (
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded (
                  child: Text (
                    context.texts.pageHomeDrawerBottom,
                    softWrap: true,
                    style: TextStyle (
                      fontFamily: context.fonts.archivo,
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                      color: context.colors.drawerBottomBarText
                    )
                  )
                ),
                IgnorePointer (
                  ignoring: true,
                  child: Checkbox (
                    value: isChecked.value,
                    onChanged: (context) => {},
                    checkColor: context.colors.check,
                    activeColor: context.colors.checkBack
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