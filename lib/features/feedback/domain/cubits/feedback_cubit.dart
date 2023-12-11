// Dart imports:
import 'dart:async';

// Package imports:
import 'package:flutter_bloc/flutter_bloc.dart';

// Project imports:
import 'package:terralinkapp/core/common/enums.dart';
import 'package:terralinkapp/features/feedback/data/use_cases/send_feedback_use_case.dart';
import 'package:terralinkapp/features/feedback/domain/states/feedback_cubit_state.dart';

class FeedbackCubit extends Cubit<FeedbackCubitState> {
  final SendFeedbackUseCase _sendFeedbackUseCase;

  FeedbackCubit(this._sendFeedbackUseCase) : super(FeedbackCubitState.show(FeedbackState()));

  FeedbackState _feedback = FeedbackState();

  Future<EmailSendingResult> send() async {
    return await _sendFeedbackUseCase.run(_feedback.message);
  }

  void change(String message) {
    _feedback = _feedback.copyWith(message: message);

    emit(FeedbackCubitState.show(_feedback));
  }
}
