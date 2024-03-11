// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

// Project imports:
import 'package:terralinkapp/features/greeting_cards/data/dao/api_greeting_template_user_dao/api_greeting_template_user_dao.dart';
import 'package:terralinkapp/features/media_content/data/dao/media_content/media_content_dao.dart';
import 'package:terralinkapp/features/region/data/dao/api_region_dao.dart';

part 'api_greeting_template_dao.freezed.dart';
part 'api_greeting_template_dao.g.dart';

@freezed
class ApiGreetingTemplateDao with _$ApiGreetingTemplateDao {
  const factory ApiGreetingTemplateDao({
    required String id,
    required String title,
    required bool published,
    required ApiGreetingTemplateDaoAccess access,
    @JsonKey(name: 'access_users')
    @Default(<ApiGreetingTemplateUserDao>[])
    List<ApiGreetingTemplateUserDao> accessUsers,
    ApiRegionDao? region,
    @JsonKey(name: 'background_color') required String backgroundColor,
    @JsonKey(name: 'font_color') @Default('') String fontColor,
    @JsonKey(name: 'sort_id') required int sortId,
    @Default(<MediaContentDao>[]) List<MediaContentDao> groups,
  }) = _ApiGreetingTemplateDao;

  factory ApiGreetingTemplateDao.fromJson(Map<String, dynamic> json) =>
      _$ApiGreetingTemplateDaoFromJson(json);
}

enum ApiGreetingTemplateDaoAccess { open, limited }
