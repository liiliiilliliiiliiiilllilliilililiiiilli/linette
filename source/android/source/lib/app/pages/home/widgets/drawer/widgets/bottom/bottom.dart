// Home page - Drawer - Bottom

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:linette/app/localization/generated/l10n.dart';
import 'package:linette/app/theme/colors/colors.dart';
import 'package:linette/app/widgets/animatorpresser/animatorpresser.dart';



class Bottom extends HookWidget {

  const Bottom ({super.key});


  @override build (BuildContext context) {

    final isPressed = useState (false);
    final isChecked = useState (false);


    void handleTap () {

      isChecked.value = !isChecked.value;

    }


    return (

      GestureDetector (
        onTap: handleTap,
        behavior: HitTestBehavior.opaque,
        onPanDown: (details) => isPressed.value = true,
        onTapUp: (details) => isPressed.value = false,
        onPanCancel: () => isPressed.value = false,
        onTapCancel: () => isPressed.value = false,
        onLongPressCancel: () => isPressed.value = false,
        child: Container (
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
                    T.of(context).connectToVpnOnLaunch,
                    softWrap: true,
                    style: TextStyle (
                      fontFamily: 'Fredoka',
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                      color: context.colors.textDrawerBottom
                    )
                  )
                ),
                IgnorePointer (
                  ignoring: true,
                  child: Checkbox (
                    value: isChecked.value,
                    onChanged: (context) => {},
                    checkColor: context.colors.checkColor,
                    activeColor: context.colors.checkColorBack
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