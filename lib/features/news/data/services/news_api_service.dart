// Package imports:
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:terralinkapp/core/http/providers/dio_provider.dart';
import 'package:terralinkapp/core/http/services/http_service.dart';
import 'package:terralinkapp/core/services/log_service.dart';
import 'package:terralinkapp/features/settings/data/use_cases/get_news_api_base_url_use_case.dart';

@LazySingleton(
  env: [Environment.dev, Environment.prod],
)
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
