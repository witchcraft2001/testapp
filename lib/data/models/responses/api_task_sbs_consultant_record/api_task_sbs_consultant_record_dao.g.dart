// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_task_sbs_consultant_record_dao.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ApiTaskSBSConsultantRecordDao _$$_ApiTaskSBSConsultantRecordDaoFromJson(
        Map<String, dynamic> json) =>
    _$_ApiTaskSBSConsultantRecordDao(
      consultantSbsId: json['consultantSbsId'] as int,
      login: json['login'] as String,
      name: json['name'] as String,
      totalHours: json['totalHours'] as String,
      totalHoursDbl: json['totalHoursDbl'] as int,
      hoursType: json['hoursType'] as int,
      registerRecords: (json['registerRecords'] as List<dynamic>)
          .map((e) =>
              ApiTaskSBSRegisterRecordDao.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_ApiTaskSBSConsultantRecordDaoToJson(
        _$_ApiTaskSBSConsultantRecordDao instance) =>
    <String, dynamic>{
      'consultantSbsId': instance.consultantSbsId,
      'login': instance.login,
      'name': instance.name,
      'totalHours': instance.totalHours,
      'totalHoursDbl': instance.totalHoursDbl,
      'hoursType': instance.hoursType,
      'registerRecords': instance.registerRecords,
    };
