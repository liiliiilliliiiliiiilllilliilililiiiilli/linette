// Connections page - Body - Connections list

import 'package:flutter/material.dart';
import 'components/connection/connection.dart';



class ConnectionsList extends StatelessWidget {

  // final List <Connection> connections;


  const ConnectionsList ({
    super.key,
    // required this.connections
  });


  @override Widget build (BuildContext context) {

    return (

      Container (
        padding: EdgeInsets.fromLTRB (5, 0, 5, 0),
        child: Column (
          spacing: 11,
          children: [
            Connection (
              name: 'netherlands',
              isChosen: true,
              isAvailable: false
            ),
            Connection (
              name: 'finland',
              isChosen: false,
              isAvailable: false
            ),
            Connection (
              name: 'germany',
              isChosen: false,
              isAvailable: false
            )
          ]
        )
      )

    );

  }

}