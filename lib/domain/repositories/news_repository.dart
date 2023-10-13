// Project imports:
import 'package:terralinkapp/domain/entities/api_news.dart';

abstract class NewsRepository {
  Future<List<ApiNews>> get();

  void clearCache();
}
