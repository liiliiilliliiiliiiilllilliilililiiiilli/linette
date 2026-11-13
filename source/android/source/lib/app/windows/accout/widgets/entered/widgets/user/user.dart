// Accout window - Entered - User

import 'package:flutter/material.dart';
import 'widgets/data/data.dart';
import 'widgets/ava/ava.dart';




class User extends StatelessWidget {

  const User ({
    super.key
  });


  @override Widget build (BuildContext context) {

    return (

      const Row (
        children: [
          Ava (),
          Data ()
        ]
      )

    );

  }

}