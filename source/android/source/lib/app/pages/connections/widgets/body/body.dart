// Connections page - Body

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:linette/app/modules/colors/colors.dart';
import 'package:linette/app/modules/icons/icons.dart';
import 'package:linette/app/modules/texts/texts.dart';
import 'widgets/liner/liner.dart';
import 'widgets/connections/connections.dart';
import 'widgets/connections/widgets/connection/models/connection/connection.dart';



class BodyComponent extends HookWidget {

  const BodyComponent ({
    super.key
  });


  @override Widget build (BuildContext context) {

    final String textNetherlands = context.texts.pageConnectionsBodyListConnectionCountryNetherlands;
    final String textFinland = context.texts.pageConnectionsBodyListConnectionCountryFinland;
    final String textGermany = context.texts.pageConnectionsBodyListConnectionCountryGermany;


    final ValueNotifier <String> chosen = useState (textNetherlands);


    const double safeZone = 38;

    final ValueNotifier <double> startX = useState (0.0);


    void onHorizontalDragStart (details) {

      startX.value = details.globalPosition.dx;

    }


    void onHorizontalDragUpdate (details) {

      if (details.delta.dx > 10) {

        if (startX.value < safeZone) {

          return;

        }

        Navigator.pop (context);

      }

    }


    return (

      GestureDetector (
        onHorizontalDragStart: onHorizontalDragStart,
        onHorizontalDragUpdate: onHorizontalDragUpdate,
        child: Container (
          color: context.colors.transparent,
          child: Container (
            color: context.colors.back,
            padding: const EdgeInsets.only (
              top: 30
            ),
            child: Column (
              spacing: 16,
              children: [
                const Liner (
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