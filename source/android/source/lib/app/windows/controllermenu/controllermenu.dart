// Controller menu window

import 'package:flutter/material.dart';
import 'package:linette/app/modules/colors/colors.dart';
import 'widgets/controllers/controllers.dart';
import 'widgets/hint/hint.dart';



class ControllerMenuWindow extends StatelessWidget {

  const ControllerMenuWindow ({
    super.key
  });


  @override Widget build (BuildContext context) {

    return (

      Material (
        type: MaterialType.transparency,
        child: Container (
          decoration: BoxDecoration (
            boxShadow: [
              BoxShadow (
                blurRadius: 12,
                spreadRadius: 5,
                offset: const Offset (0, 10),
                color: context.colors.windowShadow
              )
            ]
          ),
          child: ClipRRect (
            borderRadius: BorderRadius.circular (8),
            child: ConstrainedBox (
              constraints: const BoxConstraints (
                maxHeight: 500
              ),
              child: Container (
                width: 300,
                color: context.colors.windowBodyBack,
                child: const Padding (
                  padding: EdgeInsets.symmetric (
                    horizontal: 16,
                    vertical: 12
                  ),
                  child: Column (
                    mainAxisSize: MainAxisSize.min,
                    spacing: 12,
                    children: [
                      Controllers (),
                      Hint ()
                    ]
                  )
                )
              )
            )
          )
        )
      )

    );

  }

}