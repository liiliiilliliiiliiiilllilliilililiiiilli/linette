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

  /// `Linette`
  String get title {
    return Intl.message('Linette', name: 'title', desc: '', args: []);
  }

  /// `Connection is not secured`
  String get connectionIsNotProtected {
    return Intl.message(
      'Connection is not secured',
      name: 'connectionIsNotProtected',
      desc: '',
      args: [],
    );
  }

  /// `Tap to connect to VPN`
  String get tapToConectToVpn {
    return Intl.message(
      'Tap to connect to VPN',
      name: 'tapToConectToVpn',
      desc: '',
      args: [],
    );
  }

  /// `No connection`
  String get noConnection {
    return Intl.message(
      'No connection',
      name: 'noConnection',
      desc: '',
      args: [],
    );
  }

  /// `Read more`
  String get readMore_1 {
    return Intl.message('Read more', name: 'readMore_1', desc: '', args: []);
  }

  /// ` about the service, created to pass the restrictions.`
  String get readMore_2 {
    return Intl.message(
      ' about the service, created to pass the restrictions.',
      name: 'readMore_2',
      desc: '',
      args: [],
    );
  }

  /// `Which purpose does this app have?`
  String get purposeOfThisApp {
    return Intl.message(
      'Which purpose does this app have?',
      name: 'purposeOfThisApp',
      desc: '',
      args: [],
    );
  }

  /// `If you are facing issues accessing remote resources or want to keep your personal data confidential on an insecure network, one solution might be a reliable VPN connection.\n\nVPN (Virtual Private Network) is an inter-network communication technology for creating secure virtual communication channels. Encrypted traffic data is protected by cryptographic methods so that if an attacker intercepts it, decrypting it would take millions and millions of years.\n\nBesides VPN, there are many other ways to protect yourself online, such as network proxies or changing your IP address. Almost all of them share the working principles of VPN and also have a range of separate communication protocols designed for better performance in specific scenarios (corporate, personal solutions, or other specialized areas).\n\nDespite their broad capabilities, such technologies are based on simple mathematical principles and are not complicated to implement. If you wish, you can deploy your own VPN server or set up a private proxy – this is the best way to maintain control and privacy over your data.\n\nOliveVPN is the same kind of network provider that you could become for yourself if you thoroughly study cybersecurity and the basics of programming.\n\nRemember: no one can physically perceive information, but anyone can bring to life any idea based on that information.`
  String get serviceDescription {
    return Intl.message(
      'If you are facing issues accessing remote resources or want to keep your personal data confidential on an insecure network, one solution might be a reliable VPN connection.\n\nVPN (Virtual Private Network) is an inter-network communication technology for creating secure virtual communication channels. Encrypted traffic data is protected by cryptographic methods so that if an attacker intercepts it, decrypting it would take millions and millions of years.\n\nBesides VPN, there are many other ways to protect yourself online, such as network proxies or changing your IP address. Almost all of them share the working principles of VPN and also have a range of separate communication protocols designed for better performance in specific scenarios (corporate, personal solutions, or other specialized areas).\n\nDespite their broad capabilities, such technologies are based on simple mathematical principles and are not complicated to implement. If you wish, you can deploy your own VPN server or set up a private proxy – this is the best way to maintain control and privacy over your data.\n\nOliveVPN is the same kind of network provider that you could become for yourself if you thoroughly study cybersecurity and the basics of programming.\n\nRemember: no one can physically perceive information, but anyone can bring to life any idea based on that information.',
      name: 'serviceDescription',
      desc: '',
      args: [],
    );
  }

  /// `Options`
  String get options {
    return Intl.message('Options', name: 'options', desc: '', args: []);
  }

  /// `Language`
  String get language {
    return Intl.message('Language', name: 'language', desc: '', args: []);
  }

  /// `App language`
  String get appLanguage {
    return Intl.message(
      'App language',
      name: 'appLanguage',
      desc: '',
      args: [],
    );
  }

  /// `Russian`
  String get russian {
    return Intl.message('Russian', name: 'russian', desc: '', args: []);
  }

  /// `English`
  String get english {
    return Intl.message('English', name: 'english', desc: '', args: []);
  }

  /// `Chinese`
  String get chinese {
    return Intl.message('Chinese', name: 'chinese', desc: '', args: []);
  }

  /// `Русский`
  String get russianNative {
    return Intl.message('Русский', name: 'russianNative', desc: '', args: []);
  }

  /// `English`
  String get englishNative {
    return Intl.message('English', name: 'englishNative', desc: '', args: []);
  }

  /// `中文`
  String get chineseNative {
    return Intl.message('中文', name: 'chineseNative', desc: '', args: []);
  }

  /// `Feedback`
  String get feedBack {
    return Intl.message('Feedback', name: 'feedBack', desc: '', args: []);
  }

  /// `Service news are being published on the `
  String get serviceNews_1 {
    return Intl.message(
      'Service news are being published on the ',
      name: 'serviceNews_1',
      desc: '',
      args: [],
    );
  }

  /// `official Telegram channel`
  String get serviceNews_2 {
    return Intl.message(
      'official Telegram channel',
      name: 'serviceNews_2',
      desc: '',
      args: [],
    );
  }

  /// `.`
  String get serviceNews_3 {
    return Intl.message('.', name: 'serviceNews_3', desc: '', args: []);
  }

  /// `Connect to VPN on app launch`
  String get connectToVpnOnLaunch {
    return Intl.message(
      'Connect to VPN on app launch',
      name: 'connectToVpnOnLaunch',
      desc: '',
      args: [],
    );
  }

  /// `Choose the server`
  String get chooseServer {
    return Intl.message(
      'Choose the server',
      name: 'chooseServer',
      desc: '',
      args: [],
    );
  }

  /// `{num} online`
  String numOnline(int num) {
    return Intl.message(
      '$num online',
      name: 'numOnline',
      desc: '',
      args: [num],
    );
  }

  /// `Chosen`
  String get chosen {
    return Intl.message('Chosen', name: 'chosen', desc: '', args: []);
  }

  /// `Netherlands`
  String get netherlands {
    return Intl.message('Netherlands', name: 'netherlands', desc: '', args: []);
  }

  /// `Finland`
  String get finland {
    return Intl.message('Finland', name: 'finland', desc: '', args: []);
  }

  /// `Germany`
  String get germany {
    return Intl.message('Germany', name: 'germany', desc: '', args: []);
  }

  /// `Done`
  String get done {
    return Intl.message('Done', name: 'done', desc: '', args: []);
  }

  /// `Ok`
  String get ok {
    return Intl.message('Ok', name: 'ok', desc: '', args: []);
  }

  /// `https://t.me/LinetteTelegramChannel`
  String get linkTelegramChannel {
    return Intl.message(
      'https://t.me/LinetteTelegramChannel',
      name: 'linkTelegramChannel',
      desc: '',
      args: [],
    );
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
