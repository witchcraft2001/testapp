// Project imports:
import 'package:terralinkapp/domain/poll.dart';

sealed class PollState {}

class InitState extends PollState {}

class LoadingState extends PollState {}

class ShowState extends PollState {
  final Poll poll;
  final bool isSendEnabled;

  ShowState(this.poll, this.isSendEnabled);
}

class ErrorState extends PollState {
  final String message;

  ErrorState(this.message);
}
