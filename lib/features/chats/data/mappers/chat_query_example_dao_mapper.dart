// Project imports:
import 'package:terralinkapp/features/chats/data/dao/chat_query_example_category_dao.dart';
import 'package:terralinkapp/features/chats/domain/entities/query_examples/chat_query_example_category.dart';

extension ChatQueryExampleCategoryDaoMapper on ChatQueryExampleCategoryDao {
  ChatQueryExampleCategory toDomain([String? imageUrlPrefix]) => ChatQueryExampleCategory(
        id: id,
        title: title,
        isPublished: isPublished,
        parentCategory: parentCategory?.toDomain(),
      );
}
