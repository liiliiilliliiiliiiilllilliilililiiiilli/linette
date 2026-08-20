// Connections page - Body

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:linette/app/theme/icons.dart';
import 'package:linette/app/theme/colors.dart';
import 'components/liner/liner.dart';
import 'components/connections/connections.dart';
import 'components/connections/components/connection/model/model.dart';



class BodyComponent extends HookWidget {

  const BodyComponent ({super.key});


  @override Widget build (BuildContext context) {

    final String textNetherlands = 'Нидерланды';
    final String textFinland = 'Финляндия';
    final String textGermany = 'Германия';


    final chosen = useState ('Нидерланды');


    return (

      Container (
        color: context.colors.black,
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
                  isChosen: chosen.value == textNetherlands,
                  isAvailable: false,
                  onTap: () => {chosen.value = textNetherlands}
                ),
                ConnectionModel (
                  flag: context.icons.flagFinland,
                  name: textFinland,
                  isChosen: chosen.value == textFinland,
                  isAvailable: false,
                  onTap: () => {chosen.value = textFinland}
                ),
                ConnectionModel (
                  flag: context.icons.flagGermany,
                  name: textGermany,
                  isChosen: chosen.value == textGermany,
                  isAvailable: false,
                  onTap: () => {chosen.value = textGermany}
                )
              ]
            )
          ]
        )
      )

    );

  }

}