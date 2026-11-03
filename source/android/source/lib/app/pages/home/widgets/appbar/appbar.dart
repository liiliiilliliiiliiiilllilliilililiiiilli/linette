// Home page - App bar

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:linette/app/modules/colors/colors.dart';
import 'package:linette/app/widgets/slider/slider.dart';
import 'widgets/leftbutton/leftbutton.dart';
import 'widgets/title/title.dart';
import 'widgets/rightbutton/rightbutton.dart';



class AppBarComponent extends HookWidget implements PreferredSizeWidget {

  const AppBarComponent ({
    super.key
  });


  @override Size get preferredSize {

    return (

      const Size.fromHeight (kToolbarHeight + 10)

    );

  }


  @override Widget build (BuildContext context) {

    void onSwipeLeft () {

      Scaffold.of(context).openDrawer();

    }

    void onSwipeRight () {

      if ((ModalRoute.of(context)?.isCurrent ?? true) && !(Scaffold.of(context).isDrawerOpen)) {  // Если текущий экран активен (т.е. поверх него ничего нет) и если не открыто боковое меню

        Navigator.pushNamed (context, '/connections');

      }

    }


    return (

      SliderComponent (
        onSwipeLeft: onSwipeLeft,
        onSwipeRight: onSwipeRight,
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