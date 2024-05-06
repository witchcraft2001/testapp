// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

part 'common_state_lite.freezed.dart';

@freezed
class CommonStateLite<T> with _$CommonStateLite {
  const factory CommonStateLite.init() = _Init;
  const factory CommonStateLite.ready(T data) = _Ready;
}
