// Connections page

import 'package:flutter/material.dart';
import 'package:linette/app/theme/colors/colors.dart';
import 'widgets/appbar/appbar.dart';
import 'widgets/body/body.dart';



class Connections extends StatelessWidget {

  const Connections ({super.key});


  @override Widget build (BuildContext context) {

    return (

      Scaffold (
        appBar: AppBarComponent (),
        body: BodyComponent (),
        backgroundColor: context.colors.appBarBack
      )

    );

  }

}