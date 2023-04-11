import 'package:url_launcher/url_launcher.dart';
//https://github.com/Afil612167
launchURL(String url) async {
  final uri = Uri.parse(url);
  if (await canLaunchUrl(uri)) {
    await launchUrl(uri);
  } else {
    throw 'Could not launch $url';
  }
}