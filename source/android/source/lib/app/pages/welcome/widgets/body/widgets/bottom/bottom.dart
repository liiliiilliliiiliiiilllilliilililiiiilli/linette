// Welcome page - Body - Bottom

import 'package:flutter/material.dart';
import 'widgets/buttongo/buttongo.dart';
import 'widgets/buttonchangelanguage/buttonchangelanguage.dart';



class Bottom extends StatelessWidget {

  const Bottom ({
    super.key
  });


  @override Widget build (BuildContext context) {

    return (

      const Column (
        spacing: 24 - 8 * 2,
        children: [
          ButtonGo (),
          ButtonChangeLanguage ()
        ]
      )

    );

  }

}