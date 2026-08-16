// Home page

import 'package:flutter/material.dart';
import 'components/appbar.dart';
import 'components/body.dart';



class Home extends StatelessWidget {

  const Home ({super.key});


  @override build (BuildContext context) {

    return (

      Scaffold (
        appBar: AppBarComponent (),
        body: BodyComponent (),
        backgroundColor: Color (0xff070707)
      )

    );

  }

}