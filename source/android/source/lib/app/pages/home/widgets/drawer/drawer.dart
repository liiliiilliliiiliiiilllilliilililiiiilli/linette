// Home page - Drawer

import 'package:flutter/material.dart';
import 'package:linette/app/modules/methods/methods.dart';
import 'widgets/top/top.dart';
import 'widgets/main/main.dart';
import 'widgets/bottom/bottom.dart';



class DrawerComponent extends Drawer {

  const DrawerComponent ({
    super.key
  });


  @override build (BuildContext context) {

    void onPopInvokedWithResult (bool didPop, Object? result) {

      if (!didPop) {

        context.methods.closeDrawer (context);

      }

    }


    return (

      PopScope (
        canPop: false,
        onPopInvokedWithResult: onPopInvokedWithResult,
        child: const Drawer (
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