// Home page - Drawer - Main - Accout option

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:linette/app/modules/icons/icons.dart';
import 'package:linette/app/modules/texts/texts.dart';
import 'package:linette/app/widgets/draweroption/draweroption.dart';
import 'package:linette/app/windows/accout/accout.dart';



class AccoutOption extends HookWidget {

  const AccoutOption ({
    super.key
  });


  @override Widget build (BuildContext context) {

    return (

      DrawerOption (
        iconLeft: context.icons.user,
        text: context.texts.pageHomeDrawerCenterAccout,
        window: const AccoutWindow ()
      )

    );

  }

}