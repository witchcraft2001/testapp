// Project imports:
import 'package:terralinkapp/data/models/responses/api_region/api_region_dao.dart';
import 'package:terralinkapp/domain/entities/api_region.dart';

extension ApiRegionDaoMapper on ApiRegionDao {
  ApiRegion toDomain() => ApiRegion(
        id: id,
        name: name,
      );
}
