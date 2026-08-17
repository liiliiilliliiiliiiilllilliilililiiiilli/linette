// Connections page - Body - Connections list - Connection - Country

import 'package:flutter/material.dart';
import 'components/flag/flag.dart';
import 'components/name/name.dart';



class Country extends StatelessWidget {

  final String name;


  const Country ({
    super.key,
    required String this.name
  });


  @override Widget build (BuildContext context) {

    return (

      Row (
        children: [
          Flag (
            name: name
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