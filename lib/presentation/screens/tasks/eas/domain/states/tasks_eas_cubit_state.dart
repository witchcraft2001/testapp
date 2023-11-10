// Project imports:
import 'package:terralinkapp/domain/entities/api_task_eas/api_task_eas.dart';

sealed class TasksEasCubitState {}

class InitState extends TasksEasCubitState {}

class LoadingState extends TasksEasCubitState {}

class LoadingErrorState extends TasksEasCubitState {
  final String message;

  LoadingErrorState(this.message);
}

class ShowState extends TasksEasCubitState {
  final List<ApiTaskEas> tasks;
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
    List<ApiTaskEas>? tasks,
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
