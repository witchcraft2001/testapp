// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_task_sbs_record_dao.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ApiTaskSBSRecordDao _$$_ApiTaskSBSRecordDaoFromJson(
        Map<String, dynamic> json) =>
    _$_ApiTaskSBSRecordDao(
      recordID: json['recordID'] as int,
      details: json['details'] as String,
      reportDate: DateTime.parse(json['reportDate'] as String),
      hours: json['hours'] as String,
    );

Map<String, dynamic> _$$_ApiTaskSBSRecordDaoToJson(
        _$_ApiTaskSBSRecordDao instance) =>
    <String, dynamic>{
      'recordID': instance.recordID,
      'details': instance.details,
      'reportDate': instance.reportDate.toIso8601String(),
      'hours': instance.hours,
    };
