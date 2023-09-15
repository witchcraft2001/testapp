// Package imports:
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:terralinkapp/data/use_cases/_unused/get_new_employees_use_case.dart';
import 'package:terralinkapp/presentation/screens/_unused/new_employees/new_employees_state.dart';

@injectable
class NewEmployeesCubit extends Cubit<NewEmployeesState> {
  static const int countdownTimerDefaultValue = 10;
  final GetNewEmployeesUseCase _getNewEmployeesUseCase;

  NewEmployeesCubit(this._getNewEmployeesUseCase) : super(InitState());

  Future onInit() async {
    emit(LoadingState());
    await Future.delayed(const Duration(milliseconds: 100));
    var result = await _getNewEmployeesUseCase.run();
    emit(ShowState(result.employees, 0, countdownTimerDefaultValue, result.title, result.subtitle));
  }

  onNext() {
    if (state is ShowState) {
      var current = state as ShowState;
      var currentScreen = current.currentScreen == current.employees.length ? current.currentScreen : current.currentScreen + 1;
      emit(ShowState(
        current.employees,
        currentScreen,
        countdownTimerDefaultValue,
        current.title,
        current.subtitle,
      ));
    }
  }

  onPrevious() {
    if (state is ShowState) {
      var current = state as ShowState;
      var currentScreen = current.currentScreen == 0 ? 0 : current.currentScreen - 1;
      emit(ShowState(current.employees, currentScreen, countdownTimerDefaultValue, current.title, current.subtitle));
    }
  }
}
