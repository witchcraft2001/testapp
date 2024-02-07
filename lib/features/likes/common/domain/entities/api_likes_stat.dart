class ApiLikesStat {
  final int receiveLikes;
  final int sendLikes;

  const ApiLikesStat({
    this.receiveLikes = 0,
    this.sendLikes = 0,
  });

  ApiLikesStat copyWith({
    int? receiveLikes,
    int? sendLikes,
  }) =>
      ApiLikesStat(
        receiveLikes: receiveLikes ?? this.receiveLikes,
        sendLikes: sendLikes ?? this.sendLikes,
      );
}
