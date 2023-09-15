// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_document.freezed.dart';

@freezed
class AppDocument with _$AppDocument {
  const factory AppDocument({
    @Default(0) int id,
    required String name,
    required String path,
    required String directory,
    required DateTime date,
    required int size,
    String? extension,
    String? formattedDate,
    String? formattedSize,
  }) = _AppDocument;
}
