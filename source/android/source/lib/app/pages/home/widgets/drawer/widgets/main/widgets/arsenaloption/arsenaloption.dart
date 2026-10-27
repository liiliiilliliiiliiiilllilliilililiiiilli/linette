// Home page - Drawer - Main - Arsenal option

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:linette/app/modules/icons/icons.dart';
import 'package:linette/app/modules/texts/texts.dart';
import 'package:linette/app/widgets/draweroption/draweroption.dart';
import 'package:linette/app/windows/arsenal/arsenal.dart';



class ArsenalOption extends HookWidget {

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