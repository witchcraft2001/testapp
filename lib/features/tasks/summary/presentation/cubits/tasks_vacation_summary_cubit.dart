// Dart imports:
import 'dart:async';

// Package imports:
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:terralinkapp/core/services/log_service.dart';
import 'package:terralinkapp/core/ui/states/common_state_lite.dart';
import 'package:terralinkapp/features/tasks/summary/presentation/cubits/states/tasks_summary_ready_data.dart';
import 'package:terralinkapp/features/tasks/vacations/data/repositories/tasks_vacation_repository.dart';
import 'package:terralinkapp/features/tasks/vacations/domain/use_cases/clear_cache_tasks_vacation_use_case.dart';
import 'package:terralinkapp/features/tasks/vacations/domain/use_cases/get_tasks_vacation_use_case.dart';

@injectable
class TasksVacationSummaryCubit extends Cubit<CommonStateLite<TasksSummaryReadyData>> {
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
  ) : super(const CommonStateLite.init()) {
    _easSubscription = _vacationRepository.stream.listen((value) {
      _current = _current.copyWith(
        count: value,
      );

      emit(CommonStateLite.ready(_current));
    });
  }

  TasksSummaryReadyData _current = const TasksSummaryReadyData();

  Future<void> init() async {
    emit(const CommonStateLite.init());

    try {
      final vacations = await _getTasksVacationUseCase();

      _current = _current.copyWith(count: vacations.length);
    } catch (e, stackTrace) {
      await _logService.recordError(e, stackTrace);
    } finally {
      emit(CommonStateLite.ready(_current));
    }
  }

  Future<void> refresh() async {
    _clearCacheTasksUseCase();

    await init();
  }

  @override
  Future<void> close() async {
    _easSubscription.cancel();

    super.close();
  }
}
