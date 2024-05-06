// Package imports:
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:terralinkapp/features/profile/data/data_sources/profile_cached_data_source.dart';
import 'package:terralinkapp/features/profile/data/mappers/api_profile_dao_mapper.dart';
import 'package:terralinkapp/features/profile/domain/entities/api_profile.dart';
import 'package:terralinkapp/features/settings/domain/use_cases/get_admin_panel_api_base_url_use_case.dart';

abstract class ProfileRepository {
  Future<ApiProfile?> get();
  void clearCache();
}

@LazySingleton(
  as: ProfileRepository,
  env: [Environment.dev, Environment.prod],
)
class ProfileRepositoryImpl implements ProfileRepository {
  final ProfileCachedDataSource _dataSource;
  final GetAdminPanelApiBaseUrlUseCase _getApiBaseUrlUseCase;

  ProfileRepositoryImpl(
    this._dataSource,
    this._getApiBaseUrlUseCase,
  );

  @override
  Future<ApiProfile?> get() async {
    final profile = await _dataSource.get();
    final url = _getApiBaseUrlUseCase();

    return profile?.toDomain(url);
  }

  @override
  void clearCache() async {
    _dataSource.clearCache();
  }
}
