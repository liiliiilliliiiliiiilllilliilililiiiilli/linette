// Connections page - Body - Connections list

import 'package:flutter/material.dart';
import 'components/connection/connection.dart';
import 'components/connection/model/model.dart';



class Connections extends StatelessWidget {

  final List <ConnectionModel> connections;


  const Connections ({
    super.key,
    required this.connections
  });


  @override Widget build (BuildContext context) {

    return (

      Container (
        padding: EdgeInsets.fromLTRB (5, 0, 5, 0),
        child: Column (
          spacing: 11,
          children: [
            for (var connection in connections)
              Connection (
                model: connection
              )
          ]
        )
      )

    );

  }

}