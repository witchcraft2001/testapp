class AboutReadyData {
  final String version;

  AboutReadyData({
    required this.version,
  });

  AboutReadyData copyWith({
    String? version,
  }) =>
      AboutReadyData(
        version: version ?? this.version,
      );
}
