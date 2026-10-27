// Home page - Drawer - Main - Net option

import 'package:flutter/material.dart';
import 'package:linette/app/modules/icons/icons.dart';
import 'package:linette/app/modules/texts/texts.dart';
import 'package:linette/app/widgets/draweroption/draweroption.dart';
import 'package:linette/app/windows/net/net.dart';



class NetOption extends StatelessWidget {

  const NetOption ({
    super.key
  });


  @override Widget build (BuildContext context) {

    return (

      DrawerOption (
        iconLeft: context.icons.net,
        text: context.texts.pageHomeDrawerCenterNet,
        window: const NetWindow ()
      )

    );

  }

}