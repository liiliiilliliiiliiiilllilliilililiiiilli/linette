// State providers - Welcome

import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';



final welcomeProvider = NotifierProvider <WelcomeNotifier, bool?> (WelcomeNotifier.new);



class WelcomeNotifier extends Notifier <bool?> {

  @override bool? build () {

    initState ();


    return null;

  }


  static Future <bool> getSavedWelcomeStatus () async {

    final SharedPreferences preferences = await SharedPreferences.getInstance ();

    final bool status = preferences.getBool ('already_welcomed') ?? false;


    return (status);

  }


  static Future <void> saveWelcomeStatus (bool status) async {

    final SharedPreferences preferences = await SharedPreferences.getInstance ();

    await preferences.setBool ('already_welcomed', status);

  }


  Future <void> initState () async {

    final bool status = await getSavedWelcomeStatus ();

    state = status;

  }


  Future <void> completeWelcome () async {

    state = true;

    await saveWelcomeStatus (true);

  }

}