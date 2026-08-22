// Connections page - App bar

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:linette/app/theme/colors.dart';
import 'components/leftbutton/leftbutton.dart';
import 'components/title/title.dart';



class AppBarComponent extends HookWidget implements PreferredSizeWidget  {

  const AppBarComponent ({super.key});


  @override Size get preferredSize {

    return (

      const Size.fromHeight (kToolbarHeight + 10)

    );

  }


  @override Widget build (BuildContext context) {

    const safeZone = 38;

    final startX = useState <double> (0.0);


    void onHorizontalDragStart (details) {

      startX.value = details.globalPosition.dx;

    }


    void onHorizontalDragUpdate (details) {

      if (details.delta.dx > 10) {

        if (startX.value < safeZone) return;

        Navigator.pop (context);

      }

    }


    return (

      GestureDetector (
        onHorizontalDragStart: onHorizontalDragStart,
        onHorizontalDragUpdate: onHorizontalDragUpdate,
        child: Container (
          color: Colors.transparent,
          child: PreferredSize (
            preferredSize: Size.fromHeight (kToolbarHeight + 10),
            child: Padding (
              padding: EdgeInsets.only (
                top: 5
              ),
              child: AppBar (
                leading: Padding (
                  padding: EdgeInsetsGeometry.only (
                    left: 16
                  ),
                  child: LeftButton ()
                ),
                automaticallyImplyLeading: false,
                leadingWidth: 56 + 16,
                title: TitleComponent (),
                backgroundColor: context.colors.appBarBack,
                bottom: PreferredSize (
                  preferredSize: Size.fromHeight (2),
                  child: Container (
                    height: 2,
                    color: context.colors.appBarBorder
                  )
                )
              )
            )
          )
        )
      )

    );

  }

}