// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

part 'api_greeting_template_group_block.freezed.dart';
part 'api_greeting_template_group_block.g.dart';

// ignore: constant_identifier_names
enum ApiGreetingTemplateGroupBlockDaoType { signature, text_field, image, appeal }

@freezed
class ApiGreetingTemplateGroupBlockDao with _$ApiGreetingTemplateGroupBlockDao {
  const factory ApiGreetingTemplateGroupBlockDao({
    required String id,
    required String group, // parent id
    required ApiGreetingTemplateGroupBlockDaoType type,
    @Default('') String title,
    @Default('') String link,
    @Default('') String content,
    String? image,
    @JsonKey(name: 'button_title') @Default('') String buttonTitle,
    @JsonKey(name: 'sort_id') required int sortId,
  }) = _ApiGreetingTemplateGroupBlockDao;

  factory ApiGreetingTemplateGroupBlockDao.fromJson(Map<String, dynamic> json) =>
      _$ApiGreetingTemplateGroupBlockDaoFromJson(json);
}
