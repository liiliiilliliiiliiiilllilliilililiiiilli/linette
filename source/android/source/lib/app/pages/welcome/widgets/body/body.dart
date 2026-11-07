// Welcome page - Body

import 'package:flutter/material.dart';
import 'widgets/top/top.dart';
import 'widgets/main/main.dart';
import 'widgets/bottom/bottom.dart';



class BodyComponent extends StatelessWidget {

  const BodyComponent ({
    super.key
  });


  @override Widget build (BuildContext context) {

    return (

      const Stack (
        children: [
          Positioned (
            top: -1.5 * (kToolbarHeight + 10),
            left: 0,
            right: 0,
            bottom: 0,
            child: Padding (
              padding: EdgeInsets.symmetric (
                vertical: 75
              ),
              child: Column (
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Top (),
                  Main (),
                  Bottom ()
                ]
              )
            )
          )
        ]
      )

    );

  }

}