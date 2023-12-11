// Dart imports:
import 'dart:io';

// Project imports:
import 'package:terralinkapp/core/http/overrides/api_http_overrides.dart';
import 'package:terralinkapp/core/notifications/services/timezone_service.dart';
import 'package:terralinkapp/features/api_settings/data/providers/api_settings_provider.dart';
import 'injection.dart';

Future<void> commonInit() async {
  await getIt<TimeZoneService>().init();
  await getIt<ApiSettingsProvider>().init();

  // Needed to ignore certificate verification to host
  HttpOverrides.global = getIt<ApiHttpOverrides>();
}
