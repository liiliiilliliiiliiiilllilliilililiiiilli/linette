// Home page - Body - Main

import 'package:flutter/material.dart';
import 'widgets/status/status.dart';
import 'widgets/connect/connect.dart';
import 'widgets/states/states.dart';



class Main extends StatelessWidget {

  const Main ({super.key});


  @override Widget build (BuildContext context) {

    return (

      Expanded (
        child: Container (
          padding: const EdgeInsets.only (
            top: 28,
            bottom: 15
          ),
          child: const Column (
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