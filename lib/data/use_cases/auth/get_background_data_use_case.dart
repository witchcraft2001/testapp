// Package imports:
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:terralinkapp/data/use_cases/tasks_eas/get_tasks_eas_use_case.dart';
import 'package:terralinkapp/data/use_cases/tasks_sbs_late/get_tasks_sbs_late_use_case.dart';
import 'package:terralinkapp/data/use_cases/tasks_sbs_weekly/get_tasks_sbs_weekly_use_case.dart';
import 'package:terralinkapp/data/use_cases/tasks_vacation/get_tasks_vacation_use_case.dart';

@injectable
class GetBackgroundDataUseCase {
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

  Future<void> run() async {
    await Future.wait([
      _getTasksSbsWeeklyUseCase.run(),
      _getTasksSbsLateUseCase.run(),
      _getTasksEasUseCase.run(),
      _getTasksVacationUseCase.run(),
    ]);
  }
}
