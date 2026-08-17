// Home page - Body - Main

import 'package:flutter/material.dart';
import 'components/connect/connect.dart';
import 'components/sets/sets.dart';
import 'components/status/status.dart';



class Main extends StatelessWidget {

  const Main ({super.key});


  @override Widget build (BuildContext context) {

    return (

      Column (
        children: [
          Status (),
          Connect (),
          Sets ()
        ]
      )

    );

  }

}