// Home page - App bar

import 'package:flutter/material.dart';
import 'package:linette/app/modules/colors/colors.dart';
import 'package:linette/app/modules/methods/methods.dart';
import 'package:linette/app/pages/connections/connections.dart';
import 'package:linette/app/widgets/swiper/swiper.dart';
import 'widgets/leftbutton/leftbutton.dart';
import 'widgets/title/title.dart';
import 'widgets/rightbutton/rightbutton.dart';



class AppBarComponent extends StatelessWidget implements PreferredSizeWidget {

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

      context.methods.openDrawer (context);

    }

    void onSwipeRight () {

      if (context.methods.isCurrentPageActive (context) && !context.methods.isDrawerOpened (context)) {

        context.methods.navigateTo (context, ConnectionsPage.address);

      }

    }


    return (

      SwiperComponent (
        onSwipeLeft: onSwipeLeft,
        onSwipeRight: onSwipeRight,
        child: PreferredSize (
          preferredSize: const Size.fromHeight (kToolbarHeight + 10),
          child: Padding (
            padding: const EdgeInsets.only (
              top: 5
            ),
            child: AppBar (
              leading: const Padding (
                padding: EdgeInsets.only (
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
              actionsPadding: const EdgeInsets.only (
                right: 16
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

    );

  }

}