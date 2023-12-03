// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

part 'feedback_cubit_state.freezed.dart';

@freezed
class FeedbackCubitState with _$FeedbackCubitState {
  const factory FeedbackCubitState.show(FeedbackState feedback) = _FeedbackCubitStateShow;
}

class FeedbackState {
  final String message;

  FeedbackState({
    this.message = '',
  });

  FeedbackState copyWith({String? message}) => FeedbackState(
        message: message ?? this.message,
      );
}
