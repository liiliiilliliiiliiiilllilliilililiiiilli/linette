// Accout window - Entered

import 'package:flutter/material.dart';
import 'widgets/user/user.dart';
import 'widgets/actions/actions.dart';



class Entered extends StatelessWidget {

  const Entered ({
    super.key
  });


  @override Widget build (BuildContext context) {

    return (

      const Column (
        children: [
          User (),
          ActionsComponent ()
        ]
      )

    );

  }

}