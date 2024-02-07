// Project imports:
import 'package:terralinkapp/core/common/json_keys.dart';
import 'package:terralinkapp/features/users/data/dao/api_user_dao.dart';

class ApiLikeDao {
  static const String columnId = 'id';
  static const String columnLikeId = 'like_id';
  static const String columnDate = 'date';
  static const String columnContent = 'content';
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
  final String likeId, content, date;
  final ApiUserDao from;

  const ApiLikeDao({
    this.id = 0,
    required this.likeId,
    required this.content,
    required this.date,
    required this.from,
  });

  ApiLikeDao.fromJson(Map<String, dynamic> json)
      : id = 0,
        likeId = json['id'],
        date = json['ctime'],
        from = ApiUserDao.fromJson(json[JsonKeys.fromPortalUser]),
        // now don't use in app
        // to = ApiUserDao.fromJson(json[JsonKeys.toPortalUser]),
        content = json['content'];

  ApiLikeDao.fromMap(Map<dynamic, dynamic> map)
      : id = map[columnId],
        likeId = map[columnLikeId],
        date = map[columnDate],
        content = map[columnContent],
        from = ApiUserDao.fromMap(map);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{
      columnLikeId: likeId,
      columnDate: date,
      columnContent: content,
      columnFromId: from.id,
      columnFromTitleRu: from.titleRu,
      columnFromTitleEn: from.titleEn,
      columnFromPositionRu: from.positionRu,
      columnFromPositionEn: from.positionEn,
      columnFromMobile: from.mobile,
      columnFromEmail: from.email,
      columnFromLogin: from.login,
      columnFromPhoto: from.photo,
    };

    if (id > 0) {
      map[columnId] = id;
    }

    return map;
  }
}
