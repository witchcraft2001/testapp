class TasksStateReadyData<T> {
  final List<T> tasks;
  final int page;
  final bool isLoading;
  final String search;
  final String? toastMessage;

  const TasksStateReadyData({
    this.tasks = const [],
    this.page = 1,
    this.isLoading = false,
    this.search = '',
    this.toastMessage,
  });

  TasksStateReadyData<T> copyWith({
    List<T>? tasks,
    int? page,
    bool? isLoading,
    String? search,
    String? toastMessage,
  }) =>
      TasksStateReadyData<T>(
        tasks: tasks ?? this.tasks,
        page: page ?? this.page,
        isLoading: isLoading ?? this.isLoading,
        search: search ?? this.search,
        toastMessage: toastMessage ?? this.toastMessage,
      );
}
