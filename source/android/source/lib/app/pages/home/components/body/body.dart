// Home page - Body

import 'package:flutter/material.dart';
import 'components/main/main.dart';
import 'components/bottom/bottom.dart';



class BodyComponent extends StatelessWidget {

  const BodyComponent ({super.key});


  @override Widget build (BuildContext context) {

    return (

      Container (
        color: Color.fromARGB (255, 28, 51, 2),
        child: Column (
          children: [
            Main (),
            Bottom ()
          ]
        )
      )

    );

  }

}