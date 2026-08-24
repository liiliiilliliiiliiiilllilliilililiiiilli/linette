// Connections page - Body - Connections list - Connection - Country

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
        children: [
          Flag (
            flag: flag
          ),
          SizedBox (
            width: 16
          ),
          Name (
            name: name
          )
        ]
      )

    );

  }


}