class ChatQueryExampleCategoryDao {
  final int id;
  final String title;
  final bool isPublished;
  final ChatQueryExampleCategoryDao? parentCategory;

  ChatQueryExampleCategoryDao.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        title = json['title'],
        isPublished = json['published'],
        parentCategory = json['parent_category'] != null
            ? ChatQueryExampleCategoryDao.fromJson(json['parent_category'])
            : null;
}
