class ApiUser {
  final int id;
  final String titleRu, titleEn, positionRu, positionEn, mobile, email, login;
  final String? photo;

  const ApiUser({
    required this.id,
    required this.titleRu,
    required this.titleEn,
    required this.positionRu,
    required this.positionEn,
    required this.mobile,
    required this.email,
    required this.login,
    this.photo,
  });
}
