// Connections page - Body - Connections list - Connection - Availability status

import 'package:flutter/material.dart';



class AvailabilityStatus extends StatelessWidget {

  final bool isAvailable;


  const AvailabilityStatus ({
    super.key,
    required this.isAvailable
  });


  @override Widget build (BuildContext context) {

    final Color color = isAvailable ? Colors.green : Colors.red;


    return (

      Container (
        width: 8,
        height: 8,
        decoration: BoxDecoration (
          borderRadius: BorderRadius.circular (1000),
          color: color
        )
      )

    );

  }

}