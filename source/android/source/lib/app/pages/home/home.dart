// Home page

import 'package:flutter/material.dart';
import 'package:linette/app/theme/colors/colors.dart';
import 'widgets/appbar/appbar.dart';
import 'widgets/body/body.dart';
import 'widgets/drawer/drawer.dart';



class Home extends StatelessWidget {

  const Home ({super.key});


  @override Widget build (BuildContext context) {

    return (

      Scaffold (
        drawerEnableOpenDragGesture: false,
        appBar: const AppBarComponent (),
        body: const BodyComponent (),
        drawer: const DrawerComponent (),
        backgroundColor: context.colors.appBarBack
      )

    );

  }

}