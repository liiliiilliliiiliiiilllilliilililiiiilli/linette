// Welcome page - Body - Top

import 'package:flutter/material.dart';
import 'package:linette/app/localization/generated/l10n.dart';
import 'package:linette/app/theme/colors/colors.dart';



class Top extends StatelessWidget {

  const Top ({
    super.key
  });


  @override Widget build (BuildContext context) {

    return (

      Column (
        children: [
          Text.rich (
            TextSpan (
              style: const TextStyle (
                fontFamily: 'Fredoka',
                fontWeight: FontWeight.w600,
                fontSize: 41
              ),
              children: [
                TextSpan (
                  text: T.of(context).welcomeTitleDot,
                  style: TextStyle (
                    fontWeight: FontWeight.w500,
                    color: context.colors.prime
                  )
                ),
                TextSpan (
                  text: T.of(context).welcomeTitle,
                  style: TextStyle (
                    color: context.colors.textTitle
                  )
                ),
                TextSpan (
                  text: T.of(context).welcomeTitleDot,
                  style: TextStyle (
                    fontWeight: FontWeight.w500,
                    color: context.colors.prime
                  )
                )
              ]
            )
          ),
          Text (
            T.of(context).welcomeSubtitle,
            style: TextStyle (
              fontFamily: 'Archivo',
              fontWeight: FontWeight.w500,
              fontSize: 20,
              color: context.colors.textTitle
            )
          )
        ]
      )

    );

  }

}