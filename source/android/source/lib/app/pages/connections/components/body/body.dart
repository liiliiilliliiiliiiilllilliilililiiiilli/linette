// Connections page - Body

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:linette/app/localization/generated/l10n.dart';
import 'package:linette/app/theme/icons.dart';
import 'package:linette/app/theme/colors.dart';
import 'components/liner/liner.dart';
import 'components/connections/connections.dart';
import 'components/connections/components/connection/model/model.dart';



class BodyComponent extends HookWidget {

  const BodyComponent ({super.key});


  @override Widget build (BuildContext context) {

    final String textNetherlands = T.of(context).netherlands;
    final String textFinland = T.of(context).finland;
    final String textGermany = T.of(context).germany;


    final chosen = useState ('Нидерланды');


    const safeZone = 38;

    final startX = useState <double> (0.0);


    void onHorizontalDragStart (details) {

      startX.value = details.globalPosition.dx;

    }


    void onHorizontalDragUpdate (details) {

      if (details.delta.dx > 10) {

        if (startX.value < safeZone) return;

        Navigator.pop (context);

      }

    }


    return (

      GestureDetector (
        onHorizontalDragStart: onHorizontalDragStart,
        onHorizontalDragUpdate: onHorizontalDragUpdate,
        child: Container (
          color: Colors.transparent,
          child: Container (
            color: context.colors.back,
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
        )
      )

    );

  }

}