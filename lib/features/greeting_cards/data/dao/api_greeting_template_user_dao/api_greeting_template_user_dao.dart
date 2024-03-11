// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

part 'api_greeting_template_user_dao.freezed.dart';
part 'api_greeting_template_user_dao.g.dart';

@freezed
class ApiGreetingTemplateUserDao with _$ApiGreetingTemplateUserDao {
  const factory ApiGreetingTemplateUserDao({
    required String login,
  }) = _ApiGreetingTemplateUserDao;

  factory ApiGreetingTemplateUserDao.fromJson(Map<String, dynamic> json) =>
      _$ApiGreetingTemplateUserDaoFromJson(json);
}
