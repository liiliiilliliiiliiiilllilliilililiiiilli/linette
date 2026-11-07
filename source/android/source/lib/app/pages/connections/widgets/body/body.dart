// Connections page - Body

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:linette/app/modules/colors/colors.dart';
import 'package:linette/app/modules/icons/icons.dart';
import 'package:linette/app/modules/texts/texts.dart';
import 'package:linette/app/widgets/slider/slider.dart';
import 'package:linette/app/widgets/liner/liner.dart';
import 'package:linette/app/pages/connections/widgets/body/widgets/connections/widgets/connection/connection.dart';
import 'widgets/connections/connections.dart';



class BodyComponent extends HookWidget {

  const BodyComponent ({
    super.key
  });


  @override Widget build (BuildContext context) {

    final String textNetherlands = context.texts.pageConnectionsBodyListConnectionCountryNetherlands;
    final String textFinland = context.texts.pageConnectionsBodyListConnectionCountryFinland;
    final String textGermany = context.texts.pageConnectionsBodyListConnectionCountryGermany;


    final ValueNotifier <String> chosen = useState (textNetherlands);


    void onSwipeLeft () {

      Navigator.pop (context);

    }


    return (

      SliderComponent (
        onSwipeLeft: onSwipeLeft,
        child: Container (
          padding: const EdgeInsets.only (
            top: 30
          ),
          color: context.colors.back,
          child: Column (
            spacing: 16,
            children: [
              Liner (
                context.texts.pageConnectionsBodyLiner (3)
              ),
              Connections (
                connections: [
                  Connection (
                    onPress: () => {chosen.value = textNetherlands},
                    flag: context.icons.flagNetherlands,
                    name: textNetherlands,
                    isChosen: chosen.value == textNetherlands,
                    isAvailable: false
                  ),
                  Connection (
                    onPress: () => {chosen.value = textFinland},
                    flag: context.icons.flagFinland,
                    name: textFinland,
                    isChosen: chosen.value == textFinland,
                    isAvailable: false
                  ),
                  Connection (
                    onPress: () => {chosen.value = textGermany},
                    flag: context.icons.flagGermany,
                    name: textGermany,
                    isChosen: chosen.value == textGermany,
                    isAvailable: false
                  )
                ]
              )
            ]
          )
        )
      )

    );

  }

}