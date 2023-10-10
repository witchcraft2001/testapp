// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_task_sbs_dao.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ApiTaskSBSDao _$$_ApiTaskSBSDaoFromJson(Map<String, dynamic> json) =>
    _$_ApiTaskSBSDao(
      projectSbsId: json['projectSbsId'] as int,
      projectName: json['projectName'] as String,
      company: json['company'] as String,
      pmName: json['pmName'] as String,
      amName: json['amName'] as String,
      consultantsWithRecords: (json['consultantsWithRecords'] as List<dynamic>)
          .map((e) =>
              ApiTaskSBSConsultantRecordDao.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_ApiTaskSBSDaoToJson(_$_ApiTaskSBSDao instance) =>
    <String, dynamic>{
      'projectSbsId': instance.projectSbsId,
      'projectName': instance.projectName,
      'company': instance.company,
      'pmName': instance.pmName,
      'amName': instance.amName,
      'consultantsWithRecords': instance.consultantsWithRecords,
    };
