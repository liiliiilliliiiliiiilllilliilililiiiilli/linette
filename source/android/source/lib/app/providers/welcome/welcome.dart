// Welcome state provider

import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';



final AsyncNotifierProvider <WelcomeNotifier, bool> welcomeProvider = AsyncNotifierProvider (WelcomeNotifier.new);



class WelcomeNotifier extends AsyncNotifier <bool> {

  @override Future <bool> build () async {

    final SharedPreferences sharedPreferences = await SharedPreferences.getInstance ();


    final bool status = sharedPreferences.getBool ('welcomed') ?? false;


    return status;

  }


  Future <void> completeWelcome () async {

    final SharedPreferences sharedPreferences = await SharedPreferences.getInstance ();


    await sharedPreferences.setBool ('welcomed', true);

    state = const AsyncValue.data (true);

  }

}