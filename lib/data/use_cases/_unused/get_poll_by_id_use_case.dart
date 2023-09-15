// Package imports:
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:terralinkapp/domain/poll.dart';

abstract class GetPollByIdUseCase {
  Future<Poll> run(int id);
}

@LazySingleton(as: GetPollByIdUseCase, env: [Environment.dev, Environment.prod])
class GetPollByIdUseCaseImpl extends GetPollByIdUseCase {
  @override
  Future<Poll> run(int id) async {
    await Future.delayed(const Duration(milliseconds: 500));
    var result = switch (id) {
      1 => Poll(
          1,
          "Задайте свой вопрос для встречи TownHall",
          "Приглашаем вас на TL Delivery townhall RU, темы:\n\n1. Итоги 2022 года\n2. Цели 2023 года\n3. Стратегические цели 2025\n4. Программа трансформации\n5. Новые люди. Новые руководители",
        ),
      _ => Poll(
          2,
          "Пойдете ли Вы на летний корпоратив?",
          null,
        ),
    };

    return result;
  }
}
