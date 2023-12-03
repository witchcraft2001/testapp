// Project imports:
import 'package:terralinkapp/core/notifications/services/timezone_service.dart';
import 'package:terralinkapp/features/api_settings/data/providers/api_settings_provider.dart';
import 'injection.dart';

Future<void> commonInit() async {
  await getIt<TimeZoneService>().init();
  await getIt<ApiSettingsProvider>().init();
}
