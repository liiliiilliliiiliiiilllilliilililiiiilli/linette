// Home page - Body - Main

import 'package:flutter/material.dart';
import 'components/status/status.dart';
import 'components/connect/connect.dart';
import 'components/states/states.dart';



class Main extends StatelessWidget {

  const Main ({super.key});


  @override Widget build (BuildContext context) {

    return (

      Expanded (
        child: Container (
          padding: EdgeInsets.only (
            top: 28,
            bottom: 15
          ),
          child: Column (
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Status (),
              Connect (),
              States ()
            ]
          )
        )
      )
    );

  }

}