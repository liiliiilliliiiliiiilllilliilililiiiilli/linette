// Accout window - Entered - User

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:linette/app/widgets/presser/presser.dart';
import 'package:linette/app/widgets/presseranimator/presseranimator.dart';
import 'widgets/data/data.dart';
import 'widgets/ava/ava.dart';



class User extends HookWidget {

  const User ({
    super.key
  });


  @override Widget build (BuildContext context) {

    final isPressed = useState (false);


    void onPress () {



    }


    return (

      Presser (
        onPress: onPress,
        isPressed: isPressed,
        child: PresserAnimator (
          isPressed: isPressed,
          scaleRate: 0.9825,
          child: const Row (
            spacing: 8 * 1.5,
            children: [
              Ava (),
              Data ()
            ]
          )
        )
      )

    );

  }

}