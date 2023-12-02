// Project imports:
import 'package:terralinkapp/features/news/domain/entities/api_news.dart';

abstract class NewsRepository {
  Future<List<ApiNews>> get();

  void clearCache();
}
