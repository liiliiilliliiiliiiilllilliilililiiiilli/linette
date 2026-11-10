// Home page

import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:linette/app/modules/colors/colors.dart';
import 'package:linette/app/modules/methods/methods.dart';
import 'package:linette/app/widgets/freezer/freezer.dart';
import 'widgets/appbar/appbar.dart';
import 'widgets/body/body.dart';
import 'widgets/drawer/drawer.dart';



class HomePage extends ConsumerWidget {

  static const String address = '/home';


  const HomePage ({
    super.key
  });


  @override Widget build (BuildContext context, WidgetRef ref) {

    void onDrawerChanged (bool isOpened) {

      context.methods.freeze (ref);

    }


    return (

      Freezer (
        child: ClipRect (
          child: Scaffold (
            appBar: const AppBarComponent (),
            body: const BodyComponent (),
            drawer: const DrawerComponent (),
            onDrawerChanged: onDrawerChanged,
            drawerEnableOpenDragGesture: false,
            backgroundColor: context.colors.backPrime
          )
        )
      )

    );

  }

}