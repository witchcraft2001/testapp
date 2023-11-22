// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:shared_preferences/shared_preferences.dart' as _i27;
import 'package:sqflite/sqflite.dart' as _i10;
import 'package:terralinkapp/common/constants.dart' as _i9;
import 'package:terralinkapp/data/data_sources/cache/news_cached_data_source.dart'
    as _i89;
import 'package:terralinkapp/data/data_sources/cache/tasks_eas_cached_data_source.dart'
    as _i131;
import 'package:terralinkapp/data/data_sources/cache/tasks_sbs_cached_data_source.dart'
    as _i113;
import 'package:terralinkapp/data/data_sources/cache/tasks_summary_cached_data_source.dart'
    as _i116;
import 'package:terralinkapp/data/data_sources/cache/tasks_vacation_cached_data_source.dart'
    as _i117;
import 'package:terralinkapp/data/data_sources/local/api_settings_presets/api_settings_presets_data_source.dart'
    as _i3;
import 'package:terralinkapp/data/data_sources/local/database/app_documents_db_data_source.dart'
    as _i33;
import 'package:terralinkapp/data/data_sources/local/database/business_card_db_data_source.dart'
    as _i38;
import 'package:terralinkapp/data/data_sources/local/database/chats_db_data_source.dart'
    as _i42;
import 'package:terralinkapp/data/data_sources/local/database/messages_db_data_source.dart'
    as _i16;
import 'package:terralinkapp/data/data_sources/local/file/file_storage_data_source.dart'
    as _i44;
import 'package:terralinkapp/data/data_sources/local/shared_preferences/settings_data_source.dart'
    as _i23;
import 'package:terralinkapp/data/data_sources/remote/news_remote_data_source.dart'
    as _i60;
import 'package:terralinkapp/data/data_sources/remote/tasks_eas_remote_data_source.dart'
    as _i112;
import 'package:terralinkapp/data/data_sources/remote/tasks_sbs_remote_data_source.dart'
    as _i105;
import 'package:terralinkapp/data/data_sources/remote/tasks_summary_remote_data_source.dart'
    as _i107;
import 'package:terralinkapp/data/data_sources/remote/tasks_vacation_remote_data_source.dart'
    as _i108;
import 'package:terralinkapp/data/providers/api_settings_provider.dart' as _i32;
import 'package:terralinkapp/data/providers/auth_provider.dart' as _i74;
import 'package:terralinkapp/data/providers/dio_provider.dart' as _i11;
import 'package:terralinkapp/data/providers/navigator_key_provider.dart'
    as _i17;
import 'package:terralinkapp/data/providers/push_notifications_provider.dart'
    as _i19;
import 'package:terralinkapp/data/providers/uuid_generator.dart' as _i30;
import 'package:terralinkapp/data/repositories/cache/news_cached_repository.dart'
    as _i151;
import 'package:terralinkapp/data/repositories/cache/tasks_eas_cached_repository.dart'
    as _i133;
import 'package:terralinkapp/data/repositories/cache/tasks_sbs_cached_repository.dart'
    as _i115;
import 'package:terralinkapp/data/repositories/cache/tasks_vacation_cached_repository.dart'
    as _i119;
import 'package:terralinkapp/data/repositories/di_scope_repository.dart'
    as _i21;
import 'package:terralinkapp/data/repositories/local/api_settings_presets/api_settings_presets_repository.dart'
    as _i4;
import 'package:terralinkapp/data/repositories/local/database/app_documents_db_repository.dart'
    as _i35;
import 'package:terralinkapp/data/repositories/local/database/business_card_db_repository.dart'
    as _i40;
import 'package:terralinkapp/data/repositories/local/file/avatar_storage_repository_impl.dart'
    as _i76;
import 'package:terralinkapp/data/repositories/local/notifications/app_remote_messages_repository.dart'
    as _i6;
import 'package:terralinkapp/data/repositories/local/shared_preferences/settings_shared_preferences_repository.dart'
    as _i25;
import 'package:terralinkapp/data/repositories/mock/chat_mock_repository.dart'
    as _i149;
import 'package:terralinkapp/data/repositories/mock/news_mock_repository.dart'
    as _i150;
import 'package:terralinkapp/data/repositories/remote/chats_remote_repository.dart'
    as _i80;
import 'package:terralinkapp/data/services/app_parsing_tags_service.dart'
    as _i5;
import 'package:terralinkapp/data/services/converters/businesscard_to_vcard_converter.dart'
    as _i41;
import 'package:terralinkapp/data/services/http/interceptors/auth_interceptor.dart'
    as _i37;
import 'package:terralinkapp/data/services/http/interceptors/locale_interceptor.dart'
    as _i14;
import 'package:terralinkapp/data/services/http/news_api_service.dart' as _i59;
import 'package:terralinkapp/data/services/http/overrides/api_http_overrides.dart'
    as _i31;
import 'package:terralinkapp/data/services/http/tasks_sbs_api_service.dart'
    as _i104;
import 'package:terralinkapp/data/services/http/tasks_summary_api_service.dart'
    as _i106;
import 'package:terralinkapp/data/services/local_notifications_service.dart'
    as _i58;
import 'package:terralinkapp/data/services/log_service.dart' as _i15;
import 'package:terralinkapp/data/services/timezone_service.dart' as _i28;
import 'package:terralinkapp/data/services/user_service.dart' as _i29;
import 'package:terralinkapp/data/services/websocket_service.dart' as _i72;
import 'package:terralinkapp/data/use_cases/auth/get_background_data_use_case.dart'
    as _i147;
import 'package:terralinkapp/data/use_cases/auth/has_cached_account_use_case.dart'
    as _i88;
import 'package:terralinkapp/data/use_cases/auth/oauth_try_login_use_case.dart'
    as _i103;
import 'package:terralinkapp/data/use_cases/auth/refresh_auth_settings_use_case.dart'
    as _i92;
import 'package:terralinkapp/data/use_cases/auth/user_log_in_use_case.dart'
    as _i100;
