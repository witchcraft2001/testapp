// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

// Project imports:
import 'package:terralinkapp/domain/entities/api_task_sbs_weekly/api_task_sbs_weekly.dart';

part 'tasks_sbs_weekly_cubit_state.freezed.dart';

@freezed
class TasksSbsWeeklyCubitState with _$TasksSbsWeeklyCubitState {
  const factory TasksSbsWeeklyCubitState.loading() = _Loading;
  const factory TasksSbsWeeklyCubitState.ready(TasksSbsWeeklyReadyData data) = _Ready;
  const factory TasksSbsWeeklyCubitState.error(String message, [String? description]) = _Error;
}

class TasksSbsWeeklyReadyData {
  final List<ApiTaskSbsWeekly> tasks;
  final int page;
  final bool isLoading;
  final String search;
  final String? toastMessage;

  const TasksSbsWeeklyReadyData({
    this.tasks = const [],
    this.page = 1,
    this.isLoading = false,
    this.search = '',
    this.toastMessage,
  });

  TasksSbsWeeklyReadyData copyWith({
    List<ApiTaskSbsWeekly>? tasks,
    int? page,
    bool? isLoading,
    String? search,
    String? toastMessage,
  }) =>
      TasksSbsWeeklyReadyData(
        tasks: tasks ?? this.tasks,
        page: page ?? this.page,
        isLoading: isLoading ?? this.isLoading,
        search: search ?? this.search,
        toastMessage: toastMessage ?? this.toastMessage,
      );
}
