// Package imports:
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:terralinkapp/core/use_cases/params/no_params.dart';
import 'package:terralinkapp/core/use_cases/params/use_case_params.dart';
import 'package:terralinkapp/core/use_cases/use_case.dart';
import 'package:terralinkapp/features/tasks/eas/domain/use_cases/tasks/get_tasks_eas_use_case.dart';
import 'package:terralinkapp/features/tasks/sbs_late/domain/use_cases/get_tasks_sbs_late_use_case.dart';
import 'package:terralinkapp/features/tasks/sbs_weekly/domain/use_cases/get_tasks_sbs_weekly_use_case.dart';
import 'package:terralinkapp/features/tasks/vacations/domain/use_cases/get_tasks_vacation_use_case.dart';

@injectable
class GetBackgroundDataUseCase implements AsyncParamlessUseCase<void> {
  final GetTasksSbsWeeklyUseCase _getTasksSbsWeeklyUseCase;
  final GetTasksSbsLateUseCase _getTasksSbsLateUseCase;
  final GetTasksEasUseCase _getTasksEasUseCase;
  final GetTasksVacationUseCase _getTasksVacationUseCase;

  GetBackgroundDataUseCase(
    this._getTasksSbsWeeklyUseCase,
    this._getTasksSbsLateUseCase,
    this._getTasksEasUseCase,
    this._getTasksVacationUseCase,
  );

  @override
  Future<void> call([UseCaseParams params = const NoParams()]) async {
    await Future.wait([
      _getTasksSbsWeeklyUseCase(),
      _getTasksSbsLateUseCase(),
      _getTasksEasUseCase(),
      _getTasksVacationUseCase(),
    ]);
  }
}
