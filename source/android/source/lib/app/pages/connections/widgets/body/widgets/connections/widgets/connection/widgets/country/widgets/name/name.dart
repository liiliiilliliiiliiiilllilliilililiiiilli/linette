// Connections page - Body - Connections list - Connection - Country - Name

import 'package:flutter/material.dart';
import 'package:linette/app/modules/colors/colors.dart';
import 'package:linette/app/modules/fonts/fonts.dart';



class Name extends StatelessWidget {

  final String name;


  const Name ({
    super.key,
    required this.name
  });


  @override Widget build (BuildContext context) {

    return (

      Transform.translate (
        offset: const Offset (0, -1),
        child: Text (
          name,
          style: TextStyle (
            fontFamily: context.fonts.archivo,
            fontWeight: FontWeight.w600,
            fontSize: 16.5,
            color: context.colors.textCountryName
          )
        )
      )

    );

  }

}