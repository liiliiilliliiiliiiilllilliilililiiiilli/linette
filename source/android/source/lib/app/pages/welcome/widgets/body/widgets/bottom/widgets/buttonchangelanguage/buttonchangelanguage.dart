// Welcome page - Body - Bottom - Button change language

import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:linette/app/modules/icons/icons.dart';
import 'package:linette/app/modules/methods/methods.dart';
import 'package:linette/app/modules/texts/texts.dart';
import 'package:linette/app/widgets/textbutton/textbutton.dart';
import 'package:linette/app/windows/language/language.dart';



class ButtonChangeLanguage extends ConsumerWidget {

  const ButtonChangeLanguage ({
    super.key
  });


  @override Widget build (BuildContext context, WidgetRef ref) {

    void onPress () async {

      context.methods.openWindow (
        context: context,
        ref: ref,
        window: const LanguageWindow (),
        callback: () => {}
      );

    }


    return (

      TextButtonComponent (
        iconLeft: context.icons.language,
        text: context.texts.pageWelcomeBodyBottomChangeLanguage,
        onPress: onPress
      )

    );

  }

}