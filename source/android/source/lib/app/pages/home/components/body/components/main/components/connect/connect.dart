// Home page - Body - Main - Connect

import 'package:flutter/material.dart';
import 'components/connectionbutton/connectionbutton.dart';
import 'components/taphint/taphint.dart';
import 'components/chooseconnectionbutton/chooseconnectionbutton.dart';



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