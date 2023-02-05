import 'package:url_launcher/url_launcher.dart';

class Foz {
  static Future<void> launcUrl(
    String url,
  ) async {
    if (!await launchUrl(Uri.parse(url))) {
      throw 'Could not launch $url';
    }
  }
}
