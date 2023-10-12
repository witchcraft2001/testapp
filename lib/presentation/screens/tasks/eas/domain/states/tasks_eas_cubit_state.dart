// Project imports:
import 'package:terralinkapp/domain/task.dart';

sealed class TasksState {}

class InitState extends TasksState {}

class LoadingState extends TasksState {}

class LoadingErrorState extends TasksState {
  final String message;

  LoadingErrorState(this.message);
}

class ShowState extends TasksState {
  final List<Task> tasks;
  final int pageNumber;
  final bool isLoading;
  final String search;
  final String? toastMessage;

  ShowState({
    required this.tasks,
    required this.pageNumber,
    required this.search,
    required this.isLoading,
    this.toastMessage,
  });

  ShowState copy({
    List<Task>? tasks,
    int? pageNumber,
    String? search,
    bool? isLoading,
    String? toastMessage,
  }) =>
      ShowState(
        tasks: tasks ?? this.tasks,
        pageNumber: pageNumber ?? this.pageNumber,
        search: search ?? this.search,
        isLoading: isLoading ?? this.isLoading,
        toastMessage: toastMessage ?? this.toastMessage,
      );
}
