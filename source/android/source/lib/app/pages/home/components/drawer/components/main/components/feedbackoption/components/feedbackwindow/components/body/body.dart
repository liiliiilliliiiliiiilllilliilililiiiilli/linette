// Home page - Drawer - Main - Feedback option - Feedback window - Body

import 'package:flutter/material.dart';
import 'package:linette/app/theme/colors.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/gestures.dart';



class BodyComponent extends StatelessWidget {

  const BodyComponent ({super.key});


  @override Widget build (BuildContext context) {

    final String text_1 = 'Новости сервиса публикуются в ';
    final String text_2 = 'официальном Telegram-канале';
    final String text_3 = '.';

    final String link = 'https://t.me/LinetteTelegramChannel';


    Future openLink () async {

      final Uri url = Uri.parse (link);

      if (await canLaunchUrl (url)) {

        await launchUrl (url);

      }

    }


    return (

      Container (
        padding: EdgeInsets.symmetric (
          horizontal: 20
        ),
        child: Stack (
          children: [
            SingleChildScrollView (
              child: Padding (
                padding: EdgeInsets.only (
                  top: 10
                ),
                child: RichText (
                  text: TextSpan (
                    style: TextStyle (
                      fontFamily: 'Fedoka',
                      fontWeight: FontWeight.w400,
                      fontSize: 16
                    ),
                    children: [
                      TextSpan (
                        text: text_1,
                        style: TextStyle (
                          color: context.colors.windowMainText
                        )
                      ),
                      TextSpan (
                        text: text_2,
                        style: TextStyle (
                          color: context.colors.windowMainText
                        ),
                        recognizer: TapGestureRecognizer()..onTap = openLink
                      ),
                      TextSpan (
                        text: text_3,
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