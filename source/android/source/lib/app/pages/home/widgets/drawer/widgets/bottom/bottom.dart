// Home page - Drawer - Bottom

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:linette/app/modules/colors/colors.dart';
import 'package:linette/app/modules/fonts/fonts.dart';
import 'package:linette/app/modules/texts/texts.dart';
import 'package:linette/app/widgets/animatorpresser/animatorpresser.dart';



class Bottom extends HookWidget {

  const Bottom ({
    super.key
  });


  @override build (BuildContext context) {

    final ValueNotifier <bool> isPressed = useState (false);
    final ValueNotifier <bool> isChecked = useState (false);


    void handleTap () {

      isChecked.value = !isChecked.value;

    }

    void onPanDown (details) {

      isPressed.value = true;

    }

    void onTapUp (details) {

      isPressed.value = false;

    }

    void onPanCancel () {

      isPressed.value = false;

    }

    void onTapCancel () {

      isPressed.value = false;

    }

    void onLongPressCancel () {

      isPressed.value = false;

    }


    return (

      GestureDetector (
        onTap: handleTap,
        onPanDown: onPanDown,
        onTapUp: onTapUp,
        onPanCancel: onPanCancel,
        onTapCancel: onTapCancel,
        onLongPressCancel: onLongPressCancel,
        behavior: HitTestBehavior.opaque,
        child: Container (
          height: 80,
          alignment: Alignment.bottomLeft,
          padding: const EdgeInsets.fromLTRB (20, 15, 20, 15),
          decoration: BoxDecoration (
            color: context.colors.appBarBack,
            border: Border (
              top: BorderSide (
                width: 2,
                color: context.colors.appBarBorder
              )
            )
          ),
          child: AnimatorPresser (
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
                      color: context.colors.drawerBottomText
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