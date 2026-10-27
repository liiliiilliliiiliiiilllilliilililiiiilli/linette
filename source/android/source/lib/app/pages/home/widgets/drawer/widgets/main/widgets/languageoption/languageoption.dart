// Home page - Drawer - Main - Language option

import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:linette/app/providers/locale/locale.dart';
import 'package:linette/app/modules/icons/icons.dart';
import 'package:linette/app/modules/texts/texts.dart';
import 'package:linette/app/widgets/draweroption/draweroption.dart';
import 'package:linette/app/windows/changelanguage/changelanguage.dart';



class LanguageOption extends HookConsumerWidget {

  const LanguageOption ({
    super.key
  });


  @override Widget build (BuildContext context, WidgetRef ref) {

    final String localeState = ref.watch (localeProvider);


    final String textCurrentLanguage = localeState == 'ru'
      ? context.texts.windowAppLanguageCenterRussian
      : localeState == 'en'
        ? context.texts.windowAppLanguageCenterEnglish
        : context.texts.windowAppLanguageCenterChinese;


    return (

      DrawerOption (
        iconLeft: context.icons.language,
        text: context.texts.pageHomeDrawerCenterLanguage,
        textRight: textCurrentLanguage,
        window: const ChangeLanguageWindow ()
      )

    );

  }

}