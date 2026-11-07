// Welcome page - Body - Bottom - Button go

import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:linette/app/modules/methods/methods.dart';
import 'package:linette/app/modules/icons/icons.dart';
import 'package:linette/app/modules/texts/texts.dart';
import 'package:linette/app/pages/home/home.dart';
import 'package:linette/app/widgets/button/button.dart';
import 'package:linette/app/widgets/button/models/icon/icon.dart';



class ButtonGo extends ConsumerWidget {

  const ButtonGo ({
    super.key
  });


  @override Widget build (BuildContext context, WidgetRef ref) {

    void onPress () async {

      context.methods.transit (
        context,
        ref,
        page: const HomePage ()
      );

    }


    return (

      ButtonComponent (
        onPress: onPress,
        text: context.texts.pageWelcomeBodyBottomGo,
        icon: ButtonIcon (
          context.icons.arrow,
          size: 14
        )
      )

    );

  }

}