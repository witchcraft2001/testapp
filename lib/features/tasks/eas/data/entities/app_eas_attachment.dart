class AppEasAttachment {
  final int id;
  final String taskId;
  final String name;
  final String path;

  const AppEasAttachment({
    this.id = 0,
    required this.taskId,
    required this.name,
    required this.path,
  });

  AppEasAttachment copyWith({
    int? id,
    String? taskId,
    String? name,
    String? path,
  }) =>
      AppEasAttachment(
        id: id ?? this.id,
        taskId: taskId ?? this.taskId,
        name: name ?? this.name,
        path: path ?? this.path,
      );
}
