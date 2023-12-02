// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

part 'api_region_dao.freezed.dart';
part 'api_region_dao.g.dart';

@freezed
class ApiRegionDao with _$ApiRegionDao {
  const factory ApiRegionDao({
    required String id,
    required String name,
  }) = _ApiRegionDao;

  factory ApiRegionDao.fromJson(Map<String, dynamic> json) => _$ApiRegionDaoFromJson(json);
}
