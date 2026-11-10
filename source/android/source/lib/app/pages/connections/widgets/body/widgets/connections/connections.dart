// Connections page - Body - Connections

import 'package:flutter/material.dart';
import 'widgets/connection/connection.dart';



class Connections extends StatelessWidget {

  final List <Connection> connections;


  const Connections (
    this.connections, {
    super.key
  });


  @override Widget build (BuildContext context) {

    return (

      Padding (
        padding: const EdgeInsets.symmetric (
          horizontal: 5
        ),
        child: Column (
          spacing: 11,
          children: connections
        )
      )

    );

  }

}