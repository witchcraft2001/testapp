// Package imports:
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:terralinkapp/common/constants.dart';
import 'package:terralinkapp/data/providers/dio_provider.dart';
import 'package:terralinkapp/data/services/log_service.dart';
import 'http_service.dart';

@LazySingleton(env: [Environment.dev, Environment.prod])
class NewsApiService extends HttpService {
  NewsApiService(
    Constants constants,
    DioProvider dioProvider,
    LogService logService,
  ) : super(dioProvider.provideDio(constants.getApiBaseUrlNews()), logService);
}
