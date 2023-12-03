sealed class AboutCubitState {}

class InitState extends AboutCubitState {}

class ReadyState extends AboutCubitState {
  final String version;

  ReadyState({
    required this.version,
  });

  ReadyState copyWith({
    String? version,
  }) =>
      ReadyState(
        version: version ?? this.version,
      );
}
