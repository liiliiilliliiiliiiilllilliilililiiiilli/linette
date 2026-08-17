// Connections page - App bar

import 'package:flutter/material.dart';
import 'components/leftbutton/leftbutton.dart';
import 'components/titlecomponent/titlecomponent.dart';
import 'package:linette/app/themes/themes.dart';



class AppBarComponent extends StatelessWidget implements PreferredSizeWidget  {

  const AppBarComponent ({super.key});


  @override Size get preferredSize => const Size.fromHeight (kToolbarHeight + 10);


  @override Widget build (BuildContext context) {

    return (

      PreferredSize (
        preferredSize: Size.fromHeight (kToolbarHeight + 10),
        child: Padding (
          padding: EdgeInsets.only (top: 5),
          child: AppBar (
            leading: Padding (
              padding: EdgeInsetsGeometry.only (left: 16),
              child: LeftButtonComponent ()
            ),
            automaticallyImplyLeading: false,
            leadingWidth: 56 + 16,
            title: TitleComponent (),
            backgroundColor: context.colors.barBack,
            bottom: PreferredSize (
              preferredSize: Size.fromHeight (2),
              child: Container (
                height: 2,
                color: context.colors.barBorder
              )
            )
          )
        )
      )

    );

  }

}