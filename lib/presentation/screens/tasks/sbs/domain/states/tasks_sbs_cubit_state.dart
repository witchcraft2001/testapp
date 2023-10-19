// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

// Project imports:
import 'package:terralinkapp/domain/models/app_task_sbs/app_task_sbs.dart';
import 'package:terralinkapp/domain/models/app_task_sbs/app_task_sbs_record.dart';

part 'tasks_sbs_cubit_state.freezed.dart';

@freezed
class TasksSBSCubitState with _$TasksSBSCubitState {
  const factory TasksSBSCubitState.loading() = _TasksSBSCubitStateLoading;
  const factory TasksSBSCubitState.ready(TasksSBSState data) = _TasksSBSCubitStateReady;
  const factory TasksSBSCubitState.error(String message) = _TasksSBSCubitStateError;
}

class TasksSBSState {
  final List<AppTaskSBS> tasks;
  final int page;
  final bool isLoading;
  final Map<int, AppTaskSBSRecord> completedRecords;

  const TasksSBSState({
    this.tasks = const [],
    this.page = 1,
    this.isLoading = false,
    this.completedRecords = const {},
  });

  TasksSBSState copyWith({
    List<AppTaskSBS>? tasks,
    int? page,
    bool? isLoading,
    Map<int, AppTaskSBSRecord>? completedRecords,
  }) =>
      TasksSBSState(
        tasks: tasks ?? this.tasks,
        page: page ?? this.page,
        isLoading: isLoading ?? this.isLoading,
        completedRecords: completedRecords ?? this.completedRecords,
      );
}
