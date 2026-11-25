// Language window

import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:linette/app/providers/locale/locale.dart';
import 'package:linette/app/modules/methods/methods.dart';
import 'package:linette/app/modules/texts/texts.dart';
import 'package:linette/app/widgets/window/window.dart';
import 'package:linette/app/widgets/window/widgets/bottom/models/action/action.dart';
import 'package:linette/app/widgets/radioitem/radioitem.dart';



class LanguageWindow extends ConsumerWidget {

  const LanguageWindow ({
    super.key
  });


  @override Widget build (BuildContext context, WidgetRef ref) {

    final String? localeState = ref.watch(localeProvider).valueOrNull;


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


    void actionRightOnPress () {

      context.methods.freeze (ref);

      context.methods.navigateBack (context);

    }


    return (

      Window (
        width: 300,
        title: context.texts.windowLanguageTitle,
        body: SingleChildScrollView (
          padding: const EdgeInsets.symmetric (
            horizontal: 20,
            vertical: 14
          ),
          child: Material (
            type: MaterialType.transparency,
            child: Column (
              spacing: 14,
              children: languages.map ((language) {
                return (
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
                );
              }).toList ()
            )
          )
        ),
        actionRight: ActionModel (
          context.texts.windowLanguageAction,
          onPress: actionRightOnPress,
          color: ActionColorModel.green
        )
      )

    );

  }

}