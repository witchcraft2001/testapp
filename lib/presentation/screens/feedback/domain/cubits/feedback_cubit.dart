// Dart imports:
import 'dart:async';

// Package imports:
import 'package:flutter_bloc/flutter_bloc.dart';

// Project imports:
import 'package:terralinkapp/data/use_cases/feedback/send_feedback_use_case.dart';
import 'package:terralinkapp/presentation/screens/feedback/domain/states/feedback_cubit_state.dart';

enum FeedbackSendingResult { success, error }

class FeedbackCubit extends Cubit<FeedbackCubitState> {
  final SendFeedbackUseCase _sendFeedbackUseCase;

  FeedbackCubit(this._sendFeedbackUseCase) : super(FeedbackCubitState.show(FeedbackState()));

  FeedbackState _feedback = FeedbackState();

  Future<FeedbackSendingResult> send() async {
    return await _sendFeedbackUseCase.run(_feedback.message);
  }

  void change(String message) {
    _feedback = _feedback.copyWith(message: message);

    emit(FeedbackCubitState.show(_feedback));
  }
}
