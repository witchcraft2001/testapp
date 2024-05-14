// Project imports:
import 'package:terralinkapp/features/chats/data/dao/chat_query_example_category_dao.dart';

class ChatQueryExampleDao {
  final int id, sortId;
  final String title, description, text;
  final bool? isPublished;
  final ChatQueryExampleCategoryDao category;

  ChatQueryExampleDao.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        title = json['title'],
        description = json['description'],
        text = json['text'],
        sortId = json['sort_id'],
        isPublished = json['published'],
        category = ChatQueryExampleCategoryDao.fromJson(json['category']);
}
