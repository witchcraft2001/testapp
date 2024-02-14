// Project imports:
import 'package:terralinkapp/core/use_cases/params/use_case_params.dart';

class MenuItemUseCaseParams implements UseCaseParams {
  final String chatId;
  final String menuId;
  final String value;

  MenuItemUseCaseParams({
    required this.chatId,
    required this.menuId,
    required this.value,
  });
}
