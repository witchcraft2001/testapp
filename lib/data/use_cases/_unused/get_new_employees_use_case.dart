// Package imports:
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:terralinkapp/domain/new_employee.dart';
import 'package:terralinkapp/domain/new_employees_info.dart';

abstract class GetNewEmployeesUseCase {
  Future<NewEmployeesInfo> run();
}

@LazySingleton(as: GetNewEmployeesUseCase, env: [Environment.dev, Environment.prod])
class GetNewEmployeesUseCaseImpl extends GetNewEmployeesUseCase {
  @override
  Future<NewEmployeesInfo> run() async {
    await Future.delayed(const Duration(milliseconds: 500));

    return NewEmployeesInfo(
      "Представлем новых сотрудников HR отдела, финсового отдела, Дирекции стратегического развития и оперативного планирования, Дирекции аналитических систем",
      "Всем новчикам желаем успехов на рабочем месте!",
      List.of(
        [
          NewEmployee(
            "https://drive.google.com/uc?export=view&id=1DYCu2piHfQ4V3T5WzXNE-358r3d1z10J",
            "Иван Иванов",
            "Рекрутер",
            "Добрый день, коллеги\n\nМеня зовут Иван. Очень рад присоединиться к команде ТерраЛинк.\n\nМне 29 лет, живу и работаю в Нижнем Новгороде.\n\nРекрутинг привлек мое внимание еще во время обучения в университете.",
          ),
          NewEmployee(
            "https://drive.google.com/uc?export=view&id=1rQJvhxoYHUqVi80bJP0B_3BGsMPswesZ",
            "Петр Петров",
            "Программист",
            "Добрый день, коллеги\n\nМеня зовут Иван. Очень рад присоединиться к команде ТерраЛинк.\n\nМне 29 лет, живу и работаю в Нижнем Новгороде.",
          ),
          NewEmployee(
            "https://drive.google.com/uc?export=view&id=11jHSe73pdJJv2CTjmLFwX4k-gCeiYQXt",
            "Сидор Сидоров",
            "Дизайнер",
            "Добрый день, коллеги\n\nМеня зовут Иван. Очень рад присоединиться к команде ТерраЛинк.\n\nМне 29 лет, живу и работаю в Нижнем Новгороде.\n\nРекрутинг привлек мое внимание еще во время обучения в университете.\n\nLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
          ),
          NewEmployee(
            "https://drive.google.com/uc?export=view&id=1rQJvhxoYHUqVi80bJP0B_3BGsMPswesZ",
            "Виктор Викторов",
            "Архитектор",
            "Добрый день, коллеги\n\nМеня зовут Иван. Очень рад присоединиться к команде ТерраЛинк.\n\nМне 29 лет, живу и работаю в Нижнем Новгороде.\n\nРекрутинг привлек мое внимание еще во время обучения в университете.",
          ),
        ],
      ),
    );
  }
}
