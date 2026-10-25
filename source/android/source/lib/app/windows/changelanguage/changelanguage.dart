// Change language window

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:linette/app/providers/locale/locale.dart';
import 'package:linette/app/modules/texts/texts.dart';
import 'package:linette/app/widgets/window/window.dart';
import 'package:linette/app/widgets/radioitem/radioitem.dart';



class ChangeLanguageWindow extends HookConsumerWidget {

  const ChangeLanguageWindow ({
    super.key
  });


  @override Widget build (BuildContext context, WidgetRef ref) {

    final String localeState = ref.watch (localeProvider);
    final LocaleNotifier localeNotifier = ref.watch (localeProvider.notifier);


    final ValueNotifier <String> selectedLocale = useState (localeState);


    final List <Map <String, String>> languages =  [
      {
        'code': 'ru',
        'title': context.texts.windowAppLanguageCenterRussian,
        'subtitle': context.texts.windowAppLanguageCenterRussianNative
      },
      {
        'code': 'en',
        'title': context.texts.windowAppLanguageCenterEnglish,
        'subtitle': context.texts.windowAppLanguageCenterEnglishNative
      },
      {
        'code': 'zh',
        'title': context.texts.windowAppLanguageCenterChinese,
        'subtitle': context.texts.windowAppLanguageCenterChineseNative
      }
    ];


    void onPress (Map <String, String> language) {

      final String? code = language['code'];


      if (code != null && code.isNotEmpty) {

        selectedLocale.value = code;

        localeNotifier.changeState (code);

      }

    }


    return (

      Window (
        title: context.texts.windowAppLanguageTop,
        body: Stack (
          children: [
            SingleChildScrollView (
              child: Padding (
                padding: const EdgeInsets.only (
                  top: 5
                ),
                child: Material (
                  type: MaterialType.transparency,
                  child: Padding (
                    padding: const EdgeInsets.fromLTRB (0, 10, 0, 10),
                      child: Column (
                      spacing: 22,
                      children: languages.map ((language) =>

                        switch (language) {

                          {
                            'code': String code,
                            'title': String title,
                            'subtitle': String subtitle
                          }

                            => RadioItem (
                              value: code,
                              isChosen: code == selectedLocale.value,
                              onPress: () => onPress (language),
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
            )
          ]
        ),
        action: context.texts.windowAppLanguageBottom,
        width: 300
      )

    );

  }

}