// Dart imports:
import 'dart:async';

// Package imports:
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:terralinkapp/core/services/log_service.dart';
import 'package:terralinkapp/features/tasks/summary/domain/states/tasks_summary_cubit_state.dart';
import 'package:terralinkapp/features/tasks/vacations/data/repositories/tasks_vacation_repository.dart';
import 'package:terralinkapp/features/tasks/vacations/data/use_cases/clear_cache_tasks_vacation_use_case.dart';
import 'package:terralinkapp/features/tasks/vacations/data/use_cases/get_tasks_vacation_use_case.dart';

@injectable
class TasksVacationSummaryCubit extends Cubit<TasksSummaryCubitState> {
  final GetTasksVacationUseCase _getTasksVacationUseCase;
  final ClearCacheTasksVacationUseCase _clearCacheTasksUseCase;
  final TasksVacationRepository _vacationRepository;
  final LogService _logService;

  late StreamSubscription _easSubscription;

  TasksVacationSummaryCubit(
    this._getTasksVacationUseCase,
    this._clearCacheTasksUseCase,
    this._vacationRepository,
    this._logService,
  ) : super(const TasksSummaryCubitState.init()) {
    _easSubscription = _vacationRepository.stream.listen((value) {
      _current = _current.copyWith(
        count: value,
      );

      emit(TasksSummaryCubitState.ready(_current));
    });
  }

  TasksSummaryStateReadyData _current = const TasksSummaryStateReadyData();

  Future<void> init() async {
    emit(const TasksSummaryCubitState.init());

    try {
      final vacations = await _getTasksVacationUseCase.run();

      _current = _current.copyWith(count: vacations.length);
    } catch (e, stackTrace) {
      await _logService.recordError(e, stackTrace);
    } finally {
      emit(TasksSummaryCubitState.ready(_current));
    }
  }

  Future<void> refresh() async {
    _clearCacheTasksUseCase.run();

    await init();
  }

  @override
  Future<void> close() async {
    _easSubscription.cancel();

    super.close();
  }
}
