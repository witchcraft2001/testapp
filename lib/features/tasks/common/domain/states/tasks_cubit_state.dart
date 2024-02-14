// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

// Project imports:
import 'package:terralinkapp/core/exceptions/tl_exception.dart';
import 'package:terralinkapp/features/tasks/common/domain/states/tasks_state_ready_data.dart';

part 'tasks_cubit_state.freezed.dart';

@freezed
class TasksCubitState<T> with _$TasksCubitState<T> {
  const factory TasksCubitState.loading() = _Loading;
  const factory TasksCubitState.ready(TasksStateReadyData<T> data) = _Ready;
  const factory TasksCubitState.error(String message, TlExceptionType type) = _Error;
}
