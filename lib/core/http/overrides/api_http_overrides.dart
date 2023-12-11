// Dart imports:
import 'dart:io';

// Package imports:
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:terralinkapp/features/settings/data/use_cases/get_news_api_base_url_use_case.dart';

@LazySingleton(
  env: [Environment.dev, Environment.prod],
)
class ApiHttpOverrides extends HttpOverrides {
  final GetNewsApiBaseUrlUseCase _getNewsApiBaseUrlUseCase;

  ApiHttpOverrides(
    this._getNewsApiBaseUrlUseCase,
  );

  @override
  HttpClient createHttpClient(SecurityContext? context) {
    return super.createHttpClient(context)
      ..badCertificateCallback = ((_, host, __) {
        final isDisableCertificateCheck = [
          _getNewsApiBaseUrlUseCase.run(),
        ].any((url) => url.contains(host));

        return isDisableCertificateCheck;
      });
  }
}
