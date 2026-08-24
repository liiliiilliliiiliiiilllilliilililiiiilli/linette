// Home page - Drawer

import 'package:flutter/material.dart';
import 'widgets/top/top.dart';
import 'widgets/main/main.dart';
import 'widgets/bottom/bottom.dart';



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