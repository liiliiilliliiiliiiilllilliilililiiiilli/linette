// Home page - Drawer - Main - Language option - Change language window

import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:linette/app/providers/locale/locale.dart';
import 'package:linette/app/localization/generated/l10n.dart';
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
        'title': T.of(context).russian,
        'subtitle': T.of(context).russianNative
      },
      {
        'code': 'en',
        'title': T.of(context).english,
        'subtitle': T.of(context).englishNative
      },
      {
        'code': 'zh',
        'title': T.of(context).chinese,
        'subtitle': T.of(context).chineseNative
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
        title: T.of(context).appLanguage,
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
        action: T.of(context).done,
        width: 300
      )

    );

  }

}