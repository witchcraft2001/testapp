enum ApiGreetingTemplateGroupBlockType {
  signature,
  textField,
  image,
  appeal,
}

class ApiGreetingTemplateGroupBlock {
  final String id;
  final String story;
  final ApiGreetingTemplateGroupBlockType type;
  final String title;
  final String link;
  final String content;
  final String? image;
  final String buttonTitle;
  final int sortId;

  ApiGreetingTemplateGroupBlock({
    required this.id,
    required this.story,
    required this.type,
    required this.title,
    required this.link,
    required this.content,
    required this.image,
    required this.buttonTitle,
    required this.sortId,
  });
}
