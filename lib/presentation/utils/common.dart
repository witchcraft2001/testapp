// Package imports:
import 'package:url_launcher/url_launcher.dart';

Future<void> launchURL(
  String url, {
  LaunchMode mode = LaunchMode.platformDefault,
}) async {
  final uri = Uri.parse(url);

  await launchUrl(uri, mode: mode);
}
