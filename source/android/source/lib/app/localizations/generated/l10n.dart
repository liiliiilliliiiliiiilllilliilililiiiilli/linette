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

class Texts {
  Texts();

  static Texts? _current;

  static Texts get current {
    assert(
      _current != null,
      'No instance of Texts was loaded. Try to initialize the Texts delegate before accessing Texts.current.',
    );
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<Texts> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = Texts();
      Texts._current = instance;

      return instance;
    });
  }

  static Texts of(BuildContext context) {
    final instance = Texts.maybeOf(context);
    assert(
      instance != null,
      'No instance of Texts present in the widget tree. Did you add Texts.delegate in localizationsDelegates?',
    );
    return instance!;
  }

  static Texts? maybeOf(BuildContext context) {
    return Localizations.of<Texts>(context, Texts);
  }

  /// `Linette`
  String get appTitle {
    return Intl.message('Linette', name: 'appTitle', desc: '', args: []);
  }

  /// ` Linette `
  String get pageWelcomeBodyTopTitle {
    return Intl.message(
      ' Linette ',
      name: 'pageWelcomeBodyTopTitle',
      desc: '',
      args: [],
    );
  }

  /// `•`
  String get pageWelcomeBodyTopTitleDot {
    return Intl.message(
      '•',
      name: 'pageWelcomeBodyTopTitleDot',
      desc: '',
      args: [],
    );
  }

  /// `Plan to save the world`
  String get pageWelcomeBodyTopSubtitle {
    return Intl.message(
      'Plan to save the world',
      name: 'pageWelcomeBodyTopSubtitle',
      desc: '',
      args: [],
    );
  }

  /// `1) Bypass restrictions\n\n2) Help others\n\n3) Get money`
  String get pageWelcomeBodyCenter {
    return Intl.message(
      '1) Bypass restrictions\n\n2) Help others\n\n3) Get money',
      name: 'pageWelcomeBodyCenter',
      desc: '',
      args: [],
    );
  }

  /// `Let's go!`
  String get pageWelcomeBodyBottomGo {
    return Intl.message(
      'Let\'s go!',
      name: 'pageWelcomeBodyBottomGo',
      desc: '',
      args: [],
    );
  }

  /// `Change language`
  String get pageWelcomeBodyBottomChangeLanguage {
    return Intl.message(
      'Change language',
      name: 'pageWelcomeBodyBottomChangeLanguage',
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
  String get pageHomeDrawerCenterNet {
    return Intl.message(
      'Network parameters',
      name: 'pageHomeDrawerCenterNet',
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

  /// `Start the system on app launch`
  String get pageHomeDrawerBottom {
    return Intl.message(
      'Start the system on app launch',
      name: 'pageHomeDrawerBottom',
      desc: '',
      args: [],
    );
  }

  /// `Choose the server`
  String get pageConnectionsAppBar {
    return Intl.message(
      'Choose the server',
      name: 'pageConnectionsAppBar',
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
  String get pageConnectionsBodyListConnectionCountryNetherlands {
    return Intl.message(
      'Netherlands',
      name: 'pageConnectionsBodyListConnectionCountryNetherlands',
      desc: '',
      args: [],
    );
  }

  /// `Finland`
  String get pageConnectionsBodyListConnectionCountryFinland {
    return Intl.message(
      'Finland',
      name: 'pageConnectionsBodyListConnectionCountryFinland',
      desc: '',
      args: [],
    );
  }

  /// `Germany`
  String get pageConnectionsBodyListConnectionCountryGermany {
    return Intl.message(
      'Germany',
      name: 'pageConnectionsBodyListConnectionCountryGermany',
      desc: '',
      args: [],
    );
  }

  /// `Chosen`
  String get pageConnectionsBodyListConnectionIsChosen {
    return Intl.message(
      'Chosen',
      name: 'pageConnectionsBodyListConnectionIsChosen',
      desc: '',
      args: [],
    );
  }

  /// `Which purpose does this app have?`
  String get windowHintTitle {
    return Intl.message(
      'Which purpose does this app have?',
      name: 'windowHintTitle',
      desc: '',
      args: [],
    );
  }

  /// `If you are facing issues accessing remote resources or want to keep your personal data confidential on an insecure network, one solution might be a reliable VPN connection.\n\nVPN (Virtual Private Network) is an inter-network communication technology for creating secure virtual communication channels. Encrypted traffic data is protected by cryptographic methods so that if an attacker intercepts it, decrypting it would take millions and millions of years.\n\nBesides VPN, there are many other ways to protect yourself online, such as network proxies or changing your IP address. Almost all of them share the working principles of VPN and also have a range of separate communication protocols designed for better performance in specific scenarios (corporate, personal solutions, or other specialized areas).\n\nDespite their broad capabilities, such technologies are based on simple mathematical principles and are not complicated to implement. If you wish, you can deploy your own VPN server or set up a private proxy – this is the best way to maintain control and privacy over your data.\n\nLinette is the same kind of network provider that you could become for yourself if you thoroughly study cybersecurity and the basics of programming.\n\nRemember: no one can physically perceive information, but anyone can bring to life any idea based on that information.`
  String get windowHintBody {
    return Intl.message(
      'If you are facing issues accessing remote resources or want to keep your personal data confidential on an insecure network, one solution might be a reliable VPN connection.\n\nVPN (Virtual Private Network) is an inter-network communication technology for creating secure virtual communication channels. Encrypted traffic data is protected by cryptographic methods so that if an attacker intercepts it, decrypting it would take millions and millions of years.\n\nBesides VPN, there are many other ways to protect yourself online, such as network proxies or changing your IP address. Almost all of them share the working principles of VPN and also have a range of separate communication protocols designed for better performance in specific scenarios (corporate, personal solutions, or other specialized areas).\n\nDespite their broad capabilities, such technologies are based on simple mathematical principles and are not complicated to implement. If you wish, you can deploy your own VPN server or set up a private proxy – this is the best way to maintain control and privacy over your data.\n\nLinette is the same kind of network provider that you could become for yourself if you thoroughly study cybersecurity and the basics of programming.\n\nRemember: no one can physically perceive information, but anyone can bring to life any idea based on that information.',
      name: 'windowHintBody',
      desc: '',
      args: [],
    );
  }

  /// `Ok`
  String get windowHintAction {
    return Intl.message('Ok', name: 'windowHintAction', desc: '', args: []);
  }

  /// `App language`
  String get windowLanguageTitle {
    return Intl.message(
      'App language',
      name: 'windowLanguageTitle',
      desc: '',
      args: [],
    );
  }

  /// `Russian`
  String get windowLanguageBodyRussian {
    return Intl.message(
      'Russian',
      name: 'windowLanguageBodyRussian',
      desc: '',
      args: [],
    );
  }

  /// `English`
  String get windowLanguageBodyEnglish {
    return Intl.message(
      'English',
      name: 'windowLanguageBodyEnglish',
      desc: '',
      args: [],
    );
  }

  /// `Chinese`
  String get windowLanguageBodyChinese {
    return Intl.message(
      'Chinese',
      name: 'windowLanguageBodyChinese',
      desc: '',
      args: [],
    );
  }

  /// `Русский`
  String get windowLanguageBodyRussianNative {
    return Intl.message(
      'Русский',
      name: 'windowLanguageBodyRussianNative',
      desc: '',
      args: [],
    );
  }

  /// `English`
  String get windowLanguageBodyEnglishNative {
    return Intl.message(
      'English',
      name: 'windowLanguageBodyEnglishNative',
      desc: '',
      args: [],
    );
  }

  /// `中文`
  String get windowLanguageBodyChineseNative {
    return Intl.message(
      '中文',
      name: 'windowLanguageBodyChineseNative',
      desc: '',
      args: [],
    );
  }

  /// `Done`
  String get windowLanguageAction {
    return Intl.message(
      'Done',
      name: 'windowLanguageAction',
      desc: '',
      args: [],
    );
  }

  /// `Feedback`
  String get windowFeedbackTitle {
    return Intl.message(
      'Feedback',
      name: 'windowFeedbackTitle',
      desc: '',
      args: [],
    );
  }

  /// `Service news are being published on the `
  String get windowFeedbackBody_1 {
    return Intl.message(
      'Service news are being published on the ',
      name: 'windowFeedbackBody_1',
      desc: '',
      args: [],
    );
  }

  /// `official Telegram channel`
  String get windowFeedbackBody_2 {
    return Intl.message(
      'official Telegram channel',
      name: 'windowFeedbackBody_2',
      desc: '',
      args: [],
    );
  }

  /// `https://t.me/LinetteTelegramChannel`
  String get windowFeedbackBody_2_Link {
    return Intl.message(
      'https://t.me/LinetteTelegramChannel',
      name: 'windowFeedbackBody_2_Link',
      desc: '',
      args: [],
    );
  }

  /// `.`
  String get windowFeedbackBody_3 {
    return Intl.message('.', name: 'windowFeedbackBody_3', desc: '', args: []);
  }

  /// `Ok`
  String get windowFeedbackAction {
    return Intl.message('Ok', name: 'windowFeedbackAction', desc: '', args: []);
  }

  /// `App's arsenal`
  String get windowArsenalTitle {
    return Intl.message(
      'App\'s arsenal',
      name: 'windowArsenalTitle',
      desc: '',
      args: [],
    );
  }

  /// `Done`
  String get windowArsenalAction {
    return Intl.message(
      'Done',
      name: 'windowArsenalAction',
      desc: '',
      args: [],
    );
  }

  /// `Network parameters`
  String get windowNetTitle {
    return Intl.message(
      'Network parameters',
      name: 'windowNetTitle',
      desc: '',
      args: [],
    );
  }

  /// `Connection status`
  String get windowNetBodyParametersBlock_1_Title {
    return Intl.message(
      'Connection status',
      name: 'windowNetBodyParametersBlock_1_Title',
      desc: '',
      args: [],
    );
  }

  /// `Active connection:`
  String get windowNetBodyParametersBlock_1_Parameter_1_Stata {
    return Intl.message(
      'Active connection:',
      name: 'windowNetBodyParametersBlock_1_Parameter_1_Stata',
      desc: '',
      args: [],
    );
  }

  /// `WiFi`
  String get windowNetBodyParametersBlock_1_Parameter_1_Value {
    return Intl.message(
      'WiFi',
      name: 'windowNetBodyParametersBlock_1_Parameter_1_Value',
      desc: '',
      args: [],
    );
  }

  /// `Mobile network:`
  String get windowNetBodyParametersBlock_1_Parameter_2_Stata {
    return Intl.message(
      'Mobile network:',
      name: 'windowNetBodyParametersBlock_1_Parameter_2_Stata',
      desc: '',
      args: [],
    );
  }

  /// `4G`
  String get windowNetBodyParametersBlock_1_Parameter_2_Value {
    return Intl.message(
      '4G',
      name: 'windowNetBodyParametersBlock_1_Parameter_2_Value',
      desc: '',
      args: [],
    );
  }

  /// `Telecom operator:`
  String get windowNetBodyParametersBlock_1_Parameter_3_Stata {
    return Intl.message(
      'Telecom operator:',
      name: 'windowNetBodyParametersBlock_1_Parameter_3_Stata',
      desc: '',
      args: [],
    );
  }

  /// `Megafon`
  String get windowNetBodyParametersBlock_1_Parameter_3_Value {
    return Intl.message(
      'Megafon',
      name: 'windowNetBodyParametersBlock_1_Parameter_3_Value',
      desc: '',
      args: [],
    );
  }

  /// `Internet access:`
  String get windowNetBodyParametersBlock_1_Parameter_4_Stata {
    return Intl.message(
      'Internet access:',
      name: 'windowNetBodyParametersBlock_1_Parameter_4_Stata',
      desc: '',
      args: [],
    );
  }

  /// `Available`
  String get windowNetBodyParametersBlock_1_Parameter_4_Value {
    return Intl.message(
      'Available',
      name: 'windowNetBodyParametersBlock_1_Parameter_4_Value',
      desc: '',
      args: [],
    );
  }

  /// `Wi-Fi network settings`
  String get windowNetBodyParametersBlock_2_Title {
    return Intl.message(
      'Wi-Fi network settings',
      name: 'windowNetBodyParametersBlock_2_Title',
      desc: '',
      args: [],
    );
  }

  /// `SSID:`
  String get windowNetBodyParametersBlock_2_Parameter_1_Stata {
    return Intl.message(
      'SSID:',
      name: 'windowNetBodyParametersBlock_2_Parameter_1_Stata',
      desc: '',
      args: [],
    );
  }

  /// `TP-Link_S25`
  String get windowNetBodyParametersBlock_2_Parameter_1_Value {
    return Intl.message(
      'TP-Link_S25',
      name: 'windowNetBodyParametersBlock_2_Parameter_1_Value',
      desc: '',
      args: [],
    );
  }

  /// `BSSID:`
  String get windowNetBodyParametersBlock_2_Parameter_2_Stata {
    return Intl.message(
      'BSSID:',
      name: 'windowNetBodyParametersBlock_2_Parameter_2_Stata',
      desc: '',
      args: [],
    );
  }

  /// `98:BD:80:84:D5:D2`
  String get windowNetBodyParametersBlock_2_Parameter_2_Value {
    return Intl.message(
      '98:BD:80:84:D5:D2',
      name: 'windowNetBodyParametersBlock_2_Parameter_2_Value',
      desc: '',
      args: [],
    );
  }

  /// `Frequency range:`
  String get windowNetBodyParametersBlock_2_Parameter_3_Stata {
    return Intl.message(
      'Frequency range:',
      name: 'windowNetBodyParametersBlock_2_Parameter_3_Stata',
      desc: '',
      args: [],
    );
  }

  /// `2.4 GHz`
  String get windowNetBodyParametersBlock_2_Parameter_3_Value {
    return Intl.message(
      '2.4 GHz',
      name: 'windowNetBodyParametersBlock_2_Parameter_3_Value',
      desc: '',
      args: [],
    );
  }

  /// `Network channel number:`
  String get windowNetBodyParametersBlock_2_Parameter_4_Stata {
    return Intl.message(
      'Network channel number:',
      name: 'windowNetBodyParametersBlock_2_Parameter_4_Stata',
      desc: '',
      args: [],
    );
  }

  /// `21`
  String get windowNetBodyParametersBlock_2_Parameter_4_Value {
    return Intl.message(
      '21',
      name: 'windowNetBodyParametersBlock_2_Parameter_4_Value',
      desc: '',
      args: [],
    );
  }

  /// `RSSI:`
  String get windowNetBodyParametersBlock_2_Parameter_5_Stata {
    return Intl.message(
      'RSSI:',
      name: 'windowNetBodyParametersBlock_2_Parameter_5_Stata',
      desc: '',
      args: [],
    );
  }

  /// `95%`
  String get windowNetBodyParametersBlock_2_Parameter_5_Value {
    return Intl.message(
      '95%',
      name: 'windowNetBodyParametersBlock_2_Parameter_5_Value',
      desc: '',
      args: [],
    );
  }

  /// `Connection speed:`
  String get windowNetBodyParametersBlock_2_Parameter_6_Stata {
    return Intl.message(
      'Connection speed:',
      name: 'windowNetBodyParametersBlock_2_Parameter_6_Stata',
      desc: '',
      args: [],
    );
  }

  /// `150 Mbps`
  String get windowNetBodyParametersBlock_2_Parameter_6_Value {
    return Intl.message(
      '150 Mbps',
      name: 'windowNetBodyParametersBlock_2_Parameter_6_Value',
      desc: '',
      args: [],
    );
  }

  /// `IP addressing and routing`
  String get windowNetBodyParametersBlock_3_Title {
    return Intl.message(
      'IP addressing and routing',
      name: 'windowNetBodyParametersBlock_3_Title',
      desc: '',
      args: [],
    );
  }

  /// `Local IPv4 address:`
  String get windowNetBodyParametersBlock_3_Parameter_1_Stata {
    return Intl.message(
      'Local IPv4 address:',
      name: 'windowNetBodyParametersBlock_3_Parameter_1_Stata',
      desc: '',
      args: [],
    );
  }

  /// `192.168.1.45`
  String get windowNetBodyParametersBlock_3_Parameter_1_Value {
    return Intl.message(
      '192.168.1.45',
      name: 'windowNetBodyParametersBlock_3_Parameter_1_Value',
      desc: '',
      args: [],
    );
  }

  /// `Local IPv6 address:`
  String get windowNetBodyParametersBlock_3_Parameter_2_Stata {
    return Intl.message(
      'Local IPv6 address:',
      name: 'windowNetBodyParametersBlock_3_Parameter_2_Stata',
      desc: '',
      args: [],
    );
  }

  /// `-`
  String get windowNetBodyParametersBlock_3_Parameter_2_Value {
    return Intl.message(
      '-',
      name: 'windowNetBodyParametersBlock_3_Parameter_2_Value',
      desc: '',
      args: [],
    );
  }

  /// `External IP address:`
  String get windowNetBodyParametersBlock_3_Parameter_3_Stata {
    return Intl.message(
      'External IP address:',
      name: 'windowNetBodyParametersBlock_3_Parameter_3_Stata',
      desc: '',
      args: [],
    );
  }

  /// `43.38.6.38`
  String get windowNetBodyParametersBlock_3_Parameter_3_Value {
    return Intl.message(
      '43.38.6.38',
      name: 'windowNetBodyParametersBlock_3_Parameter_3_Value',
      desc: '',
      args: [],
    );
  }

  /// `Subnet mask:`
  String get windowNetBodyParametersBlock_3_Parameter_4_Stata {
    return Intl.message(
      'Subnet mask:',
      name: 'windowNetBodyParametersBlock_3_Parameter_4_Stata',
      desc: '',
      args: [],
    );
  }

  /// `255.255.255.0`
  String get windowNetBodyParametersBlock_3_Parameter_4_Value {
    return Intl.message(
      '255.255.255.0',
      name: 'windowNetBodyParametersBlock_3_Parameter_4_Value',
      desc: '',
      args: [],
    );
  }

  /// `Default gateway:`
  String get windowNetBodyParametersBlock_3_Parameter_5_Stata {
    return Intl.message(
      'Default gateway:',
      name: 'windowNetBodyParametersBlock_3_Parameter_5_Stata',
      desc: '',
      args: [],
    );
  }

  /// `192.168.1.1`
  String get windowNetBodyParametersBlock_3_Parameter_5_Value {
    return Intl.message(
      '192.168.1.1',
      name: 'windowNetBodyParametersBlock_3_Parameter_5_Value',
      desc: '',
      args: [],
    );
  }

  /// `Communication interface:`
  String get windowNetBodyParametersBlock_3_Parameter_6_Stata {
    return Intl.message(
      'Communication interface:',
      name: 'windowNetBodyParametersBlock_3_Parameter_6_Stata',
      desc: '',
      args: [],
    );
  }

  /// `wlan0`
  String get windowNetBodyParametersBlock_3_Parameter_6_Value {
    return Intl.message(
      'wlan0',
      name: 'windowNetBodyParametersBlock_3_Parameter_6_Value',
      desc: '',
      args: [],
    );
  }

  /// `Domain Name System`
  String get windowNetBodyParametersBlock_4_Title {
    return Intl.message(
      'Domain Name System',
      name: 'windowNetBodyParametersBlock_4_Title',
      desc: '',
      args: [],
    );
  }

  /// `DNS servers:`
  String get windowNetBodyParametersBlock_4_Parameter_1_Stata {
    return Intl.message(
      'DNS servers:',
      name: 'windowNetBodyParametersBlock_4_Parameter_1_Stata',
      desc: '',
      args: [],
    );
  }

  /// `8.8.8.8, 1.1.1.1`
  String get windowNetBodyParametersBlock_4_Parameter_1_Value {
    return Intl.message(
      '8.8.8.8, 1.1.1.1',
      name: 'windowNetBodyParametersBlock_4_Parameter_1_Value',
      desc: '',
      args: [],
    );
  }

  /// `Private DNS Status:`
  String get windowNetBodyParametersBlock_4_Parameter_2_Stata {
    return Intl.message(
      'Private DNS Status:',
      name: 'windowNetBodyParametersBlock_4_Parameter_2_Stata',
      desc: '',
      args: [],
    );
  }

  /// `DoH is enabled`
  String get windowNetBodyParametersBlock_4_Parameter_2_Value {
    return Intl.message(
      'DoH is enabled',
      name: 'windowNetBodyParametersBlock_4_Parameter_2_Value',
      desc: '',
      args: [],
    );
  }

  /// `DNS Provider:`
  String get windowNetBodyParametersBlock_4_Parameter_3_Stata {
    return Intl.message(
      'DNS Provider:',
      name: 'windowNetBodyParametersBlock_4_Parameter_3_Stata',
      desc: '',
      args: [],
    );
  }

  /// `Google DNS`
  String get windowNetBodyParametersBlock_4_Parameter_3_Value {
    return Intl.message(
      'Google DNS',
      name: 'windowNetBodyParametersBlock_4_Parameter_3_Value',
      desc: '',
      args: [],
    );
  }

  /// `Bypass and Restriction Control`
  String get windowNetBodyParametersBlock_5_Title {
    return Intl.message(
      'Bypass and Restriction Control',
      name: 'windowNetBodyParametersBlock_5_Title',
      desc: '',
      args: [],
    );
  }

  /// `VPN connection status:`
  String get windowNetBodyParametersBlock_5_Parameter_1_Stata {
    return Intl.message(
      'VPN connection status:',
      name: 'windowNetBodyParametersBlock_5_Parameter_1_Stata',
      desc: '',
      args: [],
    );
  }

  /// `Active`
  String get windowNetBodyParametersBlock_5_Parameter_1_Value {
    return Intl.message(
      'Active',
      name: 'windowNetBodyParametersBlock_5_Parameter_1_Value',
      desc: '',
      args: [],
    );
  }

  /// `VPN interface name:`
  String get windowNetBodyParametersBlock_5_Parameter_2_Stata {
    return Intl.message(
      'VPN interface name:',
      name: 'windowNetBodyParametersBlock_5_Parameter_2_Stata',
      desc: '',
      args: [],
    );
  }

  /// `tun0`
  String get windowNetBodyParametersBlock_5_Parameter_2_Value {
    return Intl.message(
      'tun0',
      name: 'windowNetBodyParametersBlock_5_Parameter_2_Value',
      desc: '',
      args: [],
    );
  }

  /// `System proxy:`
  String get windowNetBodyParametersBlock_5_Parameter_3_Stata {
    return Intl.message(
      'System proxy:',
      name: 'windowNetBodyParametersBlock_5_Parameter_3_Stata',
      desc: '',
      args: [],
    );
  }

  /// `-`
  String get windowNetBodyParametersBlock_5_Parameter_3_Value {
    return Intl.message(
      '-',
      name: 'windowNetBodyParametersBlock_5_Parameter_3_Value',
      desc: '',
      args: [],
    );
  }

  /// `Location:`
  String get windowNetBodyParametersBlock_5_Parameter_4_Stata {
    return Intl.message(
      'Location:',
      name: 'windowNetBodyParametersBlock_5_Parameter_4_Stata',
      desc: '',
      args: [],
    );
  }

  /// `Russia, Moscow`
  String get windowNetBodyParametersBlock_5_Parameter_4_Value {
    return Intl.message(
      'Russia, Moscow',
      name: 'windowNetBodyParametersBlock_5_Parameter_4_Value',
      desc: '',
      args: [],
    );
  }

  /// `IP address type:`
  String get windowNetBodyParametersBlock_5_Parameter_5_Stata {
    return Intl.message(
      'IP address type:',
      name: 'windowNetBodyParametersBlock_5_Parameter_5_Stata',
      desc: '',
      args: [],
    );
  }

  /// `VPN`
  String get windowNetBodyParametersBlock_5_Parameter_5_Value {
    return Intl.message(
      'VPN',
      name: 'windowNetBodyParametersBlock_5_Parameter_5_Value',
      desc: '',
      args: [],
    );
  }

  /// `Network quality metrics`
  String get windowNetBodyParametersBlock_6_Title {
    return Intl.message(
      'Network quality metrics',
      name: 'windowNetBodyParametersBlock_6_Title',
      desc: '',
      args: [],
    );
  }

  /// `Ping:`
  String get windowNetBodyParametersBlock_6_Parameter_1_Stata {
    return Intl.message(
      'Ping:',
      name: 'windowNetBodyParametersBlock_6_Parameter_1_Stata',
      desc: '',
      args: [],
    );
  }

  /// `10ms`
  String get windowNetBodyParametersBlock_6_Parameter_1_Value {
    return Intl.message(
      '10ms',
      name: 'windowNetBodyParametersBlock_6_Parameter_1_Value',
      desc: '',
      args: [],
    );
  }

  /// `Packet loss:`
  String get windowNetBodyParametersBlock_6_Parameter_2_Stata {
    return Intl.message(
      'Packet loss:',
      name: 'windowNetBodyParametersBlock_6_Parameter_2_Stata',
      desc: '',
      args: [],
    );
  }

  /// `5%`
  String get windowNetBodyParametersBlock_6_Parameter_2_Value {
    return Intl.message(
      '5%',
      name: 'windowNetBodyParametersBlock_6_Parameter_2_Value',
      desc: '',
      args: [],
    );
  }

  /// `MTU:`
  String get windowNetBodyParametersBlock_6_Parameter_3_Stata {
    return Intl.message(
      'MTU:',
      name: 'windowNetBodyParametersBlock_6_Parameter_3_Stata',
      desc: '',
      args: [],
    );
  }

  /// `1500`
  String get windowNetBodyParametersBlock_6_Parameter_3_Value {
    return Intl.message(
      '1500',
      name: 'windowNetBodyParametersBlock_6_Parameter_3_Value',
      desc: '',
      args: [],
    );
  }

  /// `Ok`
  String get windowNetAction {
    return Intl.message('Ok', name: 'windowNetAction', desc: '', args: []);
  }

  /// `Account`
  String get windowAccountTitle {
    return Intl.message(
      'Account',
      name: 'windowAccountTitle',
      desc: '',
      args: [],
    );
  }

  /// `Done`
  String get windowAccountAction {
    return Intl.message(
      'Done',
      name: 'windowAccountAction',
      desc: '',
      args: [],
    );
  }

  /// `Wallet`
  String get windowWalletTitle {
    return Intl.message(
      'Wallet',
      name: 'windowWalletTitle',
      desc: '',
      args: [],
    );
  }

  /// `Done`
  String get windowWalletAction {
    return Intl.message('Done', name: 'windowWalletAction', desc: '', args: []);
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<Texts> {
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
  Future<Texts> load(Locale locale) => Texts.load(locale);
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
