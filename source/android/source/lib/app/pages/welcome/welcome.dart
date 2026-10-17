// Welcome page

import 'package:flutter/material.dart';
import 'package:linette/app/theme/colors/colors.dart';
import 'widgets/body/body.dart';



class Welcome extends StatelessWidget {

  const Welcome ({
    super.key
  });


  @override Widget build (BuildContext context) {

    return (

      Scaffold (
        body: const BodyComponent (),
        backgroundColor: context.colors.appBarBack
      )

    );

  }

}