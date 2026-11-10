// Methods module - Change theme

import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:linette/app/providers/theme/theme.dart';



class ChangeThemeElement {

  static void changeTheme (WidgetRef ref, AppThemeOption theme) {

    final ThemeNotifier themeNotifier = ref.read (themeProvider.notifier);


    themeNotifier.changeState (theme);

  }

}