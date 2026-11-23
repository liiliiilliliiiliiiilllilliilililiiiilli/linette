// Accout window - Not entered

import 'package:flutter/material.dart';
import 'package:linette/app/modules/texts/texts.dart';
import 'package:linette/app/widgets/window/widgets/body/widgets/title/title.dart';
import 'package:linette/app/widgets/textfield/textfield.dart';
import 'package:linette/app/windows/accout/widgets/notentered/widgets/hint/hint.dart';




class NotEntered extends StatelessWidget {

  const NotEntered ({
    super.key
  });


  @override Widget build (BuildContext context) {

    return (

      Column (
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: 16,
        children: [
          TitleComponent (context.texts.windowAccountNotEnteredBodyTitle),
          Column (
            spacing: 16 / 1.5,
            children: [
              TextFieldComponent (context.texts.windowAccountNotEnteredBodyTextFieldLogin),
              TextFieldComponent (context.texts.windowAccountNotEnteredBodyTextFieldPassword)
            ]
          ),
          const Hint ()
        ]
      )

    );

  }

}