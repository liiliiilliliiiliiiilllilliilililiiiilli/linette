// Home page - Drawer - Main - Language option - Change language window - Body

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:linette/app/providers/locale/locale.dart';
import 'package:linette/app/localization/generated/l10n.dart';
import 'package:linette/app/widgets/radioitem/radioitem.dart';



class BodyComponent extends HookConsumerWidget {

  const BodyComponent ({super.key});


  @override Widget build (BuildContext context, WidgetRef ref) {

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


    final currentLocale = ref.watch(localeProvider).languageCode;


    final selectedValue = useState (currentLocale);


    void onPress (Map <String, String> language) {

      final code = language['code'];


      if (code != null && code.isNotEmpty) {

        selectedValue.value = code;

        ref.read(localeProvider.notifier).changeLocale(Locale(code));

      }

    }


    return (

      Container (
        padding: const EdgeInsets.symmetric (
          horizontal: 20 - 4
        ),
        child: Stack (
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
                              isChosen: code == selectedValue.value,
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
        )
      )

    );

  }

}