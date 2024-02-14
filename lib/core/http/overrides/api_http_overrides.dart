// Dart imports:
import 'dart:io';

// Package imports:
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:terralinkapp/features/settings/domain/use_cases/get_admin_panel_api_base_url_use_case.dart';

@LazySingleton(
  env: [Environment.dev, Environment.prod],
)
class ApiHttpOverrides extends HttpOverrides {
  final GetAdminPanelApiBaseUrlUseCase _getAdminPanelApiBaseUrlUseCase;

  ApiHttpOverrides(
    this._getAdminPanelApiBaseUrlUseCase,
  );

  @override
  HttpClient createHttpClient(SecurityContext? context) {
    return super.createHttpClient(context)
      ..badCertificateCallback = ((_, host, __) {
        final isDisableCertificateCheck = [
          _getAdminPanelApiBaseUrlUseCase(),
        ].any((url) => url.contains(host));

        return isDisableCertificateCheck;
      });
  }
}
