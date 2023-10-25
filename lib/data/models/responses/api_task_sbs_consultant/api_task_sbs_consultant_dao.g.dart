// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_task_sbs_consultant_dao.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ApiTaskSBSConsultantDao _$$_ApiTaskSBSConsultantDaoFromJson(
        Map<String, dynamic> json) =>
    _$_ApiTaskSBSConsultantDao(
      consultantId: json['consultantSbsId'] as int,
      name: json['name'] as String,
      totalHours: json['totalHours'] as String,
      totalHoursDbl: (json['totalHoursDbl'] as num).toDouble(),
      hoursType: $enumDecodeNullable(
              _$ApiTaskSBSConsultantHoursTypeEnumMap, json['hoursType']) ??
          ApiTaskSBSConsultantHoursType.paid,
      records: (json['registerRecords'] as List<dynamic>)
          .map((e) => ApiTaskSBSRecordDao.fromJson(e as Map<String, dynamic>))
          .toList(),
      login: json['login'] as String?,
    );

Map<String, dynamic> _$$_ApiTaskSBSConsultantDaoToJson(
        _$_ApiTaskSBSConsultantDao instance) =>
    <String, dynamic>{
      'consultantSbsId': instance.consultantId,
      'name': instance.name,
      'totalHours': instance.totalHours,
      'totalHoursDbl': instance.totalHoursDbl,
      'hoursType': _$ApiTaskSBSConsultantHoursTypeEnumMap[instance.hoursType]!,
      'registerRecords': instance.records,
      'login': instance.login,
    };

const _$ApiTaskSBSConsultantHoursTypeEnumMap = {
  ApiTaskSBSConsultantHoursType.unpaid: 0,
  ApiTaskSBSConsultantHoursType.paid: 1,
  ApiTaskSBSConsultantHoursType.ovt: 2,
  ApiTaskSBSConsultantHoursType.ovtAndHalf: 3,
};
