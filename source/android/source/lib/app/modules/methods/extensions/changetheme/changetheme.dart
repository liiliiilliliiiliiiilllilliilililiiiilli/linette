// Methods module - Change theme

import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:linette/app/providers/theme/theme.dart';
import 'package:linette/app/modules/methods/methods.dart';



extension ChangeThemeExtension on AppMethods {

  void changeTheme (WidgetRef ref, AppThemeBaseOption theme) {

    final ThemeNotifier themeNotifier = ref.read (themeProvider.notifier);


    themeNotifier.changeState (theme);

  }

}