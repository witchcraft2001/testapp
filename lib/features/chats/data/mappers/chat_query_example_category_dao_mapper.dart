// Project imports:
import 'package:terralinkapp/features/chats/data/dao/chat_query_example_dao.dart';
import 'package:terralinkapp/features/chats/data/mappers/chat_query_example_dao_mapper.dart';
import 'package:terralinkapp/features/chats/domain/entities/query_examples/chat_query_example.dart';

extension ChatQueryExampleDaoMapper on ChatQueryExampleDao {
  ChatQueryExample toDomain([String? imageUrlPrefix]) => ChatQueryExample(
        id: id,
        sortId: sortId,
        title: title,
        description: description,
        text: text,
        isPublished: isPublished,
        category: category.toDomain(),
      );
}
