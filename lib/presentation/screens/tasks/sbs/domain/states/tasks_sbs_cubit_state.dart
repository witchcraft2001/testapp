// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

// Project imports:
import 'package:terralinkapp/data/models/responses/api_task_sbs/api_task_sbs_dao.dart';

part 'tasks_sbs_cubit_state.freezed.dart';

@freezed
class TasksSBSCubitState with _$TasksSBSCubitState {
  const factory TasksSBSCubitState.loading() = _TasksSBSCubitStateLoading;
  const factory TasksSBSCubitState.ready(TasksSBSState data) = _TasksSBSCubitStateReady;
  const factory TasksSBSCubitState.error(String message) = _TasksSBSCubitStateError;
}

class TasksSBSState {
  final List<ApiTaskSBSDao> tasks;
  final int page;

  const TasksSBSState({
    this.tasks = const [],
    this.page = 1,
  });

  TasksSBSState copyWith({
    List<ApiTaskSBSDao>? tasks,
    int? page,
  }) =>
      TasksSBSState(
        tasks: tasks ?? this.tasks,
        page: page ?? this.page,
      );
}
