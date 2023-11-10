// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

// Project imports:
import 'package:terralinkapp/domain/entities/api_task_sbs_late/api_task_sbs_late.dart';

part 'tasks_sbs_late_cubit_state.freezed.dart';

@freezed
class TasksSbsLateCubitState with _$TasksSbsLateCubitState {
  const factory TasksSbsLateCubitState.loading() = _Loading;
  const factory TasksSbsLateCubitState.ready(TasksSbsLateReadyState data) = _Ready;
  const factory TasksSbsLateCubitState.error(String message, [String? description]) = _Error;
}

class TasksSbsLateReadyState {
  final Map<int, List<ApiTaskSbsLate>> tasks;
  final int page;
  final bool isLoading;
  final String search;
  final String? toastMessage;

  const TasksSbsLateReadyState({
    this.tasks = const {},
    this.page = 1,
    this.isLoading = false,
    this.search = '',
    this.toastMessage,
  });

  TasksSbsLateReadyState copyWith({
    Map<int, List<ApiTaskSbsLate>>? tasks,
    int? page,
    bool? isLoading,
    String? search,
    String? toastMessage,
  }) =>
      TasksSbsLateReadyState(
        tasks: tasks ?? this.tasks,
        page: page ?? this.page,
        isLoading: isLoading ?? this.isLoading,
        search: search ?? this.search,
        toastMessage: toastMessage ?? this.toastMessage,
      );
}
