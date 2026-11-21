// Accout window - Not entered - Hint

import 'package:flutter/material.dart';
import 'package:linette/app/modules/colors/colors.dart';
import 'package:linette/app/modules/icons/icons.dart';
import 'package:linette/app/modules/texts/texts.dart';
import 'package:linette/app/widgets/link/link.dart';
import 'package:linette/app/widgets/link/models/type/type.dart';
import 'package:linette/app/widgets/link/models/icon/icon.dart';



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
                fontWeight: FontWeight.w500,
                fontSize: 15.5,
                color: context.colors.windowBodyTextAuxiliary
              )
            ),
            Transform.translate (
              offset: const Offset ((8 + 15.5) / 2, 0),  // Компенсирование наличия иконки
              child: Link (
                context.texts.windowAccountNotEnteredBodyHint_2,
                type: LinkType.internal,
                iconRight: LinkIcon (context.icons.linkEnter),
                onPress: onPress
              )
            )
          ]
        )
      )

    );

  }

}