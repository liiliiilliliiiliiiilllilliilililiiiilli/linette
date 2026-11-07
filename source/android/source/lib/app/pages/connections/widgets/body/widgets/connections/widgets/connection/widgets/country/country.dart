// Connections page - Body - Connections - Connection - Country

import 'package:flutter/material.dart';
import 'widgets/flag/flag.dart';
import 'widgets/name/name.dart';



class Country extends StatelessWidget {

  final String flag;
  final String name;


  const Country ({
    super.key,
    required this.flag,
    required this.name
  });


  @override Widget build (BuildContext context) {

    return (

      Row (
        spacing: 16,
        children: [
          Flag (
            flag: flag
          ),
          Name (
            name: name
          )
        ]
      )

    );

  }

}