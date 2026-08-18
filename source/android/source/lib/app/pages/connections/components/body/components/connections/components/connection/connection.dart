// Connections page - Body - Connections list - Connection

import 'package:flutter/material.dart';
import 'package:linette/app/theme/colors.dart';
import 'components/country/country.dart';
import 'components/choicestatus/choicestatus.dart';
import 'components/availabilitystatus/availabilitystatus.dart';
import 'model/model.dart';



class Connection extends StatelessWidget {

  final ConnectionModel model;


  const Connection ({
    super.key,
    required this.model
  });


  @override Widget build (BuildContext context) {

    final Color colorOutline = model.isChosen ? context.colors.primeChoice : context.colors.block;


    return (

      Container (
        padding: EdgeInsets.fromLTRB (16 + 4, 14, 32 + 4, 14),
        decoration: BoxDecoration (
          color: context.colors.block,
          border: Border.all (
            color: colorOutline,
            width: 2
          ),
          borderRadius: BorderRadius.circular (16)
        ),
        child: Row (
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Country (
              flag: model.flag,
              name: model.name
            ),
            ChoiceStatus (
              isChosen: model.isChosen
            ),
            AvailabilityStatus (
              isAvailable: model.isAvailable
            )
          ]
        )
      )

    );

  }

}