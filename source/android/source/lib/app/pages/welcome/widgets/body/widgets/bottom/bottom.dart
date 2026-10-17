// Welcome page - Body - Bottom

import 'package:flutter/material.dart';
import 'package:linette/app/pages/welcome/widgets/body/widgets/bottom/widgets/buttongo/buttongo.dart';
import 'package:linette/app/pages/welcome/widgets/body/widgets/bottom/widgets/buttonchangelanguage/buttonchangelanguage.dart';



class Bottom extends StatelessWidget {

  const Bottom ({
    super.key
  });


  @override Widget build (BuildContext context) {

    return (

      const Column (
        spacing: 24,
        children: [
          ButtonGo (),
          ButtonChangeLanguage ()
        ]
      )

    );

  }

}