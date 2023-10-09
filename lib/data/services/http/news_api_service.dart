// Package imports:
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:terralinkapp/data/providers/dio_provider.dart';
import 'package:terralinkapp/data/services/log_service.dart';
import 'package:terralinkapp/data/use_cases/settings/get_news_api_base_url_use_case.dart';
import 'http_service.dart';

@LazySingleton(env: [Environment.dev, Environment.prod])
class NewsApiService extends HttpService {
  final GetNewsApiBaseUrlUseCase _getNewsApiBaseUrlUseCase;

  NewsApiService(
    DioProvider dioProvider,
    LogService logService,
    this._getNewsApiBaseUrlUseCase,
  ) : super(dioProvider.provideDio(), logService);

  @override
  String get baseUrl => _getNewsApiBaseUrlUseCase.run();
}
