// Project imports:
import 'package:terralinkapp/features/users/domain/entities/api_user.dart';

class ApiLike {
  final String id;
  final ApiUser from;
  final String content;

  const ApiLike({
    required this.id,
    required this.from,
    required this.content,
  });
}
