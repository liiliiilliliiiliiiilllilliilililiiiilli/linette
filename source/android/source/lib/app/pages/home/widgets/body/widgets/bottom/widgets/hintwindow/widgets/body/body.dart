// Home page - Body - Bottom - Hint window - Body

import 'package:flutter/material.dart';
import 'package:linette/app/localization/generated/l10n.dart';
import 'package:linette/app/theme/colors/colors.dart';



class BodyComponent extends StatelessWidget {

  const BodyComponent ({super.key});


  @override Widget build (BuildContext context) {

    final String text = T.of(context).serviceDescription;


    return (

      Expanded (
        child: Container (
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
                  child: Text (
                    text,
                    style: TextStyle (
                      fontFamily: 'Fedoka',
                      fontWeight: FontWeight.w400,
                      fontSize: 16,
                      color: context.colors.windowMainText
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
      )

    );

  }

}