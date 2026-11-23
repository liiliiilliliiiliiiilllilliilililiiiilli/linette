// Home page - Drawer - Main - Language option

import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:linette/app/providers/locale/locale.dart';
import 'package:linette/app/modules/icons/icons.dart';
import 'package:linette/app/modules/texts/texts.dart';
import 'package:linette/app/windows/language/language.dart';
import 'package:linette/app/widgets/draweroption/draweroption.dart';



class LanguageOption extends ConsumerWidget {

  const LanguageOption ({
    super.key
  });


  @override Widget build (BuildContext context, WidgetRef ref) {

    final String? localeState = ref.watch(localeProvider).valueOrNull;


    final String textCurrentLanguage;


    switch (localeState) {

      case 'ru':

        textCurrentLanguage = context.texts.windowLanguageBodyRussian;

        break;

      case 'en':

        textCurrentLanguage = context.texts.windowLanguageBodyEnglish;

        break;

      case 'zh':

        textCurrentLanguage = context.texts.windowLanguageBodyChinese;

        break;

      default:

        textCurrentLanguage = context.texts.windowLanguageBodyEnglish;

        break;

    }


    return (

      DrawerOption (
        iconLeft: context.icons.drawerOptionLeftLanguage,
        text: context.texts.pageHomeDrawerCenterLanguage,
        textRight: textCurrentLanguage,
        window: const LanguageWindow ()
      )

    );

  }

}