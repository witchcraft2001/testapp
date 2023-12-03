// Package imports:
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:terralinkapp/features/tasks/eas/data/use_cases/tasks/get_tasks_eas_use_case.dart';
import 'package:terralinkapp/features/tasks/sbs_late/data/use_cases/get_tasks_sbs_late_use_case.dart';
import 'package:terralinkapp/features/tasks/sbs_weekly/data/use_cases/get_tasks_sbs_weekly_use_case.dart';
import 'package:terralinkapp/features/tasks/vacations/data/use_cases/get_tasks_vacation_use_case.dart';

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
