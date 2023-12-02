// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_task_sbs_weekly_record_dao.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ApiTaskSbsWeeklyRecordDao _$$_ApiTaskSbsWeeklyRecordDaoFromJson(
        Map<String, dynamic> json) =>
    _$_ApiTaskSbsWeeklyRecordDao(
      recordId: json['recordID'] as int,
      details: json['details'] as String,
      reportDate: DateTime.parse(json['reportDate'] as String),
      hours: json['hours'] as String,
    );

Map<String, dynamic> _$$_ApiTaskSbsWeeklyRecordDaoToJson(
        _$_ApiTaskSbsWeeklyRecordDao instance) =>
    <String, dynamic>{
      'recordID': instance.recordId,
      'details': instance.details,
      'reportDate': instance.reportDate.toIso8601String(),
      'hours': instance.hours,
    };
