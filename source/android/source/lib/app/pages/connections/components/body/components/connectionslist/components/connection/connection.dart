// Connections page - Body - Connections list - Connection

import 'package:flutter/material.dart';
import 'package:linette/app/theme/colors.dart';
import 'components/country/country.dart';
import 'components/choicestatus/choicestatus.dart';
import 'components/availabilitystatus/availabilitystatus.dart';



class Connection extends StatelessWidget {

  final String name;
  final bool isChosen;
  final bool isAvailable;


  const Connection ({
    super.key,
    required String this.name,
    required bool this.isChosen,
    required bool this.isAvailable
  });


  @override Widget build (BuildContext context) {

    final outlineColor = isChosen ? context.colors.primeChoice : context.colors.block;


    return (

      Container (
        padding: EdgeInsets.fromLTRB (16+4, 14, 32+4, 14),
        decoration: BoxDecoration (
          color: context.colors.block,
          border: Border.all (
            color: outlineColor,
            width: 2
          ),
          borderRadius: BorderRadius.circular (16)
        ),
        child: Row (
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Country (
              name: name
            ),
            ChoiceStatus (
              isChosen: isChosen
            ),
            AvailabilityStatus (
              isAvailable: isAvailable
            )
          ]
        )
      )

    );

  }

}