import 'package:terralinkapp/data/use_cases/auth/user_log_out_use_case.dart'
    as _i140;
import 'package:terralinkapp/data/use_cases/business_cards/get_all_business_cards_use_case.dart'
    as _i46;
import 'package:terralinkapp/data/use_cases/business_cards/get_business_card_by_id_use_case.dart'
    as _i49;
import 'package:terralinkapp/data/use_cases/business_cards/get_vcard_from_business_card_use_case.dart'
    as _i56;
import 'package:terralinkapp/data/use_cases/business_cards/remove_business_card_by_id_use_case.dart'
    as _i62;
import 'package:terralinkapp/data/use_cases/business_cards/save_business_card_use_case.dart'
    as _i63;
import 'package:terralinkapp/data/use_cases/business_cards/save_vcard_file_from_business_card_use_case.dart'
    as _i64;
import 'package:terralinkapp/data/use_cases/business_cards/share_vcard_from_bussiness_card_use_case.dart'
    as _i70;
import 'package:terralinkapp/data/use_cases/chat/clear_chat_history_use_case.dart'
    as _i81;
import 'package:terralinkapp/data/use_cases/chat/get_all_messages_by_chat_id_use_case.dart'
    as _i82;
import 'package:terralinkapp/data/use_cases/chat/get_chat_info_by_id_use_case.dart'
    as _i85;
import 'package:terralinkapp/data/use_cases/chat/remove_message_by_id_use_case.dart'
    as _i94;
import 'package:terralinkapp/data/use_cases/chat/reset_new_messages_use_case.dart'
    as _i95;
import 'package:terralinkapp/data/use_cases/chat/send_chat_message_use_case.dart'
    as _i96;
import 'package:terralinkapp/data/use_cases/chat/send_form_chat_message_use_case.dart'
    as _i97;
import 'package:terralinkapp/data/use_cases/chat/send_menu_item_chat_message_use_case.dart'
    as _i98;
import 'package:terralinkapp/data/use_cases/chats/get_chat_feed_observable_use_case.dart'
    as _i83;
import 'package:terralinkapp/data/use_cases/chats/get_chat_feed_use_case.dart'
    as _i84;
import 'package:terralinkapp/data/use_cases/documents/add_app_documents_use_case.dart'
    as _i73;
import 'package:terralinkapp/data/use_cases/documents/edit_app_documents_use_case.dart'
    as _i43;
import 'package:terralinkapp/data/use_cases/documents/get_app_documents_use_case.dart'
    as _i47;
import 'package:terralinkapp/data/use_cases/documents/init_case_app_documents_use_case.dart'
    as _i13;
import 'package:terralinkapp/data/use_cases/documents/open_app_document_use_case.dart'
    as _i18;
import 'package:terralinkapp/data/use_cases/documents/remove_case_app_documents_use_case.dart'
    as _i61;
import 'package:terralinkapp/data/use_cases/documents/share_app_documents_use_case.dart'
    as _i26;
import 'package:terralinkapp/data/use_cases/feedback/send_feedback_use_case.dart'
    as _i22;
import 'package:terralinkapp/data/use_cases/news/clear_cache_news_use_case.dart'
    as _i7;
import 'package:terralinkapp/data/use_cases/news/get_all_news_use_case.dart'
    as _i86;
import 'package:terralinkapp/data/use_cases/profile/get_profile_avatar_use_case.dart'
    as _i87;
import 'package:terralinkapp/data/use_cases/profile/set_profile_avatar_use_case.dart'
    as _i99;
import 'package:terralinkapp/data/use_cases/settings/get_all_api_settings_use_case.dart'
    as _i45;
import 'package:terralinkapp/data/use_cases/settings/get_api_settings_presets_use_case.dart'
    as _i12;
import 'package:terralinkapp/data/use_cases/settings/get_billing_notification_settings_use_case.dart'
    as _i48;
import 'package:terralinkapp/data/use_cases/settings/get_dark_mode_settings_use_case.dart'
    as _i50;
import 'package:terralinkapp/data/use_cases/settings/get_news_api_base_url_use_case.dart'
    as _i51;
import 'package:terralinkapp/data/use_cases/settings/get_region_settings_use_case.dart'
    as _i52;
import 'package:terralinkapp/data/use_cases/settings/get_system_mode_settings_use_case.dart'
    as _i53;
import 'package:terralinkapp/data/use_cases/settings/get_tasks_sbs_api_base_url_use_case.dart'
    as _i54;
import 'package:terralinkapp/data/use_cases/settings/get_tasks_summary_api_base_url_use_case.dart'
    as _i55;
import 'package:terralinkapp/data/use_cases/settings/get_ws_url_use_case.dart'
    as _i57;
import 'package:terralinkapp/data/use_cases/settings/set_all_api_settings_use_case.dart'
    as _i65;
import 'package:terralinkapp/data/use_cases/settings/set_billing_notification_settings_use_case.dart'
    as _i66;
import 'package:terralinkapp/data/use_cases/settings/set_dark_mode_settings_use_case.dart'
    as _i67;
import 'package:terralinkapp/data/use_cases/settings/set_region_settings_use_case.dart'
    as _i68;
import 'package:terralinkapp/data/use_cases/settings/set_system_mode_settings_use_case.dart'
    as _i69;
import 'package:terralinkapp/data/use_cases/tasks_eas/clear_cache_tasks_eas_use_case.dart'
    as _i141;
import 'package:terralinkapp/data/use_cases/tasks_eas/complete_cached_task_eas_use_case.dart'
    as _i142;
import 'package:terralinkapp/data/use_cases/tasks_eas/complete_task_eas_use_case.dart'
    as _i126;
import 'package:terralinkapp/data/use_cases/tasks_eas/get_tasks_eas_use_case.dart'
    as _i143;
import 'package:terralinkapp/data/use_cases/tasks_sbs_late/clear_cache_tasks_sbs_late_use_case.dart'
    as _i120;
import 'package:terralinkapp/data/use_cases/tasks_sbs_late/complete_cached_tasks_late_sbs_use_case.dart'
    as _i125;
