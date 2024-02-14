// Package imports:
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:terralinkapp/core/use_cases/params/no_params.dart';
import 'package:terralinkapp/core/use_cases/params/use_case_params.dart';
import 'package:terralinkapp/core/use_cases/use_case.dart';
import 'package:terralinkapp/features/api_settings/data/providers/api_settings_provider.dart';

@injectable
class GetTasksSbsApiBaseUrlUseCase implements ParamlessUseCase<String> {
  final ApiSettingsProvider _apiSettingsProvider;

  GetTasksSbsApiBaseUrlUseCase(this._apiSettingsProvider);

  @override
  String call([UseCaseParams params = const NoParams()]) =>
      _apiSettingsProvider.getTasksSbsApiBaseUrl();
}
