// Home page - Body

import 'package:flutter/material.dart';
import 'package:linette/app/modules/colors/colors.dart';
import 'package:linette/app/widgets/slider/slider.dart';
import 'widgets/noise/noise.dart';
import 'widgets/main/main.dart';
import 'widgets/bottom/bottom.dart';



class BodyComponent extends StatelessWidget {

  const BodyComponent ({
    super.key
  });


  @override Widget build (BuildContext context) {

    void onSwipeLeft () {

      Scaffold.of(context).openDrawer();

    }

    void onSwipeRight () {

      if ((ModalRoute.of(context)?.isCurrent ?? true) && !(Scaffold.of(context).isDrawerOpen)) {  // Если текущий экран активен (т.е. поверх него ничего нет) и если не открыто боковое меню

        Navigator.pushNamed (context, '/connections');

      }

    }


    return (

      SliderComponent (
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