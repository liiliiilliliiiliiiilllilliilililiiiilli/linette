// Home page - Drawer - Main - Feedback option - Feedback window - Body

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:linette/app/localization/generated/l10n.dart';
import 'package:linette/app/theme/colors/colors.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/gestures.dart';



class BodyComponent extends HookWidget {

  const BodyComponent ({super.key});


  @override Widget build (BuildContext context) {

    Future openLink () async {

      final link = T.of(context).linkTelegramChannel;
      final Uri url = Uri.parse (link);

      if (await canLaunchUrl (url)) {

        await launchUrl (url);

      }

    }


    final isPressed = useState (false);

    final gestureRecognizer = useMemoized (() {

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

      Container (
        padding: const EdgeInsets.symmetric (
          horizontal: 20
        ),
        child: Stack (
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
            ),
            Positioned (
              top: 0,
              left: 0,
              right: 0,
              height: 15,
              child: IgnorePointer (
                child: Container (
                  decoration: BoxDecoration (
                    gradient: LinearGradient (
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        context.colors.windowMainBack,
                        context.colors.windowMainBack.withAlpha (0)
                      ]
                    )
                  )
                )
              )
            )
          ]
        )
      )

    );

  }

}