// Welcome page - App bar

import 'package:flutter/material.dart';
import 'package:linette/app/modules/colors/colors.dart';
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

    return (

      PreferredSize (
        preferredSize: const Size.fromHeight (kToolbarHeight + 10),
        child: Padding (
          padding: const EdgeInsets.only (
            top: 5
          ),
          child: AppBar (
            actions: const [
              RightButton ()
            ],
            actionsPadding: const EdgeInsets.only (
              right: 16
            ),
            backgroundColor: context.colors.appBarBack
          )
        )
      )

    );

  }

}