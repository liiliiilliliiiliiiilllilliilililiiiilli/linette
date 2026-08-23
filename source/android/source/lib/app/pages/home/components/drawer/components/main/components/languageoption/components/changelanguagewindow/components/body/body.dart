// Home page - Drawer - Main - Language option - Change language window - Body

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:linette/app/providers/locale.dart';
import 'package:linette/app/localization/generated/l10n.dart';
import 'package:linette/app/theme/colors.dart';



class BodyComponent extends HookConsumerWidget {

  const BodyComponent ({super.key});


  @override Widget build (BuildContext context, WidgetRef ref) {

    final languages = <Map <String, dynamic>> [
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


    return (

      Container (
        padding: EdgeInsets.symmetric (
          horizontal: 20 - 4
        ),
        child: Stack (
          children: [
            SingleChildScrollView (
              child: Padding (
                padding: EdgeInsets.only (
                  top: 5
                ),
                child: Material (
                  type: MaterialType.transparency,
                  child: RadioGroup (
                    groupValue: selectedValue.value,
                    onChanged: (value) {
                      if (value != null) {
                        final newLanguageCode = value.toString ();
                        selectedValue.value = newLanguageCode;
                        ref.read(localeProvider.notifier).changeLocale(Locale(newLanguageCode));
                      }
                    },
                    child: Column (
                      children: languages.map ((language) {
                        return (
                          RadioListTile (
                            value: language['code'].toString(),
                            horizontalTitleGap: 5,
                            contentPadding: EdgeInsets.zero,
                            activeColor: context.colors.prime,
                            selected: selectedValue.value == language['code'].toString(),
                            title: Text (
                              language['title'],
                              style: TextStyle (
                                fontFamily: 'Archivo',
                                fontWeight: FontWeight.w600,
                                fontSize: 15,
                                color: context.colors.windowMainText
                              )
                            ),
                            subtitle: Text (
                              language['subtitle'],
                              style: TextStyle (
                                fontFamily: 'Archivo',
                                fontWeight: FontWeight.w500,
                                fontSize: 15,
                                color: context.colors.windowMainText
                              )
                            )
                          )
                        );
                      }).toList ()
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