// Dart imports:
import 'dart:convert';

// Flutter imports:
import 'package:flutter/services.dart' show rootBundle;

// Package imports:
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:terralinkapp/core/common/constants.dart';
import 'package:terralinkapp/core/repositories/di_scope_repository.dart';
import 'package:terralinkapp/features/news/data/dao/api_news_dao.dart';
import 'package:terralinkapp/features/news/data/mappers/api_news_dao_mapper.dart';
import 'package:terralinkapp/features/news/data/repositories/news_repository.dart';
import 'package:terralinkapp/features/news/domain/entities/api_news.dart';
import 'package:terralinkapp/generated/l10n.dart';

@LazySingleton(
  as: NewsRepository,
  env: [Environment.dev, Environment.prod],
  scope: Scopes.mockScope,
)
class NewsMockRepository implements NewsRepository {
  final Constants _constants;

  NewsMockRepository({required Constants constants}) : _constants = constants;

  @override
  void clearCache() {}

  @override
  Future<List<ApiNews>> get() async {
    final String jsonPath = S.current.mockNewsAssetPath;

    String data = await rootBundle.loadString(jsonPath);

    final jsonResult = jsonDecode(data);

    final List<ApiNews> result = List.from(jsonResult)
        .map((item) => ApiNewsDao.fromJson(item).toDomain(
              _constants.getNewsApiBaseUrl(),
              _constants.getNewsApiBaseUrl(),
            ))
        .where((item) => item.published)
        .toList();

    return result;
  }
}
