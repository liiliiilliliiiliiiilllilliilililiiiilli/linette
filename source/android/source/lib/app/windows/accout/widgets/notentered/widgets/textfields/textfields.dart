// Accout window - Not entered - Text fields

import 'package:flutter/material.dart';
import 'package:linette/app/modules/texts/texts.dart';
import 'package:linette/app/widgets/textfield/textfield.dart';



class TextFields extends StatelessWidget {

  const TextFields ({
    super.key
  });


  @override Widget build (BuildContext context) {

    return (

      Column (
        spacing: 16 / 1.5,
        children: [
          TextFieldComponent (context.texts.windowAccountNotEnteredBodyTextFieldLogin),
          TextFieldComponent (context.texts.windowAccountNotEnteredBodyTextFieldPassword)
        ]
      )

    );

  }

}