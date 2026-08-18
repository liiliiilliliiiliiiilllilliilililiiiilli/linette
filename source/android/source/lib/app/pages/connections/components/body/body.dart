// Connections page - Body

import 'package:flutter/material.dart';
import 'package:linette/app/theme/icons.dart';
import 'components/liner/liner.dart';
import 'components/connections/connections.dart';
import 'components/connections/components/connection/model/model.dart';



class BodyComponent extends StatelessWidget {

  const BodyComponent ({super.key});


  @override Widget build (BuildContext context) {

    final String textNetherlands = 'Нидерланды';
    final String textFinland = 'Финляндия';
    final String textGermany = 'Германия';


    return (

      Container (
        color: Colors.black,
        padding: EdgeInsets.only (
          top: 30
        ),
        child: Column (
          spacing: 16,
          children: [
            Liner (
              onlineNum: 3
            ),
            Connections (
              connections: [
                ConnectionModel (
                  flag: context.icons.flagNetherlands,
                  name: textNetherlands,
                  isChosen: true,
                  isAvailable: false
                ),
                ConnectionModel (
                  flag: context.icons.flagFinland,
                  name: textFinland,
                  isChosen: false,
                  isAvailable: false
                ),
                ConnectionModel (
                  flag: context.icons.flagGermany,
                  name: textGermany,
                  isChosen: false,
                  isAvailable: false
                )
              ]
            )
          ]
        )
      )

    );

  }

}