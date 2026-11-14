// Accout window - Not entered - Hint

import 'package:flutter/material.dart';
import 'package:linette/app/modules/colors/colors.dart';
import 'package:linette/app/modules/fonts/fonts.dart';
import 'package:linette/app/modules/icons/icons.dart';
import 'package:linette/app/modules/texts/texts.dart';
import 'package:linette/app/widgets/textlink/textlink.dart';
import 'package:linette/app/widgets/textlink/models/icon/icon.dart';
import 'package:linette/app/widgets/textlink/models/type/type.dart';



class Hint extends StatelessWidget {

  const Hint ({
    super.key
  });


  @override Widget build (BuildContext context) {

    void onPress () {

      return;

    }


    return (

      Center (
        child: Column (
          spacing: 16,
          children: [
            Text (
              context.texts.windowAccountNotEnteredBodyHint_1,
              style: TextStyle (
                fontFamily: context.fonts.archivo,
                fontWeight: FontWeight.w500,
                fontSize: 15.5,
                color: context.colors.windowMainTextAuxiliary
              )
            ),
            Transform.translate (
              offset: const Offset ((8 + 15.5) / 2, 0),  // Компенсирование наличия иконки
              child: TextLink (
                context.texts.windowAccountNotEnteredBodyHint_2,
                type: TextLinkType.internal,
                iconRight: TextLinkIcon (context.icons.linkEnter),
                onPress: onPress
              )
            )
          ]
        )
      )

    );

  }

}