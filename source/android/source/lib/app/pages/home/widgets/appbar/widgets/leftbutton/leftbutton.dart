// Home page - App bar - Left button

import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:linette/app/modules/icons/icons.dart';
import 'package:linette/app/modules/methods/methods.dart';
import 'package:linette/app/widgets/appbarbutton/appbarbutton.dart';
import 'package:linette/app/widgets/appbarbutton/models/icon/icon.dart';
import 'package:linette/app/widgets/appbarbutton/models/shape/shape.dart';



class LeftButton extends ConsumerWidget {

  const LeftButton ({
    super.key
  });


  @override Widget build (BuildContext context, WidgetRef ref) {

    void onPress () {

      context.methods.freeze (ref);

      context.methods.openDrawer (context);

    }


    return (

      AppBarButton (
        onPress: onPress,
        shape: AppBarButtonShape.square,
        icon: AppBarButtonIcon (context.icons.menu)
      )

    );

  }

}