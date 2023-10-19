// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_task_sbs_consultant_dao.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ApiTaskSBSConsultantDao _$$_ApiTaskSBSConsultantDaoFromJson(
        Map<String, dynamic> json) =>
    _$_ApiTaskSBSConsultantDao(
      consultantSbsId: json['consultantSbsId'] as int,
      name: json['name'] as String,
      totalHours: json['totalHours'] as String,
      totalHoursDbl: (json['totalHoursDbl'] as num).toDouble(),
      hoursType: json['hoursType'] as int,
      registerRecords: (json['registerRecords'] as List<dynamic>)
          .map((e) => ApiTaskSBSRecordDao.fromJson(e as Map<String, dynamic>))
          .toList(),
      login: json['login'] as String?,
    );

Map<String, dynamic> _$$_ApiTaskSBSConsultantDaoToJson(
        _$_ApiTaskSBSConsultantDao instance) =>
    <String, dynamic>{
      'consultantSbsId': instance.consultantSbsId,
      'name': instance.name,
      'totalHours': instance.totalHours,
      'totalHoursDbl': instance.totalHoursDbl,
      'hoursType': instance.hoursType,
      'registerRecords': instance.registerRecords,
      'login': instance.login,
    };
