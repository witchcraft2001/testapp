// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

// Project imports:
import 'package:terralinkapp/features/greeting_cards/data/dao/api_greeting_template_group_block/api_greeting_template_group_block.dart';

part 'api_greeting_template_group.freezed.dart';
part 'api_greeting_template_group.g.dart';

@freezed
class ApiGreetingTemplateGroupDao with _$ApiGreetingTemplateGroupDao {
  const factory ApiGreetingTemplateGroupDao({
    required String id,
    @Default(<ApiGreetingTemplateGroupBlockDao>[]) List<ApiGreetingTemplateGroupBlockDao> blocks,
    @JsonKey(name: 'sort_id') required int sortId,
  }) = _ApiGreetingTemplateGroupDao;

  factory ApiGreetingTemplateGroupDao.fromJson(Map<String, dynamic> json) =>
      _$ApiGreetingTemplateGroupDaoFromJson(json);
}
