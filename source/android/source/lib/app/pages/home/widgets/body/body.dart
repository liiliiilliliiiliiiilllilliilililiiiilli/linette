// Home page - Body

import 'package:flutter/material.dart';
import 'package:linette/app/modules/colors/colors.dart';
import 'package:linette/app/modules/methods/methods.dart';
import 'package:linette/app/widgets/swiper/swiper.dart';
import 'widgets/noise/noise.dart';
import 'widgets/main/main.dart';
import 'widgets/bottom/bottom.dart';



class BodyComponent extends StatelessWidget {

  const BodyComponent ({
    super.key
  });


  @override Widget build (BuildContext context) {

    void onSwipeLeft () {

      context.methods.openDrawer (context);

    }

    void onSwipeRight () {

      if (context.methods.isCurrentPageActive (context) && !context.methods.isDrawerOpened (context)) {

        context.methods.navigateTo (context, '/connections');

      }

    }


    return (

      SwiperComponent (
        onSwipeLeft: onSwipeLeft,
        onSwipeRight: onSwipeRight,
        child: Stack (
          children: [
            Noise (
              scale: 0.03 * 0.75,
              speed: 0.2 * 8 * 0.33,
              sharpness: 2,
              blurSigma: 40,
              resolution: 50,
              topDarkness: 0.8,
              topDarknessHeight: 0.375,
              primaryColor: context.colors.noisePrimary,
              secondaryColor: context.colors.noiseSecondary,
              backgroundColor: context.colors.noiseBack
            ),
            const Column (
              children: [
                Main (),
                Bottom ()
              ]
            )
          ]
        )
      )

    );

  }

}