// Connections page

import 'package:flutter/material.dart';
import 'components/appbar.dart';
import 'components/body.dart';



class Connections extends StatelessWidget {

  const Connections ({super.key});


  @override build (BuildContext context) {

    return (

      Scaffold (
        appBar: AppBarComponent (),
        body: BodyComponent ()
      )

    );

  }

}