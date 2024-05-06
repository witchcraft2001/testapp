// Flutter imports:
import 'package:flutter/foundation.dart';

// Package imports:
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:terralinkapp/core/exceptions/tl_exception.dart';
import 'package:terralinkapp/core/ui/states/common_state.dart';
import 'package:terralinkapp/core/use_cases/params/search_use_case_params.dart';
import 'package:terralinkapp/core/use_cases/params/string_id_use_case_params.dart';
import 'package:terralinkapp/features/tasks/common/presentation/entities/tasks_state_ready_data.dart';
import 'package:terralinkapp/features/tasks/vacations/domain/entities/api_task_vacation.dart';
import 'package:terralinkapp/features/tasks/vacations/domain/entities/api_task_vacation_action.dart';
import 'package:terralinkapp/features/tasks/vacations/domain/use_cases/clear_cache_tasks_vacation_use_case.dart';
import 'package:terralinkapp/features/tasks/vacations/domain/use_cases/complete_cached_task_vacation_use_case.dart';
import 'package:terralinkapp/features/tasks/vacations/domain/use_cases/complete_task_vacation_use_case.dart';
import 'package:terralinkapp/features/tasks/vacations/domain/use_cases/get_tasks_vacation_use_case.dart';
import 'package:terralinkapp/features/tasks/vacations/domain/use_cases/params/action_task_vacation_use_case_params.dart';
import 'package:terralinkapp/generated/l10n.dart';

@injectable
class TasksVacationCubit extends Cubit<CommonState<TasksStateReadyData<ApiTaskVacation>>> {
  final GetTasksVacationUseCase _getTasksUseCase;
  final CompleteCachedTaskVacationUseCase _completeCachedTaskUseCase;
  final CompleteTaskVacationUseCase _completeTaskUseCase;
  final ClearCacheTasksVacationUseCase _clearCacheTasksUseCase;

  TasksVacationCubit(
    this._getTasksUseCase,
    this._completeCachedTaskUseCase,
    this._completeTaskUseCase,
    this._clearCacheTasksUseCase,
  ) : super(const CommonState.init());

  TasksStateReadyData<ApiTaskVacation> _current = const TasksStateReadyData<ApiTaskVacation>();

  Future<void> init() async {
    emit(const CommonState.init());

    try {
      final tasks = await _getTasksUseCase();

      _current = _current.copyWith(
        tasks: tasks,
        isLoading: false,
      );

      emit(CommonState.ready(_current));
    } catch (e) {
      final type = e is TlException ? e.type : TlExceptionType.other;
      final message = exceptionTranslations[type];

      emit(CommonState.error(message ?? '', type));
    }
  }

  Future<void> refresh() async {
    _clearCacheTasksUseCase();

    await search(_current.search);
  }

  void resetToastMessage() {
    _current = _current.copyWith(toastMessage: '');

    emit(CommonState.ready(_current));
  }

  void changePage(int page) async {
    _current = _current.copyWith(page: page + 1);

    emit(CommonState.ready(_current));
  }

  Future<void> search(String search) async {
    _current = _current.copyWith(
      search: search,
      isLoading: true,
    );

    emit(CommonState.ready(_current));

    try {
      final tasks = await _getTasksUseCase(SearchUseCaseParams(search));

      _current = _current.copyWith(
        tasks: tasks,
        page: search.isNotEmpty ? 1 : null,
        isLoading: false,
      );

      emit(CommonState.ready(_current));
    } catch (e) {
      final type = e is TlException ? e.type : TlExceptionType.other;
      final message = exceptionTranslations[type];

      emit(CommonState.error(message ?? '', type));
    }
  }

  Future<void> completeTask(
    ApiTaskVacation task,
    ApiTaskVacationAction action,
    String? decision,
  ) async {
    _current = _current.copyWith(isLoading: true);

    emit(CommonState.ready(_current));

    try {
      _completeTaskUseCase(ActionTaskVacationUseCaseParams(action, decision)).then(
        (_) => {},
        onError: (error) {
          if (kDebugMode) print(error.toString());

          state.whenOrNull(ready: (_) {
            _current = _current.copyWith(toastMessage: S.current.taskSendingError);

            emit(CommonState.ready(_current));
          });
        },
      );

      await _completeCachedTaskUseCase(StringIdUseCaseParams(task.id));

      await search(_current.search);
    } catch (e) {
      final type = e is TlException ? e.type : TlExceptionType.other;
      final message = exceptionTranslations[type];

      emit(CommonState.error(message ?? '', type));
    }
  }
}
