// Project imports:
import 'package:terralinkapp/features/stories/data/entities/app_tag_content.dart';

enum ApiStoryBlockType {
  title,
  textField,
  image,
  linkButton,
}

class ApiStoryBlock {
  final String id;
  final String story;
  final ApiStoryBlockType type;
  final String title;
  final String link;
  final String content;
  final List<AppTagContent> parsedContent;
  final String? image;
  final String buttonTitle;
  final int sortId;

  ApiStoryBlock({
    required this.id,
    required this.story,
    required this.type,
    required this.title,
    required this.link,
    required this.content,
    required this.parsedContent,
    required this.image,
    required this.buttonTitle,
    required this.sortId,
  });
}
