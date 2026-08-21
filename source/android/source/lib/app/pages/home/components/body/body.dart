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
            backgroundColor: context.colors.noiseBackground,
            primaryColor: context.colors.noisePrimary,
            secondaryColor: context.colors.noiseSecondary,
            scale: 0.03 * 0.75,
            speed: 0.2 * 8 * 0.33,
            sharpness: 2.0,
            blurSigma: 40.0,
            resolution: 50,
            topDarkness: 0.8,
            topDarknessHeight: 0.375
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