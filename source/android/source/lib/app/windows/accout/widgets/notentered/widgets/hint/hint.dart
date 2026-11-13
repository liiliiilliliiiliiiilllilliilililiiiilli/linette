// Accout window - Not entered - Hint

import 'package:flutter/material.dart';
import 'widgets/text/text.dart';
import 'widgets/textlink/textlink.dart';



class Hint extends StatelessWidget {

  const Hint ({
    super.key
  });


  @override Widget build (BuildContext context) {

    return (

      const Center (
        child: Column (
          spacing: 16,
          children: [
            TextComponent (),
            TextLink ()
          ]
        )
      )

    );

  }

}