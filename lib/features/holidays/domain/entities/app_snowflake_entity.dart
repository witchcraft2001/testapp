// Dart imports:
import 'dart:math';

// Project imports:
import 'package:terralinkapp/core/ui/common/tl_spaces.dart';

const _max = 4;
const _snowflakeStartedSize = 16;
const _snowflakeStartedDuration = 8;

class AppSnowflakeEntity {
  double? size;
  double? top;
  double? left;
  int? duration;

  AppSnowflakeEntity({
    this.size,
    this.top = -TlSpaces.sp24,
    this.left,
    this.duration,
  });

  static AppSnowflakeEntity create(double left) {
    return AppSnowflakeEntity(
      size: (Random().nextInt(_snowflakeStartedSize) + _max).toDouble(),
      left: Random().nextDouble() * left * 0.95,
      duration: Random().nextInt(_snowflakeStartedDuration) + _max,
    );
  }

  static AppSnowflakeEntity createStarted(double left, double top) {
    return AppSnowflakeEntity(
      top: Random().nextDouble() * top * 0.95,
      size: (Random().nextInt(_snowflakeStartedSize) + _max).toDouble(),
      left: Random().nextDouble() * left * 0.95,
      duration: Random().nextInt(_snowflakeStartedDuration) + _max,
    );
  }
}
