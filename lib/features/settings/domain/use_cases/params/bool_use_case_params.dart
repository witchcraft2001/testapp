// Project imports:
import 'package:terralinkapp/core/use_cases/params/use_case_params.dart';

sealed class BoolUseCaseParams implements UseCaseParams {
  BoolUseCaseParams(this.value);

  final bool value;
}

class BillingNotificationStatusUseCaseParams extends BoolUseCaseParams {
  BillingNotificationStatusUseCaseParams(super.value);
}

class DarkModeStatusUseCaseParams extends BoolUseCaseParams {
  DarkModeStatusUseCaseParams(super.value);
}

class SystemModeStatusUseCaseParams extends BoolUseCaseParams {
  SystemModeStatusUseCaseParams(super.value);
}
