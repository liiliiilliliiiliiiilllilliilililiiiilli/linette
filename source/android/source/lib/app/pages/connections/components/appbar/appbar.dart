// Connections page - App bar

import 'package:flutter/material.dart';
import 'package:linette/app/theme/colors.dart';
import 'components/leftbutton/leftbutton.dart';
import 'components/title/title.dart';



class AppBarComponent extends StatelessWidget implements PreferredSizeWidget  {

  const AppBarComponent ({super.key});


  @override Size get preferredSize {

    return (

      const Size.fromHeight (kToolbarHeight + 10)

    );

  }


  @override Widget build (BuildContext context) {

    return (

      PreferredSize (
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

    );

  }

}