// Connections page

import 'package:flutter/material.dart';
import 'package:linette/app/modules/colors/colors.dart';
import 'package:linette/app/widgets/pagewrapper/pagewrapper.dart';
import 'widgets/appbar/appbar.dart';
import 'widgets/body/body.dart';



class ConnectionsPage extends StatelessWidget {

  static const String address = '/connections';


  const ConnectionsPage ({
    super.key
  });


  @override Widget build (BuildContext context) {

    return (

      PageWrapper (
        child: Scaffold (
          appBar: const AppBarComponent (),
          body: const BodyComponent (),
          backgroundColor: context.colors.backPrime
        )
      )

    );

  }

}