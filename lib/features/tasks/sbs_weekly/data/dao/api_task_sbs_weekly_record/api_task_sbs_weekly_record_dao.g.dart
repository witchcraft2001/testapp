// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_task_sbs_weekly_record_dao.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ApiTaskSbsWeeklyRecordDaoImpl _$$ApiTaskSbsWeeklyRecordDaoImplFromJson(
        Map<String, dynamic> json) =>
    _$ApiTaskSbsWeeklyRecordDaoImpl(
      recordId: json['recordID'] as int,
      details: json['details'] as String,
      reportDate: DateTime.parse(json['reportDate'] as String),
      hours: json['hours'] as String,
    );

Map<String, dynamic> _$$ApiTaskSbsWeeklyRecordDaoImplToJson(
        _$ApiTaskSbsWeeklyRecordDaoImpl instance) =>
    <String, dynamic>{
      'recordID': instance.recordId,
      'details': instance.details,
      'reportDate': instance.reportDate.toIso8601String(),
      'hours': instance.hours,
    };
