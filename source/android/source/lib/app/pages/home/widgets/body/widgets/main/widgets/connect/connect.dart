// Home page - Body - Main - Connect

import 'package:flutter/material.dart';
import 'widgets/connectionbutton/connectionbutton.dart';
import 'widgets/taphint/taphint.dart';
import 'widgets/chooseconnectionbutton/chooseconnectionbutton.dart';



class Connect extends StatelessWidget {

  const Connect ({super.key});


  @override Widget build (BuildContext context) {

    return (

      Column (
        children: [
          ConnectionButton (),
          SizedBox (
            height: 20
          ),
          TapHint (),
          SizedBox (
            height: 28
          ),
          ChooseConnectionButton ()
        ]
      )

    );

  }

}