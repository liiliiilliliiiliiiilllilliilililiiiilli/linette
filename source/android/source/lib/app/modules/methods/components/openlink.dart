// Methods module - Open link component

import 'package:url_launcher/url_launcher.dart';



class OpenLinkComponent {

  static Future <void> openLink ({required String link}) async {

    final Uri url = Uri.parse (link);


    if (await canLaunchUrl (url)) {

      await launchUrl (url);

    }

  }

}