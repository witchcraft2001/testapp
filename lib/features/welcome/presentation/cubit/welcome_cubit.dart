// Package imports:
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:terralinkapp/features/welcome/domain/use_cases/set_welcome_as_passed_use_case.dart';
import 'package:terralinkapp/features/welcome/presentation/cubit/welcome_cubit_state.dart';

@injectable
class WelcomeCubit extends Cubit<WelcomeCubitState> {
  WelcomeCubit(
    this._setWelcomeAsPassedUseCase,
  ) : super(const WelcomeCubitState.ready());

  final SetWelcomeAsPassedUseCase _setWelcomeAsPassedUseCase;

  Future<void> setWelcomeStatusAsPassed() async {
    await _setWelcomeAsPassedUseCase();
  }
}
