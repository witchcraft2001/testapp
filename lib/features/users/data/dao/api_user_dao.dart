class ApiUserDao {
  static const String columnFromId = 'from_id';
  static const String columnFromTitleRu = 'from_title_ru';
  static const String columnFromTitleEn = 'from_title_en';
  static const String columnFromPositionRu = 'from_position_ru';
  static const String columnFromPositionEn = 'from_position_en';
  static const String columnFromMobile = 'from_mobilephone';
  static const String columnFromEmail = 'from_email';
  static const String columnFromLogin = 'from_login';
  static const String columnFromPhoto = 'from_photo';

  final int id;
  final String titleRu, titleEn, positionRu, positionEn, mobile, email, login;
  final String? photo;

  const ApiUserDao({
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

  ApiUserDao.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        titleRu = json['title_ru'],
        titleEn = json['title_en'],
        positionRu = json['position_ru'],
        positionEn = json['position_en'],
        mobile = json['mobilephone'],
        email = json['email'],
        login = json['login'],
        photo = json['photo'];

  ApiUserDao.fromMap(Map<dynamic, dynamic> map)
      : id = map[columnFromId],
        titleRu = map[columnFromTitleRu],
        titleEn = map[columnFromTitleEn],
        positionRu = map[columnFromPositionRu],
        positionEn = map[columnFromPositionEn],
        mobile = map[columnFromMobile],
        email = map[columnFromEmail],
        login = map[columnFromLogin],
        photo = map[columnFromPhoto];

  Map<String, dynamic> toMap() => {
        columnFromId: id,
        columnFromTitleRu: titleRu,
        columnFromTitleEn: titleEn,
        columnFromPositionRu: positionRu,
        columnFromPositionEn: positionEn,
        columnFromMobile: mobile,
        columnFromEmail: email,
        columnFromLogin: login,
        columnFromPhoto: photo,
      };
}
