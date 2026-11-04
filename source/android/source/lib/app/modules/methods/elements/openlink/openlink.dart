// Methods module - Open link

import 'package:url_launcher/url_launcher.dart';



class OpenLinkElement {

  static Future <void> openLink (String link) async {

    final Uri url = Uri.parse (link);


    if (await canLaunchUrl (url)) {

      await launchUrl (url);

    }

  }

}