// Package imports:
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:terralinkapp/data/services/log_service.dart';
import 'package:terralinkapp/data/use_cases/tasks_sbs/clear_cache_tasks_sbs_use_case.dart';
import 'package:terralinkapp/data/use_cases/tasks_sbs/get_tasks_sbs_use_case.dart';
import 'package:terralinkapp/generated/l10n.dart';
import 'package:terralinkapp/presentation/screens/tasks/sbs/domain/states/tasks_sbs_cubit_state.dart';

@injectable
class TasksSBSCubit extends Cubit<TasksSBSCubitState> {
  final GetTasksSBSUseCase _getTasksSBSUseCase;
  final ClearCacheTasksSBSUseCase _clearCacheTasksUseCase;
  final LogService _logService;

  TasksSBSCubit(
    this._getTasksSBSUseCase,
    this._clearCacheTasksUseCase,
    this._logService,
  ) : super(const TasksSBSCubitState.loading());

  TasksSBSState _current = const TasksSBSState();

  Future<void> init() async {
    const TasksSBSCubitState.loading();

    try {
      final tasks = await _getTasksSBSUseCase.run();
      _current = _current.copyWith(tasks: tasks);

      emit(TasksSBSCubitState.ready(_current));
    } catch (e, stackTrace) {
      await _logService.recordError(e, stackTrace);

      emit(TasksSBSCubitState.error(S.current.loadingError));
    }
  }

  Future<void> refresh() async {
    _clearCacheTasksUseCase.run();
    // ToDO 57 не забыть про поиск
  }

  void changePage(int page) async {
    _current = _current.copyWith(page: page);

    emit(TasksSBSCubitState.ready(_current));
  }
}
