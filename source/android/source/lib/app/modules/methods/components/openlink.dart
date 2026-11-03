// Methods module - Open link method

import 'package:url_launcher/url_launcher.dart';



abstract class OpenLinkMethod {

  static Future <void> openLink ({required String link}) async {

    final Uri url = Uri.parse (link);


    if (await canLaunchUrl (url)) {

      await launchUrl (url);

    }

  }

}