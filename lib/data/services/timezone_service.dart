// Package imports:
import 'package:flutter_timezone/flutter_timezone.dart';
import 'package:injectable/injectable.dart';
import 'package:timezone/data/latest_all.dart' as tz;
import 'package:timezone/timezone.dart' as tz;

abstract class TimeZoneService {
  Future<void> init();
  tz.TZDateTime getBillingSchedule();
  tz.TZDateTime getCustomDailySchedule();
}

@LazySingleton(as: TimeZoneService, env: [Environment.dev, Environment.prod])
class TimeZoneServiceImpl extends TimeZoneService {
  @override
  Future<void> init() async {
    tz.initializeTimeZones();

    final timeZone = await FlutterTimezone.getLocalTimezone();

    tz.setLocalLocation(tz.getLocation(timeZone));
  }

  @override
  tz.TZDateTime getBillingSchedule() {
    final tz.TZDateTime now = tz.TZDateTime.now(tz.local);

    tz.TZDateTime scheduledDate = tz.TZDateTime(tz.local, now.year, now.month, now.day, 12);

    while (scheduledDate.weekday != DateTime.wednesday) {
      scheduledDate = scheduledDate.add(const Duration(days: 1));
    }

    return scheduledDate;
  }

  @override
  tz.TZDateTime getCustomDailySchedule() {
    final tz.TZDateTime now = tz.TZDateTime.now(tz.local);
    tz.TZDateTime scheduledDate = tz.TZDateTime(tz.local, now.year, now.month, now.day, 13);

    if (scheduledDate.isBefore(now)) {
      scheduledDate = scheduledDate.add(const Duration(minutes: 42));
    }

    return scheduledDate;
  }
}
