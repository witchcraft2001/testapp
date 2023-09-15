// Package imports:
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:terralinkapp/data/use_cases/_unused/get_unread_chats_use_case.dart';
import 'package:terralinkapp/domain/event_feed_item.dart';
import 'package:terralinkapp/domain/home_screen_feed.dart';
import 'package:terralinkapp/domain/new_employee.dart';
import 'package:terralinkapp/domain/poll_feed_item.dart';
import 'package:terralinkapp/presentation/theme/app_colors.dart';

abstract class GetHomeScreenFeedUseCase {
  Future<HomeScreenFeed> run();
}

@LazySingleton(as: GetHomeScreenFeedUseCase, env: [Environment.dev, Environment.prod])
class GetHomeScreenFeedUseCaseImpl extends GetHomeScreenFeedUseCase {
  final GetUnreadChatsUseCase _unreadChatsUseCase;

  GetHomeScreenFeedUseCaseImpl(this._unreadChatsUseCase);

  @override
  Future<HomeScreenFeed> run() async {
    var newEmployees = List.of([
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
    ]);
    var polls = List.of([
      PollFeedItem(1, "Задайте свой вопрос для встречи TownHall"),
      PollFeedItem(2, "Пойдете ли Вы на летний корпоратив?"),
    ]);
    var events = List.of([
      EventFeedItem("TownHall", "Приглашаем вас на TL Delivery Townhall RU", AppColors.predictors7),
    ]);
    var messages = await _unreadChatsUseCase.run();

    return HomeScreenFeed(newEmployees, polls, events, messages);
  }
}
