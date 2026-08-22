// Home page - Body - Main

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'components/status/status.dart';
import 'components/connect/connect.dart';
import 'components/states/states.dart';



class Main extends HookWidget {

  const Main ({super.key});


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

      Expanded (
        child: GestureDetector (
          onHorizontalDragStart: onHorizontalDragStart,
          onHorizontalDragUpdate: onHorizontalDragUpdate,
          child: Container (
            color: Colors.transparent,
            child: Container (
              padding: EdgeInsets.only (
                top: 28,
                bottom: 15
              ),
              child: Column (
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Status (),
                  Connect (),
                  States ()
                ]
              )
            )
          )
        )
      )

    );

  }

}