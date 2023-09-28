// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

// Project imports:
import 'package:terralinkapp/data/models/app/app_tag_content/app_tag_content.dart';
import 'package:terralinkapp/data/services/app_parsing_tags_service.dart';
import 'package:terralinkapp/injection.dart';

part 'api_story_block_dao.freezed.dart';
part 'api_story_block_dao.g.dart';

// ignore: constant_identifier_names
enum ApiStoryBlockDaoType { title, text_field, image, link_button }

@freezed
class ApiStoryBlockDao with _$ApiStoryBlockDao {
  const factory ApiStoryBlockDao({
    required String id,
    required String story, // parent id
    required ApiStoryBlockDaoType type,
    @Default('') String title,
    @Default('') String link,
    @Default('') String content, // support some tags
    String? image,
    @JsonKey(name: 'button_title') @Default('') String buttonTitle,
    @JsonKey(name: 'sort_id') required int sortId,
  }) = _ApiStoryBlockDao;

  factory ApiStoryBlockDao.fromJson(Map<String, dynamic> json) =>
      _$ApiStoryBlockDaoFromJson(json);
}

extension ApiStoryBlockExtensions on ApiStoryBlockDao {
  List<AppTagContent> get parsedContent =>
      getIt<AppParsingTagsService>().parseData(content);
}
