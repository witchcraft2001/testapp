// Project imports:
import 'package:terralinkapp/domain/models/app_task_eas/app_task_eas.dart';

sealed class TasksEASCubitState {}

class InitState extends TasksEASCubitState {}

class LoadingState extends TasksEASCubitState {}

class LoadingErrorState extends TasksEASCubitState {
  final String message;

  LoadingErrorState(this.message);
}

class ShowState extends TasksEASCubitState {
  final List<AppTaskEAS> tasks;
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
    List<AppTaskEAS>? tasks,
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
