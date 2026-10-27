// Arsenal window

import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:linette/app/modules/colors/colors.dart';
import 'package:linette/app/modules/texts/texts.dart';
import 'package:linette/app/widgets/window/window.dart';



class ArsenalWindow extends HookWidget {

  const ArsenalWindow ({
    super.key
  });


  @override Widget build (BuildContext context) {

    Future openLink () async {

      final String link = context.texts.windowFeedbackCenter_2_Link;
      final Uri url = Uri.parse (link);

      if (await canLaunchUrl (url)) {

        await launchUrl (url);

      }

    }


    final ValueNotifier <bool> isPressed = useState (false);

    final TapGestureRecognizer gestureRecognizer = useMemoized (() {

      return TapGestureRecognizer ();

    }, []);


    gestureRecognizer
      ..onTapDown = (_) {
        isPressed.value = true;
      }
      ..onTapUp = (_) {
        isPressed.value = false;
        openLink ();
      }
      ..onTapCancel = () {
        isPressed.value = false;
      };


    useEffect (() {

      return gestureRecognizer.dispose;

    }, [gestureRecognizer]);


    final Color linkColor = isPressed.value
      ? context.colors.linkPressed
      : context.colors.link;


    return (

      Window (
        width: 340,
        title: context.texts.windowArsenalTop,
        body: SingleChildScrollView (
          child: Padding (
            padding: const EdgeInsets.only (
              top: 10
            ),
            child: Text.rich (
              TextSpan (
                style: const TextStyle (
                  fontFamily: 'Fedoka',
                  fontWeight: FontWeight.w400,
                  fontSize: 16
                ),
                children: [
                  TextSpan (
                    text: context.texts.windowFeedbackCenter_1,
                    style: TextStyle (
                      color: context.colors.windowMainText
                    )
                  ),
                  TextSpan (
                    text: context.texts.windowFeedbackCenter_2,
                    style: TextStyle (
                      color: linkColor,
                    ),
                    recognizer: gestureRecognizer
                  ),
                  TextSpan (
                    text: context.texts.windowFeedbackCenter_3,
                    style: TextStyle (
                      color: context.colors.windowMainText
                    )
                  )
                ]
              )
            )
          )
        ),
        action: context.texts.windowArsenalBottom
      )

    );

  }

}