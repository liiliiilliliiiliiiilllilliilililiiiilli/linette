// Methods module - Change language

import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:linette/app/providers/locale/locale.dart';



class ChangeLanguageElement {

  static void changeLanguage (WidgetRef ref, String code) {

    final LocaleNotifier localeNotifier = ref.read (localeProvider.notifier);


    localeNotifier.changeState (code);

  }

}