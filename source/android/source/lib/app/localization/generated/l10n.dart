// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class T {
  T();

  static T? _current;

  static T get current {
    assert(
      _current != null,
      'No instance of T was loaded. Try to initialize the T delegate before accessing T.current.',
    );
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<T> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = T();
      T._current = instance;

      return instance;
    });
  }

  static T of(BuildContext context) {
    final instance = T.maybeOf(context);
    assert(
      instance != null,
      'No instance of T present in the widget tree. Did you add T.delegate in localizationsDelegates?',
    );
    return instance!;
  }

  static T? maybeOf(BuildContext context) {
    return Localizations.of<T>(context, T);
  }

  /// ` Linette `
  String get pageWelcomeTopTitle {
    return Intl.message(
      ' Linette ',
      name: 'pageWelcomeTopTitle',
      desc: '',
      args: [],
    );
  }

  /// `•`
  String get pageWelcomeTopTitleDot {
    return Intl.message(
      '•',
      name: 'pageWelcomeTopTitleDot',
      desc: '',
      args: [],
    );
  }

  /// `Plan to save the world`
  String get pageWelcomeTopSubtitle {
    return Intl.message(
      'Plan to save the world',
      name: 'pageWelcomeTopSubtitle',
      desc: '',
      args: [],
    );
  }

  /// `1) Bypass restrictions\n\n2) Help others\n\n3) Get money`
  String get pageWelcomeCenter {
    return Intl.message(
      '1) Bypass restrictions\n\n2) Help others\n\n3) Get money',
      name: 'pageWelcomeCenter',
      desc: '',
      args: [],
    );
  }

  /// `Let's go!`
  String get pageWelcomeBottomGo {
    return Intl.message(
      'Let\'s go!',
      name: 'pageWelcomeBottomGo',
      desc: '',
      args: [],
    );
  }

  /// `Change language`
  String get pageWelcomeBottomChangeLanguage {
    return Intl.message(
      'Change language',
      name: 'pageWelcomeBottomChangeLanguage',
      desc: '',
      args: [],
    );
  }

  /// `Linette`
  String get pageHomeAppBar {
    return Intl.message('Linette', name: 'pageHomeAppBar', desc: '', args: []);
  }

  /// `Connection is not secured`
  String get pageHomeBodyTop {
    return Intl.message(
      'Connection is not secured',
      name: 'pageHomeBodyTop',
      desc: '',
      args: [],
    );
  }

  /// `Tap to start the system`
  String get pageHomeBodyCenterTapToConnect {
    return Intl.message(
      'Tap to start the system',
      name: 'pageHomeBodyCenterTapToConnect',
      desc: '',
      args: [],
    );
  }

  /// `Tap to stop the system`
  String get pageHomeBodyCenterTapToDisconnect {
    return Intl.message(
      'Tap to stop the system',
      name: 'pageHomeBodyCenterTapToDisconnect',
      desc: '',
      args: [],
    );
  }

  /// `Netherlands  |  tropic_rain`
  String get pageHomeBodyCenterGoNetherlands {
    return Intl.message(
      'Netherlands  |  tropic_rain',
      name: 'pageHomeBodyCenterGoNetherlands',
      desc: '',
      args: [],
    );
  }

  /// `Finland  |  tropic_rain`
  String get pageHomeBodyCenterGoFinland {
    return Intl.message(
      'Finland  |  tropic_rain',
      name: 'pageHomeBodyCenterGoFinland',
      desc: '',
      args: [],
    );
  }

  /// `Germany  |  tropic_rain`
  String get pageHomeBodyCenterGoGermany {
    return Intl.message(
      'Germany  |  tropic_rain',
      name: 'pageHomeBodyCenterGoGermany',
      desc: '',
      args: [],
    );
  }

  /// `No connection`
  String get pageHomeBodyBottom {
    return Intl.message(
      'No connection',
      name: 'pageHomeBodyBottom',
      desc: '',
      args: [],
    );
  }

  /// `Read more`
  String get pageHomeBottom_1 {
    return Intl.message(
      'Read more',
      name: 'pageHomeBottom_1',
      desc: '',
      args: [],
    );
  }

  /// ` about the service, created to pass the restrictions.`
  String get pageHomeBottom_2 {
    return Intl.message(
      ' about the service, created to pass the restrictions.',
      name: 'pageHomeBottom_2',
      desc: '',
      args: [],
    );
  }

  /// `Options`
  String get pageHomeDrawerTop {
    return Intl.message(
      'Options',
      name: 'pageHomeDrawerTop',
      desc: '',
      args: [],
    );
  }

  /// `Language`
  String get pageHomeDrawerCenterLanguage {
    return Intl.message(
      'Language',
      name: 'pageHomeDrawerCenterLanguage',
      desc: '',
      args: [],
    );
  }

  /// `Feedback`
  String get pageHomeDrawerCenterFeedback {
    return Intl.message(
      'Feedback',
      name: 'pageHomeDrawerCenterFeedback',
      desc: '',
      args: [],
    );
  }

  /// `Arsenal`
  String get pageHomeDrawerCenterArsenal {
    return Intl.message(
      'Arsenal',
      name: 'pageHomeDrawerCenterArsenal',
      desc: '',
      args: [],
    );
  }

  /// `Network parameters`
  String get pageHomeDrawerCenterNetParameters {
    return Intl.message(
      'Network parameters',
      name: 'pageHomeDrawerCenterNetParameters',
      desc: '',
      args: [],
    );
  }

  /// `Account`
  String get pageHomeDrawerCenterAccout {
    return Intl.message(
      'Account',
      name: 'pageHomeDrawerCenterAccout',
      desc: '',
      args: [],
    );
  }

  /// `Wallet`
  String get pageHomeDrawerCenterWallet {
    return Intl.message(
      'Wallet',
      name: 'pageHomeDrawerCenterWallet',
      desc: '',
      args: [],
    );
  }

  /// `Connect to VPN on app launch`
  String get pageHomeDrawerBottom {
    return Intl.message(
      'Connect to VPN on app launch',
      name: 'pageHomeDrawerBottom',
      desc: '',
      args: [],
    );
  }

  /// `Choose the server`
  String get pageConnectionsAppbar {
    return Intl.message(
      'Choose the server',
      name: 'pageConnectionsAppbar',
      desc: '',
      args: [],
    );
  }

  /// `{num} online`
  String pageConnectionsBodyLiner(int num) {
    return Intl.message(
      '$num online',
      name: 'pageConnectionsBodyLiner',
      desc: '',
      args: [num],
    );
  }

  /// `Netherlands`
  String get pageConnectionsBodyListCountryNetherlands {
    return Intl.message(
      'Netherlands',
      name: 'pageConnectionsBodyListCountryNetherlands',
      desc: '',
      args: [],
    );
  }

  /// `Finland`
  String get pageConnectionsBodyListCountryFinland {
    return Intl.message(
      'Finland',
      name: 'pageConnectionsBodyListCountryFinland',
      desc: '',
      args: [],
    );
  }

  /// `Germany`
  String get pageConnectionsBodyListCountryGermany {
    return Intl.message(
      'Germany',
      name: 'pageConnectionsBodyListCountryGermany',
      desc: '',
      args: [],
    );
  }

  /// `Chosen`
  String get pageConnectionsBodyListIsChosen {
    return Intl.message(
      'Chosen',
      name: 'pageConnectionsBodyListIsChosen',
      desc: '',
      args: [],
    );
  }

  /// `Which purpose does this app have?`
  String get windowPurposeOfThisAppTop {
    return Intl.message(
      'Which purpose does this app have?',
      name: 'windowPurposeOfThisAppTop',
      desc: '',
      args: [],
    );
  }

  /// `If you are facing issues accessing remote resources or want to keep your personal data confidential on an insecure network, one solution might be a reliable VPN connection.\n\nVPN (Virtual Private Network) is an inter-network communication technology for creating secure virtual communication channels. Encrypted traffic data is protected by cryptographic methods so that if an attacker intercepts it, decrypting it would take millions and millions of years.\n\nBesides VPN, there are many other ways to protect yourself online, such as network proxies or changing your IP address. Almost all of them share the working principles of VPN and also have a range of separate communication protocols designed for better performance in specific scenarios (corporate, personal solutions, or other specialized areas).\n\nDespite their broad capabilities, such technologies are based on simple mathematical principles and are not complicated to implement. If you wish, you can deploy your own VPN server or set up a private proxy – this is the best way to maintain control and privacy over your data.\n\nLinette is the same kind of network provider that you could become for yourself if you thoroughly study cybersecurity and the basics of programming.\n\nRemember: no one can physically perceive information, but anyone can bring to life any idea based on that information.`
  String get windowPurposeOfThisAppCenter {
    return Intl.message(
      'If you are facing issues accessing remote resources or want to keep your personal data confidential on an insecure network, one solution might be a reliable VPN connection.\n\nVPN (Virtual Private Network) is an inter-network communication technology for creating secure virtual communication channels. Encrypted traffic data is protected by cryptographic methods so that if an attacker intercepts it, decrypting it would take millions and millions of years.\n\nBesides VPN, there are many other ways to protect yourself online, such as network proxies or changing your IP address. Almost all of them share the working principles of VPN and also have a range of separate communication protocols designed for better performance in specific scenarios (corporate, personal solutions, or other specialized areas).\n\nDespite their broad capabilities, such technologies are based on simple mathematical principles and are not complicated to implement. If you wish, you can deploy your own VPN server or set up a private proxy – this is the best way to maintain control and privacy over your data.\n\nLinette is the same kind of network provider that you could become for yourself if you thoroughly study cybersecurity and the basics of programming.\n\nRemember: no one can physically perceive information, but anyone can bring to life any idea based on that information.',
      name: 'windowPurposeOfThisAppCenter',
      desc: '',
      args: [],
    );
  }

  /// `Ok`
  String get windowPurposeOfThisAppBottom {
    return Intl.message(
      'Ok',
      name: 'windowPurposeOfThisAppBottom',
      desc: '',
      args: [],
    );
  }

  /// `App language`
  String get windowAppLanguageTop {
    return Intl.message(
      'App language',
      name: 'windowAppLanguageTop',
      desc: '',
      args: [],
    );
  }

  /// `Russian`
  String get windowAppLanguageCenterRussian {
    return Intl.message(
      'Russian',
      name: 'windowAppLanguageCenterRussian',
      desc: '',
      args: [],
    );
  }

  /// `English`
  String get windowAppLanguageCenterEnglish {
    return Intl.message(
      'English',
      name: 'windowAppLanguageCenterEnglish',
      desc: '',
      args: [],
    );
  }

  /// `Chinese`
  String get windowAppLanguageCenterChinese {
    return Intl.message(
      'Chinese',
      name: 'windowAppLanguageCenterChinese',
      desc: '',
      args: [],
    );
  }

  /// `Русский`
  String get windowAppLanguageCenterRussianNative {
    return Intl.message(
      'Русский',
      name: 'windowAppLanguageCenterRussianNative',
      desc: '',
      args: [],
    );
  }

  /// `English`
  String get windowAppLanguageCenterEnglishNative {
    return Intl.message(
      'English',
      name: 'windowAppLanguageCenterEnglishNative',
      desc: '',
      args: [],
    );
  }

  /// `中文`
  String get windowAppLanguageCenterChineseNative {
    return Intl.message(
      '中文',
      name: 'windowAppLanguageCenterChineseNative',
      desc: '',
      args: [],
    );
  }

  /// `Done`
  String get windowAppLanguageBottom {
    return Intl.message(
      'Done',
      name: 'windowAppLanguageBottom',
      desc: '',
      args: [],
    );
  }

  /// `Feedback`
  String get windowFeedbackTop {
    return Intl.message(
      'Feedback',
      name: 'windowFeedbackTop',
      desc: '',
      args: [],
    );
  }

  /// `Service news are being published on the `
  String get windowFeedbackCenter_1 {
    return Intl.message(
      'Service news are being published on the ',
      name: 'windowFeedbackCenter_1',
      desc: '',
      args: [],
    );
  }

  /// `official Telegram channel`
  String get windowFeedbackCenter_2 {
    return Intl.message(
      'official Telegram channel',
      name: 'windowFeedbackCenter_2',
      desc: '',
      args: [],
    );
  }

  /// `https://t.me/LinetteTelegramChannel`
  String get windowFeedbackCenter_2_Link {
    return Intl.message(
      'https://t.me/LinetteTelegramChannel',
      name: 'windowFeedbackCenter_2_Link',
      desc: '',
      args: [],
    );
  }

  /// `.`
  String get windowFeedbackCenter_3 {
    return Intl.message(
      '.',
      name: 'windowFeedbackCenter_3',
      desc: '',
      args: [],
    );
  }

  /// `Ok`
  String get windowFeedbackBottom {
    return Intl.message('Ok', name: 'windowFeedbackBottom', desc: '', args: []);
  }

  /// `App's arsenal`
  String get windowArsenalTop {
    return Intl.message(
      'App\'s arsenal',
      name: 'windowArsenalTop',
      desc: '',
      args: [],
    );
  }

  /// `Done`
  String get windowArsenalBottom {
    return Intl.message(
      'Done',
      name: 'windowArsenalBottom',
      desc: '',
      args: [],
    );
  }

  /// `Network parameters`
  String get windowNetParametersTop {
    return Intl.message(
      'Network parameters',
      name: 'windowNetParametersTop',
      desc: '',
      args: [],
    );
  }

  /// `Ok`
  String get windowNetParametersBottom {
    return Intl.message(
      'Ok',
      name: 'windowNetParametersBottom',
      desc: '',
      args: [],
    );
  }

  /// `Account`
  String get windowAccountTop {
    return Intl.message(
      'Account',
      name: 'windowAccountTop',
      desc: '',
      args: [],
    );
  }

  /// `Done`
  String get windowAccountBottom {
    return Intl.message(
      'Done',
      name: 'windowAccountBottom',
      desc: '',
      args: [],
    );
  }

  /// `Wallet`
  String get windowWalletTop {
    return Intl.message('Wallet', name: 'windowWalletTop', desc: '', args: []);
  }

  /// `Done`
  String get windowWalletBottom {
    return Intl.message('Done', name: 'windowWalletBottom', desc: '', args: []);
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<T> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'ru'),
      Locale.fromSubtags(languageCode: 'zh'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<T> load(Locale locale) => T.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
