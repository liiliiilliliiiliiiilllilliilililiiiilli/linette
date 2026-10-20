// Home page - Drawer - Main - Feedback option - Feedback window

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/gestures.dart';
import 'package:linette/app/localization/generated/l10n.dart';
import 'package:linette/app/theme/colors/colors.dart';
import 'package:linette/app/widgets/window/window.dart';



class FeedbackWindow extends HookWidget {

  const FeedbackWindow ({
    super.key
  });


  @override Widget build (BuildContext context) {

    Future openLink () async {

      final String link = T.of(context).linkTelegramChannel;
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
        title: T.of(context).feedBack,
        body: Stack (
          children: [
            SingleChildScrollView (
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
                        text: T.of(context).serviceNews_1,
                        style: TextStyle (
                          color: context.colors.windowMainText
                        )
                      ),
                      TextSpan (
                        text: T.of(context).serviceNews_2,
                        style: TextStyle (
                          color: linkColor,
                        ),
                        recognizer: gestureRecognizer
                      ),
                      TextSpan (
                        text: T.of(context).serviceNews_3,
                        style: TextStyle (
                          color: context.colors.windowMainText
                        )
                      )
                    ]
                  )
                )
              )
            )
          ]
        ),
        action: T.of(context).ok,
        width: 340
      )

    );

  }

}