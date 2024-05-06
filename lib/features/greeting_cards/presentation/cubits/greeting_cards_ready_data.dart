// Package imports:
import 'package:equatable/equatable.dart';

// Project imports:
import 'package:terralinkapp/features/greeting_cards/domain/entities/api_greeting_template.dart';

class GreetingCardsReadyData extends Equatable {
  final List<ApiGreetingTemplate> templates;
  final ApiGreetingTemplate? selected;
  final String subject, appeal, signature, toastMessage;
  final bool isShowActions;

  const GreetingCardsReadyData({
    this.templates = const [],
    this.selected,
    this.subject = '',
    this.appeal = '',
    this.signature = '',
    this.toastMessage = '',
    this.isShowActions = false,
  });

  GreetingCardsReadyData copyWith({
    List<ApiGreetingTemplate>? templates,
    ApiGreetingTemplate? selected,
    String? subject,
    String? appeal,
    String? signature,
    String? toastMessage,
    bool? isShowActions,
  }) =>
      GreetingCardsReadyData(
        templates: templates ?? this.templates,
        selected: selected ?? this.selected,
        subject: subject ?? this.subject,
        appeal: appeal ?? this.appeal,
        signature: signature ?? this.signature,
        toastMessage: toastMessage ?? this.toastMessage,
        isShowActions: isShowActions ?? this.isShowActions,
      );

  @override
  List<Object?> get props => [
        templates,
        selected,
        subject,
        appeal,
        signature,
        toastMessage,
        isShowActions,
      ];
}
