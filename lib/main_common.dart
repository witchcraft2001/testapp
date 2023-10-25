// Project imports:
import 'package:terralinkapp/data/providers/api_settings_provider.dart';
import 'package:terralinkapp/data/services/timezone_service.dart';
import 'injection.dart';

Future<void> commonInit() async {
  await getIt<TimeZoneService>().init();
  await getIt<ApiSettingsProvider>().init();
}
