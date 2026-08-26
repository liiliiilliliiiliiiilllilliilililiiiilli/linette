// Home page - Drawer - Main - Language option - Change language window - Body

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:linette/app/providers/locale/locale.dart';
import 'package:linette/app/localization/generated/l10n.dart';
import 'package:linette/app/theme/colors/colors.dart';
import 'package:linette/app/widgets/animatorpresser/animatorpresser.dart';
import 'package:linette/app/widgets/presser/presser.dart';



class BodyComponent extends HookConsumerWidget {

  const BodyComponent ({super.key});


  @override Widget build (BuildContext context, WidgetRef ref) {

    final languages = <Map <String, dynamic> > [
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
                      children: languages.map ((language) {

                        void onPress () => selectedValue.value = language['code'].toString(); ref.read(localeProvider.notifier).changeLocale(Locale(selectedValue.value));

                        return (

                          RadioItem (
                            value: language['code'].toString(),
                            isChosen: language['code'].toString() == selectedValue.value,
                            onPress: onPress,
                            title: language['title'].toString(),
                            subtitle: language['subtitle'].toString()
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



class RadioItem extends HookWidget {

  final String value;
  final bool isChosen;
  final Function onPress;
  final String title;
  final String subtitle;


  const RadioItem ({
    super.key,
    required this.value,
    required this.isChosen,
    required this.onPress,
    required this.title,
    required this.subtitle
  });


  @override Widget build (BuildContext context) {

    final isPressed = useState (false);


    void handleTap () {

      onPress ();

    }


    final colorFill = isChosen ? context.colors.prime : context.colors.black;
    final colorOutline = isChosen ? context.colors.prime.withAlpha (128) : context.colors.grey.withAlpha (64);


    return (

      Container (
        color: Colors.transparent,
        padding: const EdgeInsets.symmetric (
          horizontal: 10
        ),
        child: Presser (
          isPressed: isPressed,
          handleTap: handleTap,
          child: AnimatorPresser (
            scaleRate: 0.97,
            isPressed: isPressed,
            child: Row (
              spacing: 15,
              children: [
                Container (
                  decoration: BoxDecoration (
                    shape: BoxShape.circle,
                    color: Colors.black,
                    border: Border.all (
                      color: colorOutline,
                      width: 1.5
                    )
                  ),
                  child: Container (
                    padding: const EdgeInsets.all (2.5),
                    child: Container (
                      width: 11,
                      height: 11,
                      decoration: BoxDecoration (
                        shape: BoxShape.circle,
                        color: colorFill
                      )
                    )
                  )
                ),
                Column (
                  crossAxisAlignment: CrossAxisAlignment.start,
                  spacing: 5,
                  children: [
                    Text (
                      title,
                      style: TextStyle (
                        fontFamily: 'Archivo',
                        fontWeight: FontWeight.w600,
                        fontSize: 15,
                        color: context.colors.windowMainText
                      )
                    ),
                    Text (
                      subtitle,
                      style: TextStyle (
                        fontFamily: 'Archivo',
                        fontWeight: FontWeight.w500,
                        fontSize: 15,
                        color: context.colors.windowMainText
                      )
                    )
                  ]
                )
              ]
            )
          )
        )
      )

    );

  }

}