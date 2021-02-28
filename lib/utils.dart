import 'package:url_launcher/url_launcher.dart';

class Utils {
  static void openUrl(String url) async {
    final url = 'https://www.flutter4fun.com';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}
