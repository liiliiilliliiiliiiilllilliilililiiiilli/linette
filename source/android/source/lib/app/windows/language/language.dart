// Language window

import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:linette/app/providers/locale/locale.dart';
import 'package:linette/app/modules/methods/methods.dart';
import 'package:linette/app/modules/texts/texts.dart';
import 'package:linette/app/widgets/window/window.dart';
import 'package:linette/app/widgets/radioitem/radioitem.dart';



class LanguageWindow extends ConsumerWidget {

  const LanguageWindow ({
    super.key
  });


  @override Widget build (BuildContext context, WidgetRef ref) {

    final String localeState = ref.watch (localeProvider);


    final List <Map <String, String>> languages = [
      {
        'code': 'ru',
        'title': context.texts.windowLanguageBodyRussian,
        'subtitle': context.texts.windowLanguageBodyRussianNative
      },
      {
        'code': 'en',
        'title': context.texts.windowLanguageBodyEnglish,
        'subtitle': context.texts.windowLanguageBodyEnglishNative
      },
      {
        'code': 'zh',
        'title': context.texts.windowLanguageBodyChinese,
        'subtitle': context.texts.windowLanguageBodyChineseNative
      }
    ];


    void onPress (Map <String, String> language) {

      final String? code = language ['code'];


      if (code != null && code.isNotEmpty) {

        context.methods.changeLanguage (ref, code);

      }

    }


    return (

      Window (
        width: 300,
        title: context.texts.windowLanguageTitle,
        body: SingleChildScrollView (
          child: Padding (
            padding: const EdgeInsets.only (
              top: 5,
              bottom: 2.5
            ),
            child: Material (
              type: MaterialType.transparency,
              child: Padding (
                padding: const EdgeInsets.symmetric (
                  vertical: 10 - 4
                ),
                child: Column (
                  spacing: 22 - 4 * 2,
                  children: languages.map ((language) =>

                    switch (language) {

                      {
                        'code': String code,
                        'title': String title,
                        'subtitle': String subtitle
                      }

                        => RadioItem (
                          onPress: () => onPress (language),
                          isChosen: (code == localeState),
                          title: title,
                          subtitle: subtitle
                        ),

                      _ => Container ()

                    }

                  ).toList ()
                )
              )
            )
          )
        ),
        action: context.texts.windowLanguageAction
      )

    );

  }

}