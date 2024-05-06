// Package imports:
import 'package:html/parser.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(
  env: [Environment.dev, Environment.prod],
)
class AppParsingTagsService {
  String parseTasksSbs(String? content) {
    if (content == null) return '';

    if (!content.startsWith('<')) {
      return content;
    }

    final document = parse(content);

    return document.body?.text ?? content;
  }
}
