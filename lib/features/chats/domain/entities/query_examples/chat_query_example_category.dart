class ChatQueryExampleCategory {
  final int id;
  final String title;
  final bool isPublished;
  final ChatQueryExampleCategory? parentCategory;

  ChatQueryExampleCategory({
    required this.id,
    required this.title,
    required this.isPublished,
    this.parentCategory,
  });
}
