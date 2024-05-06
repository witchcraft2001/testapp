// Package imports:
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:terralinkapp/core/use_cases/params/no_params.dart';
import 'package:terralinkapp/core/use_cases/params/use_case_params.dart';
import 'package:terralinkapp/core/use_cases/use_case.dart';
import 'package:terralinkapp/features/tasks/eas/domain/use_cases/tasks/clear_cache_tasks_eas_use_case.dart';
import 'package:terralinkapp/features/tasks/sbs_late/domain/use_cases/clear_cache_tasks_sbs_late_use_case.dart';
import 'package:terralinkapp/features/tasks/sbs_weekly/domain/use_cases/clear_cache_tasks_sbs_weekly_use_case.dart';
import 'package:terralinkapp/features/tasks/vacations/domain/use_cases/clear_cache_tasks_vacation_use_case.dart';

abstract class ClearDataInternalSystemsUseCase implements ParamlessUseCase<void> {}

@Injectable(
  as: ClearDataInternalSystemsUseCase,
  env: [Environment.dev, Environment.prod],
)
class ClearDataInternalSystemsUseCaseImpl extends ClearDataInternalSystemsUseCase {
  final ClearCacheTasksEasUseCase _clearCacheTasksEasUseCase;
  final ClearCacheTasksSbsWeeklyUseCase _clearCacheTasksSbsWeeklyUseCase;
  final ClearCacheTasksSbsLateUseCase _clearCacheTasksSbsLateUseCase;
  final ClearCacheTasksVacationUseCase _clearCacheTasksVacationUseCase;

  ClearDataInternalSystemsUseCaseImpl(
    this._clearCacheTasksEasUseCase,
    this._clearCacheTasksSbsWeeklyUseCase,
    this._clearCacheTasksSbsLateUseCase,
    this._clearCacheTasksVacationUseCase,
  );

  @override
  void call([UseCaseParams params = const NoParams()]) {
    _clearCacheTasksEasUseCase();
    _clearCacheTasksSbsLateUseCase();
    _clearCacheTasksSbsWeeklyUseCase();
    _clearCacheTasksVacationUseCase();
  }
}