import 'package:terralinkapp/data/use_cases/tasks_sbs_late/complete_tasks_sbs_late_use_case.dart'
    as _i111;
import 'package:terralinkapp/data/use_cases/tasks_sbs_late/get_tasks_sbs_late_use_case.dart'
    as _i127;
import 'package:terralinkapp/data/use_cases/tasks_sbs_weekly/clear_cache_tasks_sbs_weekly_use_case.dart'
    as _i121;
import 'package:terralinkapp/data/use_cases/tasks_sbs_weekly/complete_cached_task_sbs_weekly_use_case.dart'
    as _i123;
import 'package:terralinkapp/data/use_cases/tasks_sbs_weekly/complete_task_sbs_weekly_use_case.dart'
    as _i109;
import 'package:terralinkapp/data/use_cases/tasks_sbs_weekly/get_tasks_sbs_weekly_use_case.dart'
    as _i128;
import 'package:terralinkapp/data/use_cases/tasks_summary/get_tasks_summary_use_case.dart'
    as _i129;
import 'package:terralinkapp/data/use_cases/tasks_vacation/clear_cache_tasks_vacation_use_case.dart'
    as _i122;
import 'package:terralinkapp/data/use_cases/tasks_vacation/complete_cached_task_vacation_use_case.dart'
    as _i124;
import 'package:terralinkapp/data/use_cases/tasks_vacation/complete_task_vacation_use_case.dart'
    as _i110;
import 'package:terralinkapp/data/use_cases/tasks_vacation/get_tasks_vacation_use_case.dart'
    as _i130;
import 'package:terralinkapp/di/modules/app_module.dart' as _i152;
import 'package:terralinkapp/domain/repositories/app_documents_repository.dart'
    as _i34;
import 'package:terralinkapp/domain/repositories/avatar_storage_repository.dart'
    as _i75;
import 'package:terralinkapp/domain/repositories/business_card_repository.dart'
    as _i39;
import 'package:terralinkapp/domain/repositories/chats_repository.dart' as _i79;
import 'package:terralinkapp/domain/repositories/news_repository.dart' as _i8;
import 'package:terralinkapp/domain/repositories/scope_repository.dart' as _i20;
import 'package:terralinkapp/domain/repositories/settings_repository.dart'
    as _i24;
import 'package:terralinkapp/domain/repositories/tasks_eas_repository.dart'
    as _i132;
import 'package:terralinkapp/domain/repositories/tasks_sbs_repository.dart'
    as _i114;
import 'package:terralinkapp/domain/repositories/tasks_vacation_repository.dart'
    as _i118;
import 'package:terralinkapp/presentation/navigation/app_navigation_service.dart'
    as _i36;
import 'package:terralinkapp/presentation/screens/api_settings/domain/cubits/api_settings_cubit.dart'
    as _i101;
import 'package:terralinkapp/presentation/screens/auth/auth_cubit.dart'
    as _i148;
import 'package:terralinkapp/presentation/screens/business_cards/list/business_cards_list_cubit.dart'
    as _i78;
import 'package:terralinkapp/presentation/screens/business_cards/show/business_card_show_cubit.dart'
    as _i77;
import 'package:terralinkapp/presentation/screens/chat/domain/cubits/chat_cubit.dart'
    as _i102;
import 'package:terralinkapp/presentation/screens/news/domain/cubits/news_cubit.dart'
    as _i90;
import 'package:terralinkapp/presentation/screens/profile_documents/domain/cubits/profile_documents_cubit.dart'
    as _i91;
import 'package:terralinkapp/presentation/screens/region/domain/cubits/region_cubit.dart'
    as _i93;
import 'package:terralinkapp/presentation/screens/settings/domain/cubits/settings_cubit.dart'
    as _i144;
import 'package:terralinkapp/presentation/screens/tasks/eas/domain/cubits/tasks_eas_cubit.dart'
    as _i145;
import 'package:terralinkapp/presentation/screens/tasks/sbs_late/domain/cubits/tasks_sbs_late_cubit.dart'
    as _i134;
import 'package:terralinkapp/presentation/screens/tasks/sbs_weekly/domain/cubits/tasks_sbs_weekly_cubit.dart'
    as _i136;
import 'package:terralinkapp/presentation/screens/tasks/summary/domain/cubits/tasks_eas_summary_cubit.dart'
    as _i146;
import 'package:terralinkapp/presentation/screens/tasks/summary/domain/cubits/tasks_sbs_late_summary_cubit.dart'
    as _i135;
import 'package:terralinkapp/presentation/screens/tasks/summary/domain/cubits/tasks_sbs_weekly_summary_cubit.dart'
    as _i137;
import 'package:terralinkapp/presentation/screens/tasks/summary/domain/cubits/tasks_vacation_summary_cubit.dart'
    as _i139;
import 'package:terralinkapp/presentation/screens/tasks/vacations/domain/cubits/tasks_vacation_cubit.dart'
    as _i138;
import 'package:terralinkapp/presentation/theme/domain/cubits/theme_cubit.dart'
    as _i71;

