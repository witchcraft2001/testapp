// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

// Project imports:
import 'package:terralinkapp/data/models/responses/api_region/api_region_dao.dart';
import 'package:terralinkapp/data/models/responses/api_story/api_story_dao.dart';

part 'api_news_dao.freezed.dart';
part 'api_news_dao.g.dart';

@freezed
class ApiNewsDao with _$ApiNewsDao {
  const factory ApiNewsDao({
    required String id,
    required String title,
    required String subtitle,
    required ApiNewsDaoType type,
    required bool published,
    String? icon,
    ApiRegionDao? region,
    @Default('') String link,
    @Default('') String tag,
    @JsonKey(name: 'background_color') required String backgroundColor,
    @JsonKey(name: 'font_color') @Default('') String fontColor,
    @JsonKey(name: 'sort_id') required int sortId,
    @Default(<ApiStoryDao>[]) List<ApiStoryDao> stories,
  }) = _ApiNewsDao;

  factory ApiNewsDao.fromJson(Map<String, dynamic> json) => _$ApiNewsDaoFromJson(json);
}

enum ApiNewsDaoType { link, story }
