// Home page - Drawer - Main - Net parameters option

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:linette/app/modules/icons/icons.dart';
import 'package:linette/app/modules/texts/texts.dart';
import 'package:linette/app/widgets/draweroption/draweroption.dart';
import 'package:linette/app/windows/netparameters/netparameters.dart';



class NetParametersOption extends HookWidget {

  const NetParametersOption ({
    super.key
  });


  @override Widget build (BuildContext context) {

    return (

      DrawerOption (
        iconLeft: context.icons.net,
        text: context.texts.pageHomeDrawerCenterNetParameters,
        window: const NetParametersWindow ()
      )

    );

  }

}