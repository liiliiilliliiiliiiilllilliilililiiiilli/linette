// Connections page - Body - Connections list - Connection

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:linette/app/theme/colors.dart';
import 'package:linette/app/elements/presser/presser.dart';
import 'package:linette/app/elements/animatorpresser/animatorpresser.dart';
import 'components/country/country.dart';
import 'components/choicestatus/choicestatus.dart';
import 'components/availabilitystatus/availabilitystatus.dart';
import 'model/model.dart';



class Connection extends HookWidget {

  final ConnectionModel model;


  const Connection ({
    super.key,
    required this.model
  });


  @override Widget build (BuildContext context) {

    final isPressed = useState (false);


    final Color colorOutline = model.isChosen ? context.colors.primeChoice : context.colors.block;


    return (

      Presser (
        isPressed: isPressed,
        handleTap: model.onTap,
        child: AnimatorPresser (
          isPressed: isPressed,
          scaleRate: 0.975,
          child: Container (
            padding: EdgeInsets.fromLTRB (16 + 4, 14, 32 + 4, 14),
            decoration: BoxDecoration (
              border: Border.all (
                width: 2,
                color: colorOutline
              ),
              borderRadius: BorderRadius.circular (16),
              color: context.colors.block
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
        )
      )

    );

  }

}