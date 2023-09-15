// Project imports:
import 'package:terralinkapp/domain/new_employee.dart';

sealed class NewEmployeesState {}

class InitState extends NewEmployeesState {}

class LoadingState extends NewEmployeesState {}

class ShowState extends NewEmployeesState {
  final List<NewEmployee> employees;
  final int currentScreen;
  final int countDownTimer;
  final String title;
  final String subtitle;

  ShowState(this.employees, this.currentScreen, this.countDownTimer, this.title, this.subtitle);
}
