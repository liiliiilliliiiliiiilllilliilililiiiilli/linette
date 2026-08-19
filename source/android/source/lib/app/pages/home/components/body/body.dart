// Home page - Body

import 'package:flutter/material.dart';
import 'package:linette/app/theme/colors.dart';
import 'components/noise/noise.dart';
import 'components/main/main.dart';
import 'components/bottom/bottom.dart';



class BodyComponent extends StatelessWidget {

  const BodyComponent ({super.key});


  @override Widget build (BuildContext context) {

    return (

      Stack (
        children: [
          Noise (
            backgroundColor: context.colors.black,
            primaryColor: context.colors.primeGlow,
            secondaryColor: context.colors.black,
            scale: 0.03 * 0.75,
            speed: 0.2 * 8 * 0.33,
            sharpness: 2.0,
            blurSigma: 40.0,
            resolution: 50,
            topDarkness: 1,
            topDarknessHeight: 0.33
          ),
          Column (
            children: [
              Main (),
              Bottom ()
            ]
          )
        ]
      )

    );

  }

}