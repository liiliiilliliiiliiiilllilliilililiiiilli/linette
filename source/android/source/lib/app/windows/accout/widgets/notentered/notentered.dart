// Accout window - Not entered

import 'package:flutter/material.dart';
import 'widgets/title/title.dart';
import 'widgets/textfields/textfields.dart';
import 'widgets/hint/hint.dart';



class NotEntered extends StatelessWidget {

  const NotEntered ({
    super.key
  });


  @override Widget build (BuildContext context) {

    return (

      const Column (
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: 16,
        children: [
          TitleComponent (),
          TextFields (),
          Hint ()
        ]
      )

    );

  }

}