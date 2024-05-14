// Project imports:
import 'package:terralinkapp/features/chats/domain/entities/query_examples/chat_query_example_category.dart';

class ChatQueryExample {
  final int id, sortId;
  final String title, description, text;
  final bool? isPublished;
  final ChatQueryExampleCategory category;

  ChatQueryExample({
    required this.id,
    required this.sortId,
    required this.title,
    required this.description,
    required this.text,
    required this.isPublished,
    required this.category,
  });
}