const String _dev = 'dev';
const String _prod = 'prod';

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  Future<_i1.GetIt> init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final appModule = _$AppModule();
    gh.factory<_i3.ApiSettingsPresetsDataSource>(
        () => _i3.ApiSettingsPresetsDataSource());
    gh.factory<_i4.ApiSettingsPresetsRepository>(() =>
        _i4.ApiSettingsPresetsRepository(
            gh<_i3.ApiSettingsPresetsDataSource>()));
    gh.lazySingleton<_i5.AppParsingTagsService>(
      () => _i5.AppParsingTagsService(),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i6.AppRemoteMessagesRepository>(
      () => _i6.PushNotificationsRepositoryImpl(),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.factory<_i7.ClearCacheNewsUseCase>(
      () => _i7.ClearCacheNewsUseCaseImpl(gh<_i8.NewsRepository>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i9.Constants>(
      () => _i9.ProdConstantsImpl(),
      registerFor: {_prod},
    );
    gh.lazySingleton<_i9.Constants>(
      () => _i9.DevConstantsImpl(),
      registerFor: {_dev},
    );
    await gh.factoryAsync<_i10.Database>(
      () => appModule.provideDb,
      preResolve: true,
    );
    gh.factory<_i11.DioProvider>(() => _i11.DioProvider());
    gh.factory<_i12.GetApiSettingsPresetsUseCase>(() =>
        _i12.GetApiSettingsPresetsUseCase(
            gh<_i4.ApiSettingsPresetsRepository>()));
    gh.lazySingleton<_i13.InitAppDocumentsUseCase>(
      () => _i13.InitAppDocumentsInitUseCaseImpl(),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i14.LocaleInterceptor>(() => _i14.LocaleInterceptor());
    gh.lazySingleton<_i15.LogService>(
      () => _i15.LogService(),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i16.MessagesDbDataSource>(
      () => _i16.MessagesDbDataSourceImpl(gh<_i10.Database>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i17.NavigatorKeyProvider>(
      () => _i17.NavigatorKeyProvider(),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i18.OpenAppDocumentUseCase>(
      () => _i18.OpenAppDocumentUseCaseImpl(),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i19.PushNotificationsProvider>(
      () => _i19.PushNotificationsProviderImpl(),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i20.ScopeRepository>(
      () => _i21.DiScopeRepository(),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i22.SendFeedbackUseCase>(
      () => _i22.SendFeedbackUseCaseImpl(),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i23.SettingsDataSource>(
      () => _i23.SettingsDataSourceImpl(),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i24.SettingsRepository>(
      () => _i25.SettingsSharedPreferencesRepository(
          dataSource: gh<_i23.SettingsDataSource>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i26.ShareAppDocumentsUseCase>(
      () => _i26.ShareAppDocumentsUseCaseImpl(),
      registerFor: {
        _dev,
        _prod,
      },
    );
    await gh.factoryAsync<_i27.SharedPreferences>(
      () => appModule.providePrefs,
      preResolve: true,
    );
    gh.lazySingleton<_i28.TimeZoneService>(
      () => _i28.TimeZoneServiceImpl(),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i29.UserService>(
      () => _i29.UserServiceImpl(),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i30.UuidGenerator>(
      () => _i30.UuidGeneratorImpl(),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i31.ApiHttpOverrides>(
      () => _i31.ApiHttpOverrides(gh<_i9.Constants>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i32.ApiSettingsProvider>(() => _i32.ApiSettingsProvider(
          gh<_i23.SettingsDataSource>(),
          gh<_i9.Constants>(),
        ));
    gh.lazySingleton<_i33.AppDocumentsDbDataSource>(
      () => _i33.AppDocumentsDbDataSourceImpl(gh<_i10.Database>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i34.AppDocumentsRepository>(
      () => _i35.AppDocumentsDbRepository(
          dataSource: gh<_i33.AppDocumentsDbDataSource>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i36.AppNavigationService>(
      () => _i36.AppNavigationService(gh<_i17.NavigatorKeyProvider>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i37.AuthInterceptor>(
        () => _i37.AuthInterceptor(gh<_i29.UserService>()));
    gh.lazySingleton<_i38.BusinessCardDbDataSource>(
      () => _i38.BusinessCardDbDataSourceImpl(gh<_i10.Database>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i39.BusinessCardRepository>(
      () => _i40.BusinessCardDbRepository(
          dataSource: gh<_i38.BusinessCardDbDataSource>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.factory<_i41.BusinessCardToVCardConverter>(
        () => _i41.BusinessCardToVCardConverter(gh<_i9.Constants>()));
    gh.lazySingleton<_i42.ChatsDbDataSource>(
      () => _i42.ChatsDbDataSourceImpl(gh<_i10.Database>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i43.EditAppDocumentUseCase>(
      () => _i43.EditAppDocumentUseCaseImpl(gh<_i34.AppDocumentsRepository>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i44.FileStorageDataSource>(
      () => _i44.ImageStorageDataSourceImpl(logService: gh<_i15.LogService>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.factory<_i45.GetAllApiSettingsUseCase>(
        () => _i45.GetAllApiSettingsUseCase(gh<_i32.ApiSettingsProvider>()));
    gh.lazySingleton<_i46.GetAllBusinessCardsUseCase>(
      () => _i46.GetAllBusinessCardsUseCaseImpl(
          gh<_i39.BusinessCardRepository>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i47.GetAppDocumentsUseCase>(
      () => _i47.GetAppDocumentsUseCaseImpl(gh<_i34.AppDocumentsRepository>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i48.GetBillingNotificationSettingsUseCase>(
      () => _i48.GetBillingNotificationSettingsUseCaseImpl(
          gh<_i23.SettingsDataSource>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i49.GetBusinessCardByIdUseCase>(
      () => _i49.GetBusinessCardByIdUseCaseImpl(
          gh<_i39.BusinessCardRepository>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i50.GetDarkModeSettingsUseCase>(
      () => _i50.GetDarkModeSettingsUseCaseImpl(gh<_i23.SettingsDataSource>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.factory<_i51.GetNewsApiBaseUrlUseCase>(
        () => _i51.GetNewsApiBaseUrlUseCase(gh<_i32.ApiSettingsProvider>()));
    gh.lazySingleton<_i52.GetRegionSettingsUseCase>(
      () => _i52.GetRegionSettingsUseCaseImpl(gh<_i23.SettingsDataSource>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i53.GetSystemModeSettingsUseCase>(
      () =>
          _i53.GetSystemModeSettingsUseCaseImpl(gh<_i23.SettingsDataSource>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.factory<_i54.GetTasksSbsApiBaseUrlUseCase>(() =>
        _i54.GetTasksSbsApiBaseUrlUseCase(gh<_i32.ApiSettingsProvider>()));
    gh.factory<_i55.GetTasksSummaryApiBaseUrlUseCase>(() =>
        _i55.GetTasksSummaryApiBaseUrlUseCase(gh<_i32.ApiSettingsProvider>()));
    gh.factory<_i56.GetVCardFromBusinessCardUseCase>(() =>
        _i56.GetVCardFromBusinessCardUseCase(
            gh<_i41.BusinessCardToVCardConverter>()));
    gh.factory<_i57.GetWsUrlUseCase>(
        () => _i57.GetWsUrlUseCase(gh<_i32.ApiSettingsProvider>()));
    gh.lazySingleton<_i58.LocalNotificationsService>(
      () => _i58.LocalNotificationsServiceImpl(
        gh<_i17.NavigatorKeyProvider>(),
        gh<_i6.AppRemoteMessagesRepository>(),
        gh<_i15.LogService>(),
      ),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i59.NewsApiService>(
      () => _i59.NewsApiService(
        gh<_i11.DioProvider>(),
        gh<_i15.LogService>(),
        gh<_i51.GetNewsApiBaseUrlUseCase>(),
      ),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i60.NewsRemoteDataSource>(
      () => _i60.NewsRemoteDataSourceImpl(
        gh<_i59.NewsApiService>(),
        gh<_i15.LogService>(),
      ),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i61.RemoveAppDocumentUseCase>(
      () =>
          _i61.RemoveAppDocumentUseCaseImpl(gh<_i34.AppDocumentsRepository>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i62.RemoveBusinessCardByIdUseCase>(
      () => _i62.RemoveBusinessCardByIdUseCaseImpl(
          gh<_i39.BusinessCardRepository>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i63.SaveBusinessCardUseCase>(
      () => _i63.SaveBusinessCardUseCaseImpl(gh<_i39.BusinessCardRepository>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.factory<_i64.SaveVCardFileFromBusinessCardUseCase>(() =>
        _i64.SaveVCardFileFromBusinessCardUseCase(
            gh<_i56.GetVCardFromBusinessCardUseCase>()));
    gh.factory<_i65.SetAllApiSettingsUseCase>(
        () => _i65.SetAllApiSettingsUseCase(gh<_i32.ApiSettingsProvider>()));
    gh.lazySingleton<_i66.SetBillingNotificationSettingsUseCase>(
      () => _i66.SetBillingNotificationSettingsUseCaseImpl(
        gh<_i23.SettingsDataSource>(),
        gh<_i58.LocalNotificationsService>(),
      ),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i67.SetDarkModeSettingsUseCase>(
      () => _i67.SetDarkModeSettingsUseCaseImpl(gh<_i23.SettingsDataSource>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i68.SetRegionSettingsUseCase>(
      () => _i68.SetRegionSettingsUseCaseImpl(gh<_i23.SettingsDataSource>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i69.SetSystemModeSettingsUseCase>(
      () =>
          _i69.SetSystemModeSettingsUseCaseImpl(gh<_i23.SettingsDataSource>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.factory<_i70.ShareVCardFromBusinessCardUseCase>(() =>
        _i70.ShareVCardFromBusinessCardUseCase(
            gh<_i64.SaveVCardFileFromBusinessCardUseCase>()));
    gh.lazySingleton<_i71.ThemeCubit>(
      () => _i71.ThemeCubit(
        gh<_i50.GetDarkModeSettingsUseCase>(),
        gh<_i67.SetDarkModeSettingsUseCase>(),
        gh<_i53.GetSystemModeSettingsUseCase>(),
        gh<_i69.SetSystemModeSettingsUseCase>(),
      ),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i72.WebsocketService>(
      () => _i72.WebsocketServiceImpl(
        gh<_i29.UserService>(),
        gh<_i19.PushNotificationsProvider>(),
        gh<_i15.LogService>(),
        gh<_i57.GetWsUrlUseCase>(),
      ),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i73.AddAppDocumentsUseCase>(
      () =>
          _i73.AddAppDocumentsAddUseCaseImpl(gh<_i34.AppDocumentsRepository>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i74.AuthProvider>(
      () => _i74.AuthProvider(
        gh<_i9.Constants>(),
        gh<_i17.NavigatorKeyProvider>(),
        gh<_i45.GetAllApiSettingsUseCase>(),
      ),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i75.AvatarStorageRepository>(
      () => _i76.AvatarStorageRepositoryImpl(
          dataSource: gh<_i44.FileStorageDataSource>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.factoryParam<_i77.BusinessCardShowCubit, int, dynamic>((
      id,
      _,
    ) =>
        _i77.BusinessCardShowCubit(
          id,
          gh<_i49.GetBusinessCardByIdUseCase>(),
          gh<_i15.LogService>(),
          gh<_i70.ShareVCardFromBusinessCardUseCase>(),
          gh<_i56.GetVCardFromBusinessCardUseCase>(),
        ));
    gh.factory<_i78.BusinessCardsListCubit>(() => _i78.BusinessCardsListCubit(
          gh<_i46.GetAllBusinessCardsUseCase>(),
          gh<_i62.RemoveBusinessCardByIdUseCase>(),
          gh<_i70.ShareVCardFromBusinessCardUseCase>(),
          gh<_i15.LogService>(),
        ));
    gh.lazySingleton<_i79.ChatsRepository>(
      () => _i80.ChatsRemoteRepository(
        gh<_i72.WebsocketService>(),
        gh<_i42.ChatsDbDataSource>(),
        gh<_i30.UuidGenerator>(),
        gh<_i29.UserService>(),
        gh<_i16.MessagesDbDataSource>(),
        gh<_i15.LogService>(),
      ),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.factory<_i81.ClearChatHistoryUseCase>(
        () => _i81.ClearChatHistoryUseCase(gh<_i79.ChatsRepository>()));
    gh.lazySingleton<_i82.GetAllMessagesByChatIdUseCase>(
      () => _i82.GetAllMessagesByChatIdUseCaseImpl(gh<_i79.ChatsRepository>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i83.GetChatFeedObservableUseCase>(
      () => _i83.GetChatFeedObservableUseCaseImpl(gh<_i79.ChatsRepository>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i84.GetChatFeedUseCase>(
      () => _i84.GetChatFeedUseCaseImpl(gh<_i79.ChatsRepository>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i85.GetChatInfoByIdUseCase>(
      () => _i85.GetChatInfoByIdUseCaseImpl(gh<_i79.ChatsRepository>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.factory<_i86.GetNewsUseCase>(
      () => _i86.GetNewsUseCaseImpl(
        gh<_i8.NewsRepository>(),
        gh<_i52.GetRegionSettingsUseCase>(),
      ),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i87.GetProfileAvatarUseCase>(
      () => _i87.GetProfileAvatarUseCaseImpl(
        settingsRepository: gh<_i24.SettingsRepository>(),
        avatarStorageRepository: gh<_i75.AvatarStorageRepository>(),
      ),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.factory<_i88.HasCachedAccountUseCase>(
        () => _i88.HasCachedAccountUseCase(gh<_i74.AuthProvider>()));
    gh.lazySingleton<_i89.NewsCachedDataSource>(
      () => _i89.NewsCachedDataSourceImpl(
          newsRepository: gh<_i60.NewsRemoteDataSource>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.factory<_i90.NewsCubit>(() => _i90.NewsCubit(
          gh<_i86.GetNewsUseCase>(),
          gh<_i7.ClearCacheNewsUseCase>(),
          gh<_i15.LogService>(),
        ));
    gh.factory<_i91.ProfileDocumentsCubit>(() => _i91.ProfileDocumentsCubit(
          gh<_i13.InitAppDocumentsUseCase>(),
          gh<_i47.GetAppDocumentsUseCase>(),
          gh<_i73.AddAppDocumentsUseCase>(),
          gh<_i61.RemoveAppDocumentUseCase>(),
          gh<_i43.EditAppDocumentUseCase>(),
          gh<_i26.ShareAppDocumentsUseCase>(),
          gh<_i18.OpenAppDocumentUseCase>(),
        ));
    gh.factory<_i92.RefreshAuthSettingsUseCase>(
        () => _i92.RefreshAuthSettingsUseCase(gh<_i74.AuthProvider>()));
    gh.lazySingleton<_i93.RegionCubit>(
      () => _i93.RegionCubit(
        gh<_i52.GetRegionSettingsUseCase>(),
        gh<_i68.SetRegionSettingsUseCase>(),
      ),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i94.RemoveMessageByIdUseCase>(
      () => _i94.RemoveMessageByIdUseCaseImpl(gh<_i79.ChatsRepository>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i95.ResetNewMessagesUseCase>(
      () => _i95.ResetNewMessagesUseCaseImpl(gh<_i79.ChatsRepository>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i96.SendChatMessageUseCase>(
      () => _i96.SendChatMessageUseCaseImpl(gh<_i79.ChatsRepository>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i97.SendFormChatMessageUseCase>(
      () => _i97.SendFormChatMessageUseCaseImpl(gh<_i79.ChatsRepository>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i98.SendMenuItemChatMessageUseCase>(
      () => _i98.SendMenuItemChatMessageUseCaseImpl(gh<_i79.ChatsRepository>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i99.SetProfileAvatarUseCase>(
      () => _i99.SetProfileAvatarUseCaseImpl(
        settingsRepository: gh<_i24.SettingsRepository>(),
        avatarStorageRepository: gh<_i75.AvatarStorageRepository>(),
      ),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.factory<_i100.UserLogInUseCase>(
      () => _i100.UserLogInUseCaseImpl(
        userService: gh<_i29.UserService>(),
        chatsRepository: gh<_i79.ChatsRepository>(),
        settingsRepository: gh<_i24.SettingsRepository>(),
        businessCardRepository: gh<_i39.BusinessCardRepository>(),
        appDocumentsRepository: gh<_i34.AppDocumentsRepository>(),
        scopeRepository: gh<_i20.ScopeRepository>(),
        localNotificationsService: gh<_i58.LocalNotificationsService>(),
      ),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.factory<_i101.ApiSettingsCubit>(() => _i101.ApiSettingsCubit(
          gh<_i65.SetAllApiSettingsUseCase>(),
          gh<_i45.GetAllApiSettingsUseCase>(),
          gh<_i92.RefreshAuthSettingsUseCase>(),
          gh<_i81.ClearChatHistoryUseCase>(),
          gh<_i12.GetApiSettingsPresetsUseCase>(),
        ));
    gh.factory<_i102.ChatCubit>(() => _i102.ChatCubit(
          gh<_i83.GetChatFeedObservableUseCase>(),
          gh<_i84.GetChatFeedUseCase>(),
          gh<_i85.GetChatInfoByIdUseCase>(),
          gh<_i82.GetAllMessagesByChatIdUseCase>(),
          gh<_i79.ChatsRepository>(),
          gh<_i29.UserService>(),
          gh<_i96.SendChatMessageUseCase>(),
          gh<_i98.SendMenuItemChatMessageUseCase>(),
          gh<_i95.ResetNewMessagesUseCase>(),
          gh<_i94.RemoveMessageByIdUseCase>(),
          gh<_i97.SendFormChatMessageUseCase>(),
          gh<_i15.LogService>(),
        ));
    gh.factory<_i103.OAuthTryLoginUseCase>(
      () => _i103.OAuthTryLoginUseCaseImpl(
        gh<_i74.AuthProvider>(),
        gh<_i100.UserLogInUseCase>(),
        gh<_i15.LogService>(),
      ),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i104.TasksSbsApiService>(
      () => _i104.TasksSbsApiService(
        gh<_i54.GetTasksSbsApiBaseUrlUseCase>(),
        gh<_i11.DioProvider>(),
        gh<_i15.LogService>(),
        gh<_i14.LocaleInterceptor>(),
        gh<_i37.AuthInterceptor>(),
        gh<_i103.OAuthTryLoginUseCase>(),
        gh<_i17.NavigatorKeyProvider>(),
      ),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i105.TasksSbsRemoteDataSource>(
      () => _i105.TasksSbsRemoteDataSourceImpl(
        gh<_i104.TasksSbsApiService>(),
        gh<_i15.LogService>(),
      ),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i106.TasksSummaryApiService>(
      () => _i106.TasksSummaryApiService(
        gh<_i55.GetTasksSummaryApiBaseUrlUseCase>(),
        gh<_i11.DioProvider>(),
        gh<_i15.LogService>(),
        gh<_i14.LocaleInterceptor>(),
        gh<_i37.AuthInterceptor>(),
        gh<_i103.OAuthTryLoginUseCase>(),
        gh<_i17.NavigatorKeyProvider>(),
      ),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i107.TasksSummaryRemoteDataSource>(
      () => _i107.TasksSummaryRemoteDataSourceImpl(
        gh<_i106.TasksSummaryApiService>(),
        gh<_i15.LogService>(),
      ),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i108.TasksVacationRemoteDataSource>(
      () => _i108.TasksVacationRemoteDataSourceImpl(
        gh<_i106.TasksSummaryApiService>(),
        gh<_i15.LogService>(),
      ),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i109.CompleteTaskSbsWeeklyUseCase>(
      () => _i109.CompleteTaskSbsWeeklyUseCaseImpl(
          gh<_i105.TasksSbsRemoteDataSource>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i110.CompleteTaskVacationUseCase>(
      () => _i110.CompleteTaskVacationUseCaseImpl(
          gh<_i108.TasksVacationRemoteDataSource>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i111.CompleteTasksSbsLateUseCase>(
      () => _i111.CompleteTaskSbsLateUseCaseImpl(
          gh<_i105.TasksSbsRemoteDataSource>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i112.TasksEasRemoteDataSource>(
      () => _i112.TasksEasRemoteDataSourceImpl(
        gh<_i106.TasksSummaryApiService>(),
        gh<_i15.LogService>(),
      ),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i113.TasksSbsCachedDataSource>(
      () => _i113.TasksSbsCachedDataSourceImpl(
          gh<_i105.TasksSbsRemoteDataSource>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i114.TasksSbsRepository>(
      () => _i115.TasksSbsCachedRepository(
          dataSource: gh<_i113.TasksSbsCachedDataSource>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i116.TasksSummaryCachedDataSource>(
      () => _i116.TasksSummaryCachedDataSourceImpl(
          gh<_i107.TasksSummaryRemoteDataSource>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i117.TasksVacationCachedDataSource>(
      () => _i117.TasksEasCachedDataSourceImpl(
          gh<_i108.TasksVacationRemoteDataSource>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i118.TasksVacationRepository>(
      () => _i119.TasksVacationCachedRepository(
          dataSource: gh<_i117.TasksVacationCachedDataSource>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i120.ClearCacheTasksSbsLateUseCase>(
      () => _i120.ClearCacheTasksSbsLateUseCaseImpl(
          gh<_i113.TasksSbsCachedDataSource>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i121.ClearCacheTasksSbsWeeklyUseCase>(
      () => _i121.ClearCacheTasksSbsWeeklyUseCaseImpl(
          gh<_i113.TasksSbsCachedDataSource>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i122.ClearCacheTasksVacationUseCase>(
      () => _i122.ClearCacheTasksVacationUseCaseImpl(
          gh<_i117.TasksVacationCachedDataSource>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i123.CompleteCachedTaskSbsWeeklyUseCase>(
      () => _i123.CompleteCachedTaskSbsWeeklyUseCaseImpl(
          gh<_i114.TasksSbsRepository>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i124.CompleteCachedTaskVacationUseCase>(
      () => _i124.CompleteCachedTaskVacationUseCaseImpl(
          gh<_i118.TasksVacationRepository>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i125.CompleteCachedTasksSbsLateUseCase>(
      () => _i125.CompleteCachedTaskSbsLateUseCaseImpl(
          gh<_i114.TasksSbsRepository>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i126.CompleteTaskEasUseCase>(
      () => _i126.CompleteTaskEasUseCaseImpl(
          gh<_i112.TasksEasRemoteDataSource>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i127.GetTasksSbsLateUseCase>(
      () => _i127.GetTasksSbsLateUseCaseImpl(
          gh<_i113.TasksSbsCachedDataSource>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i128.GetTasksSbsWeeklyUseCase>(
      () => _i128.GetTasksSbsWeeklyUseCaseImpl(
          gh<_i113.TasksSbsCachedDataSource>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i129.GetTasksSummaryUseCase>(
      () => _i129.GetTasksSummaryUseCaseImpl(
          gh<_i116.TasksSummaryCachedDataSource>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i130.GetTasksVacationUseCase>(
      () => _i130.GetTasksVacationUseCaseImpl(
          gh<_i117.TasksVacationCachedDataSource>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i131.TasksEasCachedDataSource>(
      () => _i131.TasksEasCachedDataSourceImpl(
          gh<_i112.TasksEasRemoteDataSource>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i132.TasksEasRepository>(
      () => _i133.TasksEasCachedRepository(
          dataSource: gh<_i131.TasksEasCachedDataSource>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.factory<_i134.TasksSbsLateCubit>(() => _i134.TasksSbsLateCubit(
          gh<_i127.GetTasksSbsLateUseCase>(),
          gh<_i125.CompleteCachedTasksSbsLateUseCase>(),
          gh<_i111.CompleteTasksSbsLateUseCase>(),
          gh<_i120.ClearCacheTasksSbsLateUseCase>(),
          gh<_i15.LogService>(),
        ));
    gh.factory<_i135.TasksSbsLateSummaryCubit>(
        () => _i135.TasksSbsLateSummaryCubit(
              gh<_i127.GetTasksSbsLateUseCase>(),
              gh<_i120.ClearCacheTasksSbsLateUseCase>(),
              gh<_i114.TasksSbsRepository>(),
              gh<_i15.LogService>(),
            ));
    gh.factory<_i136.TasksSbsWeeklyCubit>(() => _i136.TasksSbsWeeklyCubit(
          gh<_i128.GetTasksSbsWeeklyUseCase>(),
          gh<_i121.ClearCacheTasksSbsWeeklyUseCase>(),
          gh<_i123.CompleteCachedTaskSbsWeeklyUseCase>(),
          gh<_i109.CompleteTaskSbsWeeklyUseCase>(),
          gh<_i15.LogService>(),
        ));
    gh.factory<_i137.TasksSbsWeeklySummaryCubit>(
        () => _i137.TasksSbsWeeklySummaryCubit(
              gh<_i128.GetTasksSbsWeeklyUseCase>(),
              gh<_i121.ClearCacheTasksSbsWeeklyUseCase>(),
              gh<_i114.TasksSbsRepository>(),
              gh<_i15.LogService>(),
            ));
    gh.factory<_i138.TasksVacationCubit>(() => _i138.TasksVacationCubit(
          gh<_i130.GetTasksVacationUseCase>(),
          gh<_i124.CompleteCachedTaskVacationUseCase>(),
          gh<_i110.CompleteTaskVacationUseCase>(),
          gh<_i122.ClearCacheTasksVacationUseCase>(),
          gh<_i15.LogService>(),
        ));
    gh.factory<_i139.TasksVacationSummaryCubit>(
        () => _i139.TasksVacationSummaryCubit(
              gh<_i130.GetTasksVacationUseCase>(),
              gh<_i122.ClearCacheTasksVacationUseCase>(),
              gh<_i118.TasksVacationRepository>(),
              gh<_i15.LogService>(),
            ));
    gh.factory<_i140.UserLogOutUseCase>(
      () => _i140.UserLogOutUseCaseImpl(
        gh<_i79.ChatsRepository>(),
        gh<_i89.NewsCachedDataSource>(),
        gh<_i131.TasksEasCachedDataSource>(),
        gh<_i113.TasksSbsCachedDataSource>(),
        gh<_i117.TasksVacationCachedDataSource>(),
        gh<_i29.UserService>(),
        gh<_i74.AuthProvider>(),
        gh<_i20.ScopeRepository>(),
      ),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i141.ClearCacheTasksEasUseCase>(
      () => _i141.ClearCacheTasksEasUseCaseImpl(
          gh<_i131.TasksEasCachedDataSource>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i142.CompleteCachedTaskEasUseCase>(
      () => _i142.CompleteCachedTaskEasUseCaseImpl(
          gh<_i132.TasksEasRepository>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i143.GetTasksEasUseCase>(
      () => _i143.GetTasksEasUseCaseImpl(gh<_i131.TasksEasCachedDataSource>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.factory<_i144.SettingsCubit>(() => _i144.SettingsCubit(
          gh<_i48.GetBillingNotificationSettingsUseCase>(),
          gh<_i50.GetDarkModeSettingsUseCase>(),
          gh<_i53.GetSystemModeSettingsUseCase>(),
          gh<_i52.GetRegionSettingsUseCase>(),
          gh<_i140.UserLogOutUseCase>(),
          gh<_i71.ThemeCubit>(),
          gh<_i93.RegionCubit>(),
        ));
    gh.factory<_i145.TasksEasCubit>(() => _i145.TasksEasCubit(
          gh<_i143.GetTasksEasUseCase>(),
          gh<_i142.CompleteCachedTaskEasUseCase>(),
          gh<_i126.CompleteTaskEasUseCase>(),
          gh<_i141.ClearCacheTasksEasUseCase>(),
          gh<_i15.LogService>(),
        ));
    gh.factory<_i146.TasksEasSummaryCubit>(() => _i146.TasksEasSummaryCubit(
          gh<_i143.GetTasksEasUseCase>(),
          gh<_i141.ClearCacheTasksEasUseCase>(),
          gh<_i132.TasksEasRepository>(),
          gh<_i15.LogService>(),
        ));
    gh.factory<_i147.GetBackgroundDataUseCase>(
        () => _i147.GetBackgroundDataUseCase(
              gh<_i128.GetTasksSbsWeeklyUseCase>(),
              gh<_i127.GetTasksSbsLateUseCase>(),
              gh<_i143.GetTasksEasUseCase>(),
              gh<_i130.GetTasksVacationUseCase>(),
            ));
    gh.factory<_i148.AuthCubit>(() => _i148.AuthCubit(
          gh<_i19.PushNotificationsProvider>(),
          gh<_i88.HasCachedAccountUseCase>(),
          gh<_i103.OAuthTryLoginUseCase>(),
          gh<_i15.LogService>(),
          gh<_i52.GetRegionSettingsUseCase>(),
          gh<_i147.GetBackgroundDataUseCase>(),
        ));
    return this;
  }

// initializes the registration of mockScope-scope dependencies inside of GetIt
  _i1.GetIt initMockScopeScope({_i1.ScopeDisposeFunc? dispose}) {
    return _i2.GetItHelper(this).initScope(
      'mockScope',
      dispose: dispose,
      init: (_i2.GetItHelper gh) {
        gh.lazySingleton<_i79.ChatsRepository>(
          () => _i149.ChatsMockRepository(
            gh<_i30.UuidGenerator>(),
            gh<_i29.UserService>(),
          ),
          registerFor: {
            _dev,
            _prod,
          },
        );
        gh.lazySingleton<_i8.NewsRepository>(
          () => _i150.NewsMockRepository(constants: gh<_i9.Constants>()),
          registerFor: {
            _dev,
            _prod,
          },
        );
      },
    );
  }

// initializes the registration of authScope-scope dependencies inside of GetIt
  _i1.GetIt initAuthScopeScope({_i1.ScopeDisposeFunc? dispose}) {
    return _i2.GetItHelper(this).initScope(
      'authScope',
      dispose: dispose,
      init: (_i2.GetItHelper gh) {
        gh.factory<_i8.NewsRepository>(
          () => _i151.NewsCachedRepository(
            dataSource: gh<_i89.NewsCachedDataSource>(),
            getNewsApiBaseUrlUseCase: gh<_i51.GetNewsApiBaseUrlUseCase>(),
          ),
          registerFor: {
            _dev,
            _prod,
          },
        );
      },
    );
  }
}

class _$AppModule extends _i152.AppModule {}
