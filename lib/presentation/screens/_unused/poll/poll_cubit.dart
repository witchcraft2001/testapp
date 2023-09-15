// Package imports:
import 'package:flutter_bloc/flutter_bloc.dart';

// Project imports:
import 'package:terralinkapp/data/use_cases/_unused/get_poll_by_id_use_case.dart';
import 'package:terralinkapp/presentation/screens/_unused/poll/poll_state.dart';

class PollCubit extends Cubit<PollState> {
  final GetPollByIdUseCase _getPollByIdUseCase;

  PollCubit(this._getPollByIdUseCase) : super(InitState());

  Future onInit(int id) async {
    emit(LoadingState());
    var result = await _getPollByIdUseCase.run(id);
    emit(ShowState(result, false));
  }
}
