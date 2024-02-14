// Project imports:
import 'package:terralinkapp/core/use_cases/params/use_case_params.dart';
import 'package:terralinkapp/features/api_settings/data/entities/api_settings.dart';

class ApiSettingsUseCaseParams implements UseCaseParams {
  ApiSettingsUseCaseParams(this.settings);

  final ApiSettings settings;
}
