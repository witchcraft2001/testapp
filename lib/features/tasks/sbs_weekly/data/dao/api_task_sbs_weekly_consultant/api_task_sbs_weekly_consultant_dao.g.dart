// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_task_sbs_weekly_consultant_dao.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ApiTaskSbsWeeklyConsultantDao _$$_ApiTaskSbsWeeklyConsultantDaoFromJson(
        Map<String, dynamic> json) =>
    _$_ApiTaskSbsWeeklyConsultantDao(
      consultantId: json['consultantSbsId'] as int,
      name: json['name'] as String,
      totalHours: json['totalHours'] as String,
      totalHoursDbl: (json['totalHoursDbl'] as num).toDouble(),
      hoursType: $enumDecodeNullable(
              _$ApiTaskSbsHoursTypeDaoEnumMap, json['hoursType']) ??
          ApiTaskSbsHoursTypeDao.paid,
      records: (json['registerRecords'] as List<dynamic>)
          .map((e) =>
              ApiTaskSbsWeeklyRecordDao.fromJson(e as Map<String, dynamic>))
          .toList(),
      login: json['login'] as String?,
    );

Map<String, dynamic> _$$_ApiTaskSbsWeeklyConsultantDaoToJson(
        _$_ApiTaskSbsWeeklyConsultantDao instance) =>
    <String, dynamic>{
      'consultantSbsId': instance.consultantId,
      'name': instance.name,
      'totalHours': instance.totalHours,
      'totalHoursDbl': instance.totalHoursDbl,
      'hoursType': _$ApiTaskSbsHoursTypeDaoEnumMap[instance.hoursType]!,
      'registerRecords': instance.records,
      'login': instance.login,
    };

const _$ApiTaskSbsHoursTypeDaoEnumMap = {
  ApiTaskSbsHoursTypeDao.unpaid: 0,
  ApiTaskSbsHoursTypeDao.paid: 1,
  ApiTaskSbsHoursTypeDao.ovt: 2,
  ApiTaskSbsHoursTypeDao.ovtAndHalf: 3,
  ApiTaskSbsHoursTypeDao.type4: 4,
  ApiTaskSbsHoursTypeDao.type5: 5,
};
