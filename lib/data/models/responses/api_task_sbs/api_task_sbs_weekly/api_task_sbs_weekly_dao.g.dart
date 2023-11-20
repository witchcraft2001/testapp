// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_task_sbs_weekly_dao.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ApiTaskSbsWeeklyDao _$$_ApiTaskSbsWeeklyDaoFromJson(
        Map<String, dynamic> json) =>
    _$_ApiTaskSbsWeeklyDao(
      projectId: json['projectSbsId'] as int,
      projectName: json['projectName'] as String,
      company: json['company'] as String,
      pmName: json['pmName'] as String,
      amName: json['amName'] as String,
      consultants: (json['consultantsWithRecords'] as List<dynamic>)
          .map((e) =>
              ApiTaskSbsWeeklyConsultantDao.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_ApiTaskSbsWeeklyDaoToJson(
        _$_ApiTaskSbsWeeklyDao instance) =>
    <String, dynamic>{
      'projectSbsId': instance.projectId,
      'projectName': instance.projectName,
      'company': instance.company,
      'pmName': instance.pmName,
      'amName': instance.amName,
      'consultantsWithRecords': instance.consultants,
    };
