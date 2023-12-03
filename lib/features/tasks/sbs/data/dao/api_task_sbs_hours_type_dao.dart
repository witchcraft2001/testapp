// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

enum ApiTaskSbsHoursTypeDao {
  @JsonValue(0)
  unpaid(0),

  @JsonValue(1)
  paid(1),

  @JsonValue(2)
  ovt(2),

  @JsonValue(3)
  ovtAndHalf(3),

  @JsonValue(4)
  type4(4),

  @JsonValue(5)
  type5(5);

  final int value;
  const ApiTaskSbsHoursTypeDao(this.value);

  static ApiTaskSbsHoursTypeDao fromJson(int value) =>
      ApiTaskSbsHoursTypeDao.values.singleWhere((element) => element.value == value);
}
