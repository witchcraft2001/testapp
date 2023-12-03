// Project imports:
import 'package:terralinkapp/features/region/data/dao/api_region_dao.dart';
import 'package:terralinkapp/features/region/domain/entities/api_region.dart';

extension ApiRegionDaoMapper on ApiRegionDao {
  ApiRegion toDomain() => ApiRegion(
        id: id,
        name: name,
      );
}
