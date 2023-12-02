// Dart imports:
import 'dart:io';

// Package imports:
import 'package:file_picker/file_picker.dart';

// Project imports:
import 'package:terralinkapp/core/common/tl_chars.dart';
import 'package:terralinkapp/generated/l10n.dart';

const _bytes = 1024;

extension FileUtils on File {
  String get name => _getName(path);

  String get extension => _getExtension(path);
}

extension FileSystemEntityUtils on FileSystemEntity {
  String get name => _getName(path);

  String get extension => _getExtension(path);

  int? get date => _getMillisecondsSinceEpoch(path);
}

extension PlatformFileUtils on PlatformFile {
  String get onlyName => name.replaceAll('${TlChars.dot}$extension', '');

  String nameWithDate(DateTime date) {
    final parts = name.split(TlChars.dot);

    parts.insert(parts.length - 1, '${date.millisecondsSinceEpoch}');

    return parts.join(TlChars.dot);
  }
}

String _getName(String path) {
  final fullName = path.split(TlChars.slash).last;
  final parts = fullName.split(TlChars.dot);

  if (parts.length > 2) {
    parts.removeRange(parts.length - 2, parts.length);
  }

  return parts.join(TlChars.dot);
}

String _getExtension(String path) => path.split(TlChars.dot).last.toLowerCase();

int? _getMillisecondsSinceEpoch(String path) {
  final parts = path.split(TlChars.dot);
  final rawDate = parts[parts.length - 1];

  return int.tryParse(rawDate);
}

// Получение значения размера файла с единицами измерения
String getFileSize(int size) {
  double sizeInKB = size / _bytes;

  String value = '${sizeInKB.toStringAsFixed(2)} ${S.current.kilobytes}';

  if (sizeInKB > _bytes) {
    sizeInKB = sizeInKB / _bytes;

    value = '${sizeInKB.toStringAsFixed(2)} ${S.current.megabytes}';
  }

  return value;
}
