// Connections page - Body - Connections list - Connection - Country - Name

import 'package:flutter/material.dart';
import 'package:linette/app/themes/themes.dart';



class Name extends StatelessWidget {

  final String name;


  const Name ({
    super.key,
    required String this.name
  });


  @override Widget build (BuildContext context) {

    final q = this.name == 'netherlands' ? 'Нидерланды' : this.name == 'finland' ? 'Финляндия' : this.name == 'germany' ? 'Германия' : 'Нидерланды';


    return (

      Transform.translate (
        offset: Offset (0, -1),
        child: Text (
          q,
          style: TextStyle (
            fontFamily: 'Archivo',
            fontWeight: FontWeight.w600,
            fontSize: 16.5,
            color: context.colors.white
          )
        )
      )

    );

  }

}