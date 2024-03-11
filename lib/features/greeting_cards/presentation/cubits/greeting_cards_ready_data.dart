// Project imports:
import 'package:terralinkapp/features/greeting_cards/domain/entities/api_greeting_template.dart';

class GreetingCardsReadyData {
  final List<ApiGreetingTemplate> templates;
  final ApiGreetingTemplate? selected;
  final String subject, appeal, signature;

  const GreetingCardsReadyData({
    this.templates = const [],
    this.selected,
    this.subject = '',
    this.appeal = '',
    this.signature = '',
  });

  GreetingCardsReadyData copyWith({
    List<ApiGreetingTemplate>? templates,
    ApiGreetingTemplate? selected,
    String? subject,
    String? appeal,
    String? address,
    String? signature,
  }) =>
      GreetingCardsReadyData(
        templates: templates ?? this.templates,
        selected: selected ?? this.selected,
        subject: subject ?? this.subject,
        appeal: appeal ?? this.appeal,
        signature: signature ?? this.signature,
      );
}
