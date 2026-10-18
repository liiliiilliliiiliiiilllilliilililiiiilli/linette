// Welcome page - Body

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'widgets/top/top.dart';
import 'widgets/main/main.dart';
import 'widgets/bottom/bottom.dart';



class BodyComponent extends HookWidget {

  const BodyComponent ({
    super.key
  });


  @override Widget build (BuildContext context) {

    return (

      Stack (
        children: [
          Positioned (
            left: 0,
            top: -1.5 * (kToolbarHeight + 10),
            right: 0,
            bottom: 0,
            child: Container (
              padding: const EdgeInsets.symmetric (
                vertical: 75
              ),
              child: const Column (
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