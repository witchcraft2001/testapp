// Dart imports:
import 'dart:async';

// Package imports:
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:terralinkapp/core/services/log_service.dart';
import 'package:terralinkapp/features/tasks/eas/data/repositories/tasks_eas_repository.dart';
import 'package:terralinkapp/features/tasks/eas/data/use_cases/tasks/clear_cache_tasks_eas_use_case.dart';
import 'package:terralinkapp/features/tasks/eas/data/use_cases/tasks/get_tasks_eas_use_case.dart';
import 'package:terralinkapp/features/tasks/summary/domain/states/tasks_summary_cubit_state.dart';

@injectable
class TasksEasSummaryCubit extends Cubit<TasksSummaryCubitState> {
  final GetTasksEasUseCase _getTasksEasUseCase;
  final ClearCacheTasksEasUseCase _clearCacheTasksUseCase;
  final TasksEasRepository _easRepository;
  final LogService _logService;

  late StreamSubscription _easSubscription;

  TasksEasSummaryCubit(
    this._getTasksEasUseCase,
    this._clearCacheTasksUseCase,
    this._easRepository,
    this._logService,
  ) : super(const TasksSummaryCubitState.init()) {
    _easSubscription = _easRepository.stream.listen((value) {
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
      final eas = await _getTasksEasUseCase.run();

      _current = _current.copyWith(count: eas.length);
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
