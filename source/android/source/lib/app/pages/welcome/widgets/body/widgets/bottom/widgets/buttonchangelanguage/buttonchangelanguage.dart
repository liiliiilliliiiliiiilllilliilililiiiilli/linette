// Welcome page - Body - Bottom - Button change language

import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:linette/app/modules/icons/icons.dart';
import 'package:linette/app/modules/methods/methods.dart';
import 'package:linette/app/modules/texts/texts.dart';
import 'package:linette/app/widgets/textbutton/textbutton.dart';
import 'package:linette/app/widgets/textbutton/models/icons/icons.dart';
import 'package:linette/app/windows/language/language.dart';



class ButtonChangeLanguage extends ConsumerWidget {

  const ButtonChangeLanguage ({
    super.key
  });


  @override Widget build (BuildContext context, WidgetRef ref) {

    Future <void> onPress () async {

      await context.methods.openWindow (
        context,
        ref,
        window: const LanguageWindow ()
      );

    }


    return (

      TextButtonComponent (
        onPress: onPress,
        text: context.texts.pageWelcomeBodyBottomChangeLanguage,
        icons: TextButtonIcons (
          left: TextButtonIcon (
            context.icons.language
          )
        )
      )

    );

  }

}