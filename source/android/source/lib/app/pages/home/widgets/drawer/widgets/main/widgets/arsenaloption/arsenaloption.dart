// Home page - Drawer - Main - Arsenal option

import 'package:flutter/material.dart';
import 'package:linette/app/modules/icons/icons.dart';
import 'package:linette/app/modules/texts/texts.dart';
import 'package:linette/app/widgets/draweroption/draweroption.dart';
import 'package:linette/app/windows/arsenal/arsenal.dart';



class ArsenalOption extends StatelessWidget {

  const ArsenalOption ({
    super.key
  });


  @override Widget build (BuildContext context) {

    return (

      DrawerOption (
        iconLeft: context.icons.magicwand,
        text: context.texts.pageHomeDrawerCenterArsenal,
        window: const ArsenalWindow ()
      )

    );

  }

}