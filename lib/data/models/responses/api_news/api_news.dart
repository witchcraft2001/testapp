// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

// Project imports:
import 'package:terralinkapp/data/models/responses/api_story/api_story.dart';

part 'api_news.freezed.dart';
part 'api_news.g.dart';

enum ApiNewsType { link, story }

@freezed
class ApiNews with _$ApiNews {
  const factory ApiNews({
    required String id,
    required String title,
    required String subtitle,
    required ApiNewsType type,
    required bool published,
    String? icon,
    @Default('') String link,
    @Default('') String tag,
    @JsonKey(name: 'background_color') required String backgroundColor,
    @JsonKey(name: 'font_color') @Default('') String fontColor,
    @JsonKey(name: 'sort_id') required int sortId,
    @Default(<ApiStory>[]) List<ApiStory> stories,
  }) = _ApiNews;

  factory ApiNews.fromJson(Map<String, dynamic> json) => _$ApiNewsFromJson(json);
}
