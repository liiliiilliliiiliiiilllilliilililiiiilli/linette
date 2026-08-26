// Connections page - Body - Connections list

import 'package:flutter/material.dart';
import 'widgets/connection/connection.dart';
import 'widgets/connection/model/model.dart';



class Connections extends StatelessWidget {

  final List <ConnectionModel> connections;


  const Connections ({
    super.key,
    required this.connections
  });


  @override Widget build (BuildContext context) {

    return (

      Container (
        padding: const EdgeInsets.fromLTRB (5, 0, 5, 0),
        child: Column (
          spacing: 11,
          children: connections.map ((connection) =>
            Connection (
              model: connection
            )
          ).toList ()
        )
      )

    );

  }

}