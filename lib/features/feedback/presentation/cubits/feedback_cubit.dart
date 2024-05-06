// Dart imports:
import 'dart:async';

// Package imports:
import 'package:flutter_bloc/flutter_bloc.dart';

// Project imports:
import 'package:terralinkapp/core/common/enums.dart';
import 'package:terralinkapp/features/feedback/domain/use_cases/params/feedback_use_case_params.dart';
import 'package:terralinkapp/features/feedback/domain/use_cases/send_feedback_use_case.dart';

class FeedbackCubit extends Cubit<String> {
  final SendFeedbackUseCase _sendFeedbackUseCase;

  FeedbackCubit(this._sendFeedbackUseCase) : super('');

  Future<NotificationSendingResult> send() async {
    final result = await _sendFeedbackUseCase(FeedbackUseCaseParams(state));

    return result;
  }

  void change(String message) => emit(message);
}
