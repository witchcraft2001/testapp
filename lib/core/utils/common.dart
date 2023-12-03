// Package imports:
import 'package:url_launcher/url_launcher.dart';

Future<void> launchURL(
  String url, {
  LaunchMode mode = LaunchMode.platformDefault,
}) async {
  final uri = Uri.parse(url);

  await launchUrl(uri, mode: mode);
}

String getInitials(String value) => value
    .toUpperCase()
    .split(' ')
    .take(2)
    .where((element) => element.isNotEmpty)
    .map((e) => e.substring(0, 1))
    .join();
