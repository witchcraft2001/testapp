// Dart imports:
import 'dart:io';

// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:intl/intl.dart';

// Project imports:
import 'package:terralinkapp/core/extensions/iterable_extensions.dart';
import 'package:terralinkapp/core/navigation/app_navigation_service.dart';
import 'package:terralinkapp/core/navigation/app_routes.dart';
import 'package:terralinkapp/core/utils/links.dart';
import 'package:terralinkapp/features/auth/domain/use_cases/get_background_data_use_case.dart';
import 'package:terralinkapp/features/settings/domain/use_cases/get_region_settings_use_case.dart';
import 'package:terralinkapp/features/system_settings/domain/entities/system_settings.dart';
import 'package:terralinkapp/features/system_settings/domain/use_cases/get_system_settings_use_case.dart';
import 'package:terralinkapp/features/system_settings/presentation/cubits/update_state.dart';
import 'package:terralinkapp/generated/l10n.dart';

@injectable
class UpdateCubit extends Cubit<UpdateState> {
  final GetSystemSettingsUseCase _getSystemSettingsUseCase;
  final GetRegionSettingsUseCase _getRegionSettingsUseCase;
  final GetBackgroundDataUseCase _getBackgroundDataUseCase;

  UpdateCubit(
    this._getSystemSettingsUseCase,
    this._getRegionSettingsUseCase,
    this._getBackgroundDataUseCase,
  ) : super(const UpdateState());

  Future<void> init() async {
    final settings = await _getSystemSettingsUseCase();
    final region = await _getRegionSettingsUseCase();

    emit(UpdateState(
      version: settings.appVersion,
      versionInfo: _getVersionInfo(settings),
      userRegion: region,
    ));
  }

  Future<void> openStore() async {
    if (Platform.isAndroid) {
      await goToUrl('https://apps.rustore.ru/app/com.terralink.app');
    }

    if (Platform.isIOS) {
      await goToUrl('https://apps.apple.com/ru/app/terralink/id6444009593');
    }
  }

  void redirect(BuildContext context) {
    _getBackgroundDataUseCase();

    if (state.userRegion == null) {
      return appNavigationService.goNamed(context, AppRoutes.region.name);
    }

    appNavigationService.goNamed(context, AppRoutes.news.name);
  }

  List<String> _getVersionInfo(SystemSettings settings) {
    final locale = _getLocale();

    if (locale.languageCode == 'ru') return settings.appVersionInfoRu;

    return settings.appVersionInfoEn;
  }

  Locale _getLocale() {
    final current = Locale(Intl.getCurrentLocale());

    return S.delegate.supportedLocales
            .firstWhereOrNull((l) => l.languageCode == current.languageCode) ??
        S.delegate.supportedLocales.first;
  }
}
