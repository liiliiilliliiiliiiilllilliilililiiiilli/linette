// Home page - App bar

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:linette/app/theme/colors/colors.dart';
import 'widgets/leftbutton/leftbutton.dart';
import 'widgets/title/title.dart';
import 'widgets/rightbutton/rightbutton.dart';



class AppBarComponent extends HookWidget implements PreferredSizeWidget {

  const AppBarComponent ({super.key});


  @override Size get preferredSize {

    return (

      const Size.fromHeight (kToolbarHeight + 10)

    );

  }


  @override Widget build (BuildContext context) {

    const safeZone = 38;

    final startX = useState <double> (0.0);

    final screenWidth = MediaQuery.of(context).size.width;


    void onHorizontalDragStart (details) {

      startX.value = details.globalPosition.dx;

    }


    void onHorizontalDragUpdate (details) {

      if (details.delta.dx > 10) {

        if (startX.value < safeZone) return;

        Scaffold.of(context).openDrawer ();

      }

      else if (details.delta.dx < -10) {

        if (startX.value > (screenWidth - safeZone)) return;

        Navigator.pushNamed (context, '/connections');

      }

    }


    return (

      GestureDetector (
        onHorizontalDragStart: onHorizontalDragStart,
        onHorizontalDragUpdate: onHorizontalDragUpdate,
        child: Container (
          color: context.colors.transparent,
          child: PreferredSize (
            preferredSize: const Size.fromHeight (kToolbarHeight + 10),
            child: Padding (
              padding: const EdgeInsets.only (
                top: 5
              ),
              child: AppBar (
                leading: const Padding (
                  padding: EdgeInsetsGeometry.only (
                    left: 16
                  ),
                  child: LeftButton ()
                ),
                automaticallyImplyLeading: false,
                leadingWidth: 56 + 16,
                title: const TitleComponent (),
                centerTitle: true,
                actions: const [
                  RightButton ()
                ],
                actionsPadding: const EdgeInsetsGeometry.only (
                  right: 8 + 16
                ),
                backgroundColor: context.colors.appBarBack,
                bottom: PreferredSize (
                  preferredSize: const Size.fromHeight (2),
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