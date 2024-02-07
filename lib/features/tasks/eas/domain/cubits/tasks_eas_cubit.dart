// Flutter imports:
import 'package:flutter/foundation.dart';

// Package imports:
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:terralinkapp/core/exceptions/tl_exception.dart';
import 'package:terralinkapp/core/use_cases/params/search_use_case_params.dart';
import 'package:terralinkapp/core/use_cases/params/string_id_use_case_params.dart';
import 'package:terralinkapp/features/tasks/common/domain/states/tasks_cubit_state.dart';
import 'package:terralinkapp/features/tasks/common/domain/states/tasks_state_ready_data.dart';
import 'package:terralinkapp/features/tasks/eas/domain/entities/api_task_eas.dart';
import 'package:terralinkapp/features/tasks/eas/domain/entities/api_task_eas_action.dart';
import 'package:terralinkapp/features/tasks/eas/domain/use_cases/params/action_task_eas_use_case_params.dart';
import 'package:terralinkapp/features/tasks/eas/domain/use_cases/tasks/clear_cache_tasks_eas_use_case.dart';
import 'package:terralinkapp/features/tasks/eas/domain/use_cases/tasks/complete_cached_task_eas_use_case.dart';
import 'package:terralinkapp/features/tasks/eas/domain/use_cases/tasks/complete_task_eas_use_case.dart';
import 'package:terralinkapp/features/tasks/eas/domain/use_cases/tasks/get_tasks_eas_use_case.dart';
import 'package:terralinkapp/generated/l10n.dart';

@injectable
class TasksEasCubit extends Cubit<TasksCubitState<ApiTaskEas>> {
  final GetTasksEasUseCase _getTasksUseCase;
  final CompleteCachedTaskEasUseCase _completeCachedTaskUseCase;
  final CompleteTaskEasUseCase _completeTaskUseCase;
  final ClearCacheTasksEasUseCase _clearCacheTasksUseCase;

  TasksEasCubit(
    this._getTasksUseCase,
    this._completeCachedTaskUseCase,
    this._completeTaskUseCase,
    this._clearCacheTasksUseCase,
  ) : super(const TasksCubitState.loading());

  TasksStateReadyData<ApiTaskEas> _current = const TasksStateReadyData<ApiTaskEas>();

  Future<void> init() async {
    emit(const TasksCubitState.loading());

    try {
      final tasks = await _getTasksUseCase();

      _current = _current.copyWith(
        tasks: tasks,
        isLoading: false,
      );

      emit(TasksCubitState.ready(_current));
    } catch (e) {
      final type = e is TlException ? e.type : TlExceptionType.other;
      final message = exceptionTranslations[type];

      emit(TasksCubitState.error(message ?? '', type));
    }
  }

  Future<void> refresh() async {
    _clearCacheTasksUseCase();

    await search(_current.search);
  }

  void resetToastMessage() {
    _current = _current.copyWith(toastMessage: '');

    emit(TasksCubitState.ready(_current));
  }

  void changePage(int page) async {
    _current = _current.copyWith(page: page + 1);

    emit(TasksCubitState.ready(_current));
  }

  Future<void> search(String search) async {
    _current = _current.copyWith(
      search: search,
      isLoading: true,
    );

    emit(TasksCubitState.ready(_current));

    try {
      final tasks = await _getTasksUseCase(SearchUseCaseParams(search));

      _current = _current.copyWith(
        tasks: tasks,
        page: search.isNotEmpty ? 1 : null,
        isLoading: false,
      );

      emit(TasksCubitState.ready(_current));
    } catch (e) {
      final type = e is TlException ? e.type : TlExceptionType.other;
      final message = exceptionTranslations[type];

      emit(TasksCubitState.error(message ?? '', type));
    }
  }

  Future<void> completeTask(
    ApiTaskEas task,
    ApiTaskEasAction action,
    String? decision,
  ) async {
    _current = _current.copyWith(isLoading: true);

    emit(TasksCubitState.ready(_current));

    try {
      _completeTaskUseCase(ActionTaskEasUseCaseParams(action, decision)).then(
        (_) => {},
        onError: (error) {
          if (kDebugMode) print(error.toString());

          state.whenOrNull(ready: (_) {
            _current = _current.copyWith(toastMessage: S.current.taskSendingError);

            emit(TasksCubitState.ready(_current));
          });
        },
      );

      await _completeCachedTaskUseCase(StringIdUseCaseParams(task.id));

      await search(_current.search);
    } catch (e) {
      final type = e is TlException ? e.type : TlExceptionType.other;
      final message = exceptionTranslations[type];

      emit(TasksCubitState.error(message ?? '', type));
    }
  }
}
