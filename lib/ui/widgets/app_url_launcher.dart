import 'package:url_launcher/url_launcher.dart';

class AppUrlLaucher {
  static Future<bool?> launchURL(String url) async {
    Uri parsedUrl = Uri.parse(url);
    if (await canLaunchUrl(parsedUrl)) {
      await launchUrl(parsedUrl);
    } else {
      throw 'Could not launch $url';
    }
    return null;
  }
}
