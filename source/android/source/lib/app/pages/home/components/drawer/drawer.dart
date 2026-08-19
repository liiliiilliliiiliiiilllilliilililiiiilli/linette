// Home page - Drawer

import 'package:flutter/material.dart';
import 'components/top/top.dart';
import 'components/main/main.dart';
import 'components/bottom/bottom.dart';



class DrawerComponent extends Drawer {

  const DrawerComponent ({super.key});


  @override build (BuildContext context) {

    return (

      Drawer (
        shape: RoundedRectangleBorder (
          borderRadius: BorderRadius.zero
        ),
        child: Column (
          children: [
            Top (),
            Main (),
            Bottom ()
          ]
        )
      )

    );

  }

}