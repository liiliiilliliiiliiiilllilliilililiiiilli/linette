// Connections page

import 'package:flutter/material.dart';
import 'package:linette/app/modules/colors/colors.dart';
import 'widgets/appbar/appbar.dart';
import 'widgets/body/body.dart';



class ConnectionsPage extends StatelessWidget {

  const ConnectionsPage ({
    super.key
  });


  @override Widget build (BuildContext context) {

    return (

      Scaffold (
        appBar: const AppBarComponent (),
        body: const BodyComponent (),
        backgroundColor: context.colors.appBarBack
      )

    );

  }

}