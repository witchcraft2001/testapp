// Dart imports:
import 'dart:async';

// Package imports:
import 'package:flutter_bloc/flutter_bloc.dart';

// Project imports:
import 'package:terralinkapp/core/common/enums.dart';
import 'package:terralinkapp/features/feedback/domain/states/feedback_cubit_state.dart';
import 'package:terralinkapp/features/feedback/domain/use_cases/params/feedback_use_case_params.dart';
import 'package:terralinkapp/features/feedback/domain/use_cases/send_feedback_use_case.dart';

class FeedbackCubit extends Cubit<FeedbackCubitState> {
  final SendFeedbackUseCase _sendFeedbackUseCase;

  FeedbackCubit(this._sendFeedbackUseCase) : super(FeedbackCubitState.show(FeedbackState()));

  FeedbackState _feedback = FeedbackState();

  Future<NotificationSendingResult> send() async {
    return await _sendFeedbackUseCase(FeedbackUseCaseParams(_feedback.message));
  }

  void change(String message) {
    _feedback = _feedback.copyWith(message: message);

    emit(FeedbackCubitState.show(_feedback));
  }
}
