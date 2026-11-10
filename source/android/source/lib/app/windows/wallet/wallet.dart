// Wallet window

import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:linette/app/modules/colors/colors.dart';
import 'package:linette/app/modules/methods/methods.dart';
import 'package:linette/app/modules/texts/texts.dart';
import 'package:linette/app/widgets/window/window.dart';



class WalletWindow extends HookWidget {

  const WalletWindow ({
    super.key
  });


  @override Widget build (BuildContext context) {

    final ValueNotifier <bool> isPressed = useState (false);


    final TapGestureRecognizer gestureRecognizer = useMemoized (() {

      return TapGestureRecognizer ();

    }, []);


    void onTapDown (TapDownDetails details) {

      isPressed.value = true;

    }

    Future <void> onTapUp (TapUpDetails details) async {

      isPressed.value = false;

      await context.methods.openLink (context.texts.windowFeedbackBody_2_Link);

    }

    void onTapCancel () {

      isPressed.value = false;

    }


    gestureRecognizer
      ..onTapDown = onTapDown
      ..onTapUp = onTapUp
      ..onTapCancel = onTapCancel;


    useEffect (() {

      return gestureRecognizer.dispose;

    }, [gestureRecognizer]);


    final Color linkColor = isPressed.value
      ? context.colors.linkPressed
      : context.colors.link;


    return (

      Window (
        width: 340,
        title: context.texts.windowWalletTitle,
        body: SingleChildScrollView (
          child: Padding (
            padding: const EdgeInsets.only (
              top: 10,
              bottom: 2.5
            ),
            child: Text.rich (
              TextSpan (
                style: const TextStyle (
                  fontWeight: FontWeight.w400,
                  fontSize: 16
                ),
                children: [
                  TextSpan (
                    text: context.texts.windowFeedbackBody_1,
                    style: TextStyle (
                      color: context.colors.windowMainText
                    )
                  ),
                  TextSpan (
                    text: context.texts.windowFeedbackBody_2,
                    style: TextStyle (
                      color: linkColor,
                    ),
                    recognizer: gestureRecognizer
                  ),
                  TextSpan (
                    text: context.texts.windowFeedbackBody_3,
                    style: TextStyle (
                      color: context.colors.windowMainText
                    )
                  )
                ]
              )
            )
          )
        ),
        action: context.texts.windowWalletAction
      )

    );

  }

}