// Home page - Body

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:linette/app/theme/colors/colors.dart';
import 'widgets/noise/noise.dart';
import 'widgets/main/main.dart';
import 'widgets/bottom/bottom.dart';



class BodyComponent extends HookWidget {

  const BodyComponent ({super.key});


  @override Widget build (BuildContext context) {

    const safeZone = 38;

    final startX = useState <double> (0.0);

    final screenWidth = MediaQuery.of(context).size.width;


    void onHorizontalDragStart (details) {

      startX.value = details.globalPosition.dx;

    }


    void onHorizontalDragUpdate (details) {

      if (details.delta.dx > 10) {

        if (startX.value < safeZone) return;

        Scaffold.of(context).openDrawer ();

      }

      else if (details.delta.dx < -10) {

        if (startX.value > (screenWidth - safeZone)) return;

        Navigator.pushNamed (context, '/connections');

      }

    }


    return (

      GestureDetector (
        onHorizontalDragStart: onHorizontalDragStart,
        onHorizontalDragUpdate: onHorizontalDragUpdate,
        child: Container (
          color: Colors.transparent,
          child: Stack (
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
        )
      )

    );

  }

}