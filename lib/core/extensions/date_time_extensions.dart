// Package imports:
import 'package:intl/intl.dart';

extension DateTimeNullableExtensions on DateTime? {
  String toTimeString() {
    var format = DateFormat('HH:mm');

    return this != null ? format.format(this!.toLocal()) : '';
  }

  String toDateTimeString() {
    var format = DateFormat('d MMM y, HH:mm'); // .d().add_MMM().add_y().add_Hm();

    return this != null ? format.format(this!.toLocal()) : '';
  }

  String toDateTimeNumbersString() {
    var format = DateFormat('dd.MM.y HH:mm'); // 22.08.2023 09:48;

    return this != null ? format.format(this!) : '';
  }

  String toDateString() {
    var format = DateFormat('d MMM y');

    return this != null ? format.format(this!.toLocal()) : '';
  }

  String toDateNumberString() {
    var format = DateFormat('dd.MM.y');

    return this != null ? format.format(this!.toLocal()) : '';
  }

  String toSmartDateTimeString() {
    if (this == null) return '';

    if (this!.isToday()) {
      return toTimeString();
    }

    if (this!.isThisWeek()) {
      return DateFormat('E').format(this!.toLocal());
    }

    if (this!.isThisYear()) {
      return DateFormat('d MMM').format(this!.toLocal());
    }

    return toDateString();
  }

  String toIso8601WoUsString() {
    if (this == null) {
      return '';
    }
    if (this?.isUtc == true) {
      return '${this!.toIso8601String().substring(0, 19)}Z';
    }

    return '${this!.toIso8601String().substring(0, 19)}${this!.timeZoneOffset.isNegative ? '' : '+'}${(this!.timeZoneOffset.inHours.abs()).toString().padLeft(2, '0')}:${(this!.timeZoneOffset.inMinutes.abs() % 60).toString().padLeft(2, '0')}';
  }
}

extension DateTimeExtensions on DateTime {
  bool isThisYear() {
    return isSameYear(DateTime.now());
  }

  bool isToday() {
    return isSameDay(DateTime.now());
  }

  bool isThisWeek() {
    return isSameWeek(DateTime.now());
  }

  bool isSameDay(DateTime other) {
    return day == other.day && month == other.month && year == other.year;
  }

  bool isSameYear(DateTime other) {
    return year == other.year;
  }

  bool isSameWeek(DateTime other) {
    return difference(other).inDays < 7;
  }

  String toTimeString() {
    var format = DateFormat('HH:mm');

    return format.format(toLocal());
  }

  String toDateTimeString() {
    var format = DateFormat('d MMM y, HH:mm'); // .d().add_MMM().add_y().add_Hm();

    return format.format(toLocal());
  }

  String toDateTimeNumbersString() {
    var format = DateFormat('dd.MM.y HH:mm'); // 22.08.2023 09:48;

    return format.format(toLocal());
  }

  String toDateString() {
    var format = DateFormat('d MMM y');

    return format.format(this);
  }

  String toShortDateString() {
    var format = DateFormat('d MMMM');

    return isSameYear(DateTime.now()) ? format.format(toLocal()) : toDateString();
  }
}
