// Methods module - Change language

import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:linette/app/providers/locale/locale.dart';
import 'package:linette/app/modules/methods/methods.dart';



extension ChangeLanguageExtension on AppMethods {

  void changeLanguage (WidgetRef ref, String code) {

    final LocaleNotifier localeNotifier = ref.read (localeProvider.notifier);


    localeNotifier.changeState (code);

  }

}