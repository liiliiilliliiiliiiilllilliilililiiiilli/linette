// Home page - Drawer

import 'package:flutter/material.dart';
import 'components/top/top.dart';
import 'components/main/main.dart';
import 'components/bottom/bottom.dart';



class DrawerComponent extends Drawer {

  const DrawerComponent ({super.key});


  @override build (BuildContext context) {

    void onPopInvokedWithResult (didPop, result) {

      if (didPop) return;

      Scaffold.of(context).closeDrawer ();

    }


    return (

      PopScope (
        canPop: false,
        onPopInvokedWithResult: onPopInvokedWithResult,
        child: Drawer (
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
      )

    );

  }

}