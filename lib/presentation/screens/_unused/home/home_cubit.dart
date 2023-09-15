// Package imports:
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:terralinkapp/data/use_cases/_unused/get_home_screen_feed_use_case.dart';
import 'package:terralinkapp/presentation/screens/_unused/home/home_state.dart';

@injectable
class HomeCubit extends Cubit<HomeState> {
  final GetHomeScreenFeedUseCase _feedUseCase;

  HomeCubit(this._feedUseCase) : super(InitState());

  Future onInit() async {
    emit(LoadingState());
    var result = await _feedUseCase.run();
    emit(ShowState(result));
  }
}
