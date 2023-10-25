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
    as _i90;
import 'package:terralinkapp/data/data_sources/cache/tasks_eas_cached_data_source.dart'
    as _i112;
import 'package:terralinkapp/data/data_sources/cache/tasks_sbs_cached_data_source.dart'
    as _i115;
import 'package:terralinkapp/data/data_sources/local/api_settings_presets/api_settings_presets_data_source.dart'
    as _i3;
import 'package:terralinkapp/data/data_sources/local/database/app_documents_db_data_source.dart'
    as _i34;
import 'package:terralinkapp/data/data_sources/local/database/business_card_db_data_source.dart'
    as _i39;
import 'package:terralinkapp/data/data_sources/local/database/chats_db_data_source.dart'
    as _i43;
import 'package:terralinkapp/data/data_sources/local/database/messages_db_data_source.dart'
    as _i16;
import 'package:terralinkapp/data/data_sources/local/file/file_storage_data_source.dart'
    as _i45;
import 'package:terralinkapp/data/data_sources/local/shared_preferences/settings_data_source.dart'
    as _i23;
import 'package:terralinkapp/data/data_sources/remote/news_remote_data_source.dart'
    as _i61;
import 'package:terralinkapp/data/data_sources/remote/tasks_eas_remote_data_source.dart'
    as _i106;
import 'package:terralinkapp/data/data_sources/remote/tasks_sbs_remote_data_source.dart'
    as _i108;
import 'package:terralinkapp/data/providers/api_settings_provider.dart' as _i33;
import 'package:terralinkapp/data/providers/auth_provider.dart' as _i75;
import 'package:terralinkapp/data/providers/dio_provider.dart' as _i11;
import 'package:terralinkapp/data/providers/navigator_key_provider.dart'
    as _i17;
import 'package:terralinkapp/data/providers/push_notifications_provider.dart'
    as _i19;
import 'package:terralinkapp/data/providers/uuid_generator.dart' as _i31;
import 'package:terralinkapp/data/repositories/cache/news_cached_repository.dart'
    as _i130;
import 'package:terralinkapp/data/repositories/cache/tasks_eas_cached_repository.dart'
    as _i114;
import 'package:terralinkapp/data/repositories/cache/tasks_sbs_cached_repository.dart'
    as _i117;
import 'package:terralinkapp/data/repositories/di_scope_repository.dart'
    as _i21;
import 'package:terralinkapp/data/repositories/local/api_settings_presets/api_settings_presets_repository.dart'
    as _i4;
import 'package:terralinkapp/data/repositories/local/database/app_documents_db_repository.dart'
    as _i36;
import 'package:terralinkapp/data/repositories/local/database/business_card_db_repository.dart'
    as _i41;
import 'package:terralinkapp/data/repositories/local/file/avatar_storage_repository_impl.dart'
    as _i77;
import 'package:terralinkapp/data/repositories/local/notifications/app_remote_messages_repository.dart'
    as _i6;
import 'package:terralinkapp/data/repositories/local/shared_preferences/settings_shared_preferences_repository.dart'
    as _i25;
import 'package:terralinkapp/data/repositories/mock/chat_mock_repository.dart'
    as _i128;
import 'package:terralinkapp/data/repositories/mock/news_mock_repository.dart'
    as _i129;
import 'package:terralinkapp/data/repositories/remote/chats_remote_repository.dart'
    as _i81;
import 'package:terralinkapp/data/services/app_parsing_tags_service.dart'
    as _i5;
import 'package:terralinkapp/data/services/converters/businesscard_to_vcard_converter.dart'
    as _i42;
import 'package:terralinkapp/data/services/http/interceptors/auth_interceptor.dart'
    as _i38;
import 'package:terralinkapp/data/services/http/interceptors/locale_interceptor.dart'
    as _i14;
import 'package:terralinkapp/data/services/http/news_api_service.dart' as _i60;
import 'package:terralinkapp/data/services/http/overrides/api_http_overrides.dart'
    as _i32;
import 'package:terralinkapp/data/services/http/tasks_eas_api_service.dart'
    as _i105;
import 'package:terralinkapp/data/services/http/tasks_sbs_api_service.dart'
    as _i107;
import 'package:terralinkapp/data/services/local_notifications_service.dart'
    as _i59;
import 'package:terralinkapp/data/services/log_service.dart' as _i15;
import 'package:terralinkapp/data/services/timezone_service.dart' as _i29;
import 'package:terralinkapp/data/services/user_service.dart' as _i30;
import 'package:terralinkapp/data/services/websocket_service.dart' as _i73;
import 'package:terralinkapp/data/use_cases/auth/has_cached_account_use_case.dart'
    as _i89;
import 'package:terralinkapp/data/use_cases/auth/oauth_try_login_use_case.dart'
    as _i104;
import 'package:terralinkapp/data/use_cases/auth/refresh_auth_settings_use_case.dart'
    as _i93;
import 'package:terralinkapp/data/use_cases/auth/user_log_in_use_case.dart'
    as _i101;
import 'package:terralinkapp/data/use_cases/auth/user_log_out_use_case.dart'
    as _i118;
import 'package:terralinkapp/data/use_cases/business_cards/get_all_business_cards_use_case.dart'
    as _i47;
import 'package:terralinkapp/data/use_cases/business_cards/get_business_card_by_id_use_case.dart'
    as _i50;
import 'package:terralinkapp/data/use_cases/business_cards/get_vcard_from_business_card_use_case.dart'
    as _i57;
import 'package:terralinkapp/data/use_cases/business_cards/remove_business_card_by_id_use_case.dart'
    as _i63;
import 'package:terralinkapp/data/use_cases/business_cards/save_business_card_use_case.dart'
    as _i64;
import 'package:terralinkapp/data/use_cases/business_cards/save_vcard_file_from_business_card_use_case.dart'
    as _i65;
import 'package:terralinkapp/data/use_cases/business_cards/share_vcard_from_bussiness_card_use_case.dart'
    as _i71;
import 'package:terralinkapp/data/use_cases/chat/clear_chat_history_use_case.dart'
    as _i82;
import 'package:terralinkapp/data/use_cases/chat/get_all_messages_by_chat_id_use_case.dart'
    as _i83;
import 'package:terralinkapp/data/use_cases/chat/get_chat_info_by_id_use_case.dart'
    as _i86;
import 'package:terralinkapp/data/use_cases/chat/remove_message_by_id_use_case.dart'
    as _i95;
import 'package:terralinkapp/data/use_cases/chat/reset_new_messages_use_case.dart'
    as _i96;
import 'package:terralinkapp/data/use_cases/chat/send_chat_message_use_case.dart'
    as _i97;
import 'package:terralinkapp/data/use_cases/chat/send_form_chat_message_use_case.dart'
    as _i98;
import 'package:terralinkapp/data/use_cases/chat/send_menu_item_chat_message_use_case.dart'
    as _i99;
import 'package:terralinkapp/data/use_cases/chats/get_chat_feed_observable_use_case.dart'
    as _i84;
import 'package:terralinkapp/data/use_cases/chats/get_chat_feed_use_case.dart'
    as _i85;
import 'package:terralinkapp/data/use_cases/documents/add_app_documents_use_case.dart'
    as _i74;
import 'package:terralinkapp/data/use_cases/documents/edit_app_documents_use_case.dart'
    as _i44;
import 'package:terralinkapp/data/use_cases/documents/get_app_documents_use_case.dart'
    as _i48;
import 'package:terralinkapp/data/use_cases/documents/init_case_app_documents_use_case.dart'
    as _i13;
import 'package:terralinkapp/data/use_cases/documents/open_app_document_use_case.dart'
    as _i18;
import 'package:terralinkapp/data/use_cases/documents/remove_case_app_documents_use_case.dart'
    as _i62;
import 'package:terralinkapp/data/use_cases/documents/share_app_documents_use_case.dart'
    as _i26;
import 'package:terralinkapp/data/use_cases/feedback/send_feedback_use_case.dart'
    as _i22;
import 'package:terralinkapp/data/use_cases/news/clear_cache_news_use_case.dart'
    as _i7;
import 'package:terralinkapp/data/use_cases/news/get_all_news_use_case.dart'
    as _i87;
import 'package:terralinkapp/data/use_cases/profile/get_profile_avatar_use_case.dart'
    as _i88;
import 'package:terralinkapp/data/use_cases/profile/set_profile_avatar_use_case.dart'
    as _i100;
import 'package:terralinkapp/data/use_cases/settings/get_all_api_settings_use_case.dart'
    as _i46;
import 'package:terralinkapp/data/use_cases/settings/get_api_settings_presets_use_case.dart'
    as _i12;
import 'package:terralinkapp/data/use_cases/settings/get_billing_notification_settings_use_case.dart'
    as _i49;
import 'package:terralinkapp/data/use_cases/settings/get_dark_mode_settings_use_case.dart'
    as _i51;
import 'package:terralinkapp/data/use_cases/settings/get_news_api_base_url_use_case.dart'
    as _i52;
import 'package:terralinkapp/data/use_cases/settings/get_region_settings_use_case.dart'
    as _i53;
import 'package:terralinkapp/data/use_cases/settings/get_system_mode_settings_use_case.dart'
    as _i54;
import 'package:terralinkapp/data/use_cases/settings/get_tasks_eas_api_base_url_use_case.dart'
    as _i55;
import 'package:terralinkapp/data/use_cases/settings/get_tasks_sbs_api_base_url_use_case.dart'
    as _i56;
import 'package:terralinkapp/data/use_cases/settings/get_ws_url_use_case.dart'
    as _i58;
import 'package:terralinkapp/data/use_cases/settings/set_all_api_settings_use_case.dart'
    as _i66;
import 'package:terralinkapp/data/use_cases/settings/set_billing_notification_settings_use_case.dart'
    as _i67;
import 'package:terralinkapp/data/use_cases/settings/set_dark_mode_settings_use_case.dart'
    as _i68;
import 'package:terralinkapp/data/use_cases/settings/set_region_settings_use_case.dart'
    as _i69;
import 'package:terralinkapp/data/use_cases/settings/set_system_mode_settings_use_case.dart'
    as _i70;
import 'package:terralinkapp/data/use_cases/tasks_eas/clear_cache_tasks_eas_use_case.dart'
    as _i119;
import 'package:terralinkapp/data/use_cases/tasks_eas/complete_cached_task_eas_use_case.dart'
    as _i121;
import 'package:terralinkapp/data/use_cases/tasks_eas/complete_task_eas_use_case.dart'
    as _i110;
import 'package:terralinkapp/data/use_cases/tasks_eas/get_tasks_eas_use_case.dart'
    as _i123;
import 'package:terralinkapp/data/use_cases/tasks_sbs/clear_cache_tasks_sbs_use_case.dart'
    as _i120;
import 'package:terralinkapp/data/use_cases/tasks_sbs/complete_cached_task_sbs_use_case.dart'
    as _i122;
import 'package:terralinkapp/data/use_cases/tasks_sbs/complete_task_sbs_use_case.dart'
    as _i111;
import 'package:terralinkapp/data/use_cases/tasks_sbs/get_tasks_sbs_use_case.dart'
    as _i124;
import 'package:terralinkapp/di/modules/app_module.dart' as _i131;
import 'package:terralinkapp/domain/repositories/app_documents_repository.dart'
    as _i35;
import 'package:terralinkapp/domain/repositories/avatar_storage_repository.dart'
    as _i76;
import 'package:terralinkapp/domain/repositories/business_card_repository.dart'
    as _i40;
import 'package:terralinkapp/domain/repositories/chats_repository.dart' as _i80;
import 'package:terralinkapp/domain/repositories/news_repository.dart' as _i8;
import 'package:terralinkapp/domain/repositories/scope_repository.dart' as _i20;
import 'package:terralinkapp/domain/repositories/settings_repository.dart'
    as _i24;
import 'package:terralinkapp/domain/repositories/tasks_eas_repository.dart'
    as _i113;
import 'package:terralinkapp/domain/repositories/tasks_sbs_repository.dart'
    as _i116;
import 'package:terralinkapp/presentation/navigation/app_navigation_service.dart'
    as _i37;
import 'package:terralinkapp/presentation/screens/api_settings/domain/cubits/api_settings_cubit.dart'
    as _i102;
import 'package:terralinkapp/presentation/screens/auth/auth_cubit.dart'
    as _i109;
import 'package:terralinkapp/presentation/screens/business_cards/list/business_cards_list_cubit.dart'
    as _i79;
import 'package:terralinkapp/presentation/screens/business_cards/show/business_card_show_cubit.dart'
    as _i78;
import 'package:terralinkapp/presentation/screens/chat/domain/cubits/chat_cubit.dart'
    as _i103;
import 'package:terralinkapp/presentation/screens/news/domain/cubits/news_cubit.dart'
    as _i91;
import 'package:terralinkapp/presentation/screens/profile_documents/domain/cubits/profile_documents_cubit.dart'
    as _i92;
import 'package:terralinkapp/presentation/screens/region/domain/cubits/region_cubit.dart'
    as _i94;
import 'package:terralinkapp/presentation/screens/settings/domain/cubits/settings_cubit.dart'
    as _i125;
import 'package:terralinkapp/presentation/screens/tasks/eas/domain/cubits/tasks_eas_cubit.dart'
    as _i126;
import 'package:terralinkapp/presentation/screens/tasks/sbs/domain/cubits/tasks_sbs_cubit.dart'
    as _i127;
import 'package:terralinkapp/presentation/screens/tasks/summary/domain/cubits/tasks_summary_cubit.dart'
    as _i28;
import 'package:terralinkapp/presentation/theme/domain/cubits/theme_cubit.dart'
    as _i72;

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
      () => _i9.DevConstantsImpl(),
      registerFor: {_dev},
    );
    gh.lazySingleton<_i9.Constants>(
      () => _i9.ProdConstantsImpl(),
      registerFor: {_prod},
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
    gh.lazySingleton<_i28.TasksSummaryCubit>(
      () => _i28.TasksSummaryCubit(),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i29.TimeZoneService>(
      () => _i29.TimeZoneServiceImpl(),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i30.UserService>(
      () => _i30.UserServiceImpl(),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i31.UuidGenerator>(
      () => _i31.UuidGeneratorImpl(),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i32.ApiHttpOverrides>(
      () => _i32.ApiHttpOverrides(gh<_i9.Constants>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i33.ApiSettingsProvider>(() => _i33.ApiSettingsProvider(
          gh<_i23.SettingsDataSource>(),
          gh<_i9.Constants>(),
        ));
    gh.lazySingleton<_i34.AppDocumentsDbDataSource>(
      () => _i34.AppDocumentsDbDataSourceImpl(gh<_i10.Database>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i35.AppDocumentsRepository>(
      () => _i36.AppDocumentsDbRepository(
          dataSource: gh<_i34.AppDocumentsDbDataSource>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i37.AppNavigationService>(
      () => _i37.AppNavigationService(gh<_i17.NavigatorKeyProvider>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i38.AuthInterceptor>(
        () => _i38.AuthInterceptor(gh<_i30.UserService>()));
    gh.lazySingleton<_i39.BusinessCardDbDataSource>(
      () => _i39.BusinessCardDbDataSourceImpl(gh<_i10.Database>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i40.BusinessCardRepository>(
      () => _i41.BusinessCardDbRepository(
          dataSource: gh<_i39.BusinessCardDbDataSource>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.factory<_i42.BusinessCardToVCardConverter>(
        () => _i42.BusinessCardToVCardConverter(gh<_i9.Constants>()));
    gh.lazySingleton<_i43.ChatsDbDataSource>(
      () => _i43.ChatsDbDataSourceImpl(gh<_i10.Database>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i44.EditAppDocumentUseCase>(
      () => _i44.EditAppDocumentUseCaseImpl(gh<_i35.AppDocumentsRepository>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i45.FileStorageDataSource>(
      () => _i45.ImageStorageDataSourceImpl(logService: gh<_i15.LogService>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.factory<_i46.GetAllApiSettingsUseCase>(
        () => _i46.GetAllApiSettingsUseCase(gh<_i33.ApiSettingsProvider>()));
    gh.lazySingleton<_i47.GetAllBusinessCardsUseCase>(
      () => _i47.GetAllBusinessCardsUseCaseImpl(
          gh<_i40.BusinessCardRepository>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i48.GetAppDocumentsUseCase>(
      () => _i48.GetAppDocumentsUseCaseImpl(gh<_i35.AppDocumentsRepository>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i49.GetBillingNotificationSettingsUseCase>(
      () => _i49.GetBillingNotificationSettingsUseCaseImpl(
          gh<_i23.SettingsDataSource>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i50.GetBusinessCardByIdUseCase>(
      () => _i50.GetBusinessCardByIdUseCaseImpl(
          gh<_i40.BusinessCardRepository>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i51.GetDarkModeSettingsUseCase>(
      () => _i51.GetDarkModeSettingsUseCaseImpl(gh<_i23.SettingsDataSource>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.factory<_i52.GetNewsApiBaseUrlUseCase>(
        () => _i52.GetNewsApiBaseUrlUseCase(gh<_i33.ApiSettingsProvider>()));
    gh.lazySingleton<_i53.GetRegionSettingsUseCase>(
      () => _i53.GetRegionSettingsUseCaseImpl(gh<_i23.SettingsDataSource>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i54.GetSystemModeSettingsUseCase>(
      () =>
          _i54.GetSystemModeSettingsUseCaseImpl(gh<_i23.SettingsDataSource>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.factory<_i55.GetTasksEASApiBaseUrlUseCase>(() =>
        _i55.GetTasksEASApiBaseUrlUseCase(gh<_i33.ApiSettingsProvider>()));
    gh.factory<_i56.GetTasksSBSApiBaseUrlUseCase>(() =>
        _i56.GetTasksSBSApiBaseUrlUseCase(gh<_i33.ApiSettingsProvider>()));
    gh.factory<_i57.GetVCardFromBusinessCardUseCase>(() =>
        _i57.GetVCardFromBusinessCardUseCase(
            gh<_i42.BusinessCardToVCardConverter>()));
    gh.factory<_i58.GetWsUrlUseCase>(
        () => _i58.GetWsUrlUseCase(gh<_i33.ApiSettingsProvider>()));
    gh.lazySingleton<_i59.LocalNotificationsService>(
      () => _i59.LocalNotificationsServiceImpl(
        gh<_i17.NavigatorKeyProvider>(),
        gh<_i6.AppRemoteMessagesRepository>(),
        gh<_i15.LogService>(),
      ),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i60.NewsApiService>(
      () => _i60.NewsApiService(
        gh<_i11.DioProvider>(),
        gh<_i15.LogService>(),
        gh<_i52.GetNewsApiBaseUrlUseCase>(),
      ),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i61.NewsRemoteDataSource>(
      () => _i61.NewsRemoteDataSourceImpl(gh<_i60.NewsApiService>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i62.RemoveAppDocumentUseCase>(
      () =>
          _i62.RemoveAppDocumentUseCaseImpl(gh<_i35.AppDocumentsRepository>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i63.RemoveBusinessCardByIdUseCase>(
      () => _i63.RemoveBusinessCardByIdUseCaseImpl(
          gh<_i40.BusinessCardRepository>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i64.SaveBusinessCardUseCase>(
      () => _i64.SaveBusinessCardUseCaseImpl(gh<_i40.BusinessCardRepository>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.factory<_i65.SaveVCardFileFromBusinessCardUseCase>(() =>
        _i65.SaveVCardFileFromBusinessCardUseCase(
            gh<_i57.GetVCardFromBusinessCardUseCase>()));
    gh.factory<_i66.SetAllApiSettingsUseCase>(
        () => _i66.SetAllApiSettingsUseCase(gh<_i33.ApiSettingsProvider>()));
    gh.lazySingleton<_i67.SetBillingNotificationSettingsUseCase>(
      () => _i67.SetBillingNotificationSettingsUseCaseImpl(
        gh<_i23.SettingsDataSource>(),
        gh<_i59.LocalNotificationsService>(),
      ),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i68.SetDarkModeSettingsUseCase>(
      () => _i68.SetDarkModeSettingsUseCaseImpl(gh<_i23.SettingsDataSource>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i69.SetRegionSettingsUseCase>(
      () => _i69.SetRegionSettingsUseCaseImpl(gh<_i23.SettingsDataSource>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i70.SetSystemModeSettingsUseCase>(
      () =>
          _i70.SetSystemModeSettingsUseCaseImpl(gh<_i23.SettingsDataSource>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.factory<_i71.ShareVCardFromBusinessCardUseCase>(() =>
        _i71.ShareVCardFromBusinessCardUseCase(
            gh<_i65.SaveVCardFileFromBusinessCardUseCase>()));
    gh.lazySingleton<_i72.ThemeCubit>(
      () => _i72.ThemeCubit(
        gh<_i51.GetDarkModeSettingsUseCase>(),
        gh<_i68.SetDarkModeSettingsUseCase>(),
        gh<_i54.GetSystemModeSettingsUseCase>(),
        gh<_i70.SetSystemModeSettingsUseCase>(),
      ),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i73.WebsocketService>(
      () => _i73.WebsocketServiceImpl(
        gh<_i30.UserService>(),
        gh<_i19.PushNotificationsProvider>(),
        gh<_i15.LogService>(),
        gh<_i58.GetWsUrlUseCase>(),
      ),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i74.AddAppDocumentsUseCase>(
      () =>
          _i74.AddAppDocumentsAddUseCaseImpl(gh<_i35.AppDocumentsRepository>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i75.AuthProvider>(
      () => _i75.AuthProvider(
        gh<_i9.Constants>(),
        gh<_i17.NavigatorKeyProvider>(),
        gh<_i46.GetAllApiSettingsUseCase>(),
      ),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i76.AvatarStorageRepository>(
      () => _i77.AvatarStorageRepositoryImpl(
          dataSource: gh<_i45.FileStorageDataSource>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.factoryParam<_i78.BusinessCardShowCubit, int, dynamic>((
      id,
      _,
    ) =>
        _i78.BusinessCardShowCubit(
          id,
          gh<_i50.GetBusinessCardByIdUseCase>(),
          gh<_i15.LogService>(),
          gh<_i71.ShareVCardFromBusinessCardUseCase>(),
          gh<_i57.GetVCardFromBusinessCardUseCase>(),
        ));
    gh.factory<_i79.BusinessCardsListCubit>(() => _i79.BusinessCardsListCubit(
          gh<_i47.GetAllBusinessCardsUseCase>(),
          gh<_i63.RemoveBusinessCardByIdUseCase>(),
          gh<_i71.ShareVCardFromBusinessCardUseCase>(),
          gh<_i15.LogService>(),
        ));
    gh.lazySingleton<_i80.ChatsRepository>(
      () => _i81.ChatsRemoteRepository(
        gh<_i73.WebsocketService>(),
        gh<_i43.ChatsDbDataSource>(),
        gh<_i31.UuidGenerator>(),
        gh<_i30.UserService>(),
        gh<_i16.MessagesDbDataSource>(),
        gh<_i15.LogService>(),
      ),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.factory<_i82.ClearChatHistoryUseCase>(
        () => _i82.ClearChatHistoryUseCase(gh<_i80.ChatsRepository>()));
    gh.lazySingleton<_i83.GetAllMessagesByChatIdUseCase>(
      () => _i83.GetAllMessagesByChatIdUseCaseImpl(gh<_i80.ChatsRepository>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i84.GetChatFeedObservableUseCase>(
      () => _i84.GetChatFeedObservableUseCaseImpl(gh<_i80.ChatsRepository>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i85.GetChatFeedUseCase>(
      () => _i85.GetChatFeedUseCaseImpl(gh<_i80.ChatsRepository>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i86.GetChatInfoByIdUseCase>(
      () => _i86.GetChatInfoByIdUseCaseImpl(gh<_i80.ChatsRepository>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.factory<_i87.GetNewsUseCase>(
      () => _i87.GetNewsUseCaseImpl(
        gh<_i8.NewsRepository>(),
        gh<_i53.GetRegionSettingsUseCase>(),
      ),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i88.GetProfileAvatarUseCase>(
      () => _i88.GetProfileAvatarUseCaseImpl(
        settingsRepository: gh<_i24.SettingsRepository>(),
        avatarStorageRepository: gh<_i76.AvatarStorageRepository>(),
      ),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.factory<_i89.HasCachedAccountUseCase>(
        () => _i89.HasCachedAccountUseCase(gh<_i75.AuthProvider>()));
    gh.lazySingleton<_i90.NewsCachedDataSource>(
      () => _i90.NewsCachedDataSourceImpl(
          newsRepository: gh<_i61.NewsRemoteDataSource>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.factory<_i91.NewsCubit>(() => _i91.NewsCubit(
          gh<_i87.GetNewsUseCase>(),
          gh<_i7.ClearCacheNewsUseCase>(),
          gh<_i15.LogService>(),
        ));
    gh.factory<_i92.ProfileDocumentsCubit>(() => _i92.ProfileDocumentsCubit(
          gh<_i13.InitAppDocumentsUseCase>(),
          gh<_i48.GetAppDocumentsUseCase>(),
          gh<_i74.AddAppDocumentsUseCase>(),
          gh<_i62.RemoveAppDocumentUseCase>(),
          gh<_i44.EditAppDocumentUseCase>(),
          gh<_i26.ShareAppDocumentsUseCase>(),
          gh<_i18.OpenAppDocumentUseCase>(),
        ));
    gh.factory<_i93.RefreshAuthSettingsUseCase>(
        () => _i93.RefreshAuthSettingsUseCase(gh<_i75.AuthProvider>()));
    gh.lazySingleton<_i94.RegionCubit>(
      () => _i94.RegionCubit(
        gh<_i53.GetRegionSettingsUseCase>(),
        gh<_i69.SetRegionSettingsUseCase>(),
      ),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i95.RemoveMessageByIdUseCase>(
      () => _i95.RemoveMessageByIdUseCaseImpl(gh<_i80.ChatsRepository>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i96.ResetNewMessagesUseCase>(
      () => _i96.ResetNewMessagesUseCaseImpl(gh<_i80.ChatsRepository>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i97.SendChatMessageUseCase>(
      () => _i97.SendChatMessageUseCaseImpl(gh<_i80.ChatsRepository>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i98.SendFormChatMessageUseCase>(
      () => _i98.SendFormChatMessageUseCaseImpl(gh<_i80.ChatsRepository>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i99.SendMenuItemChatMessageUseCase>(
      () => _i99.SendMenuItemChatMessageUseCaseImpl(gh<_i80.ChatsRepository>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i100.SetProfileAvatarUseCase>(
      () => _i100.SetProfileAvatarUseCaseImpl(
        settingsRepository: gh<_i24.SettingsRepository>(),
        avatarStorageRepository: gh<_i76.AvatarStorageRepository>(),
      ),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.factory<_i101.UserLogInUseCase>(
      () => _i101.UserLogInUseCaseImpl(
        userService: gh<_i30.UserService>(),
        chatsRepository: gh<_i80.ChatsRepository>(),
        settingsRepository: gh<_i24.SettingsRepository>(),
        businessCardRepository: gh<_i40.BusinessCardRepository>(),
        appDocumentsRepository: gh<_i35.AppDocumentsRepository>(),
        scopeRepository: gh<_i20.ScopeRepository>(),
        localNotificationsService: gh<_i59.LocalNotificationsService>(),
      ),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.factory<_i102.ApiSettingsCubit>(() => _i102.ApiSettingsCubit(
          gh<_i66.SetAllApiSettingsUseCase>(),
          gh<_i46.GetAllApiSettingsUseCase>(),
          gh<_i93.RefreshAuthSettingsUseCase>(),
          gh<_i82.ClearChatHistoryUseCase>(),
          gh<_i12.GetApiSettingsPresetsUseCase>(),
        ));
    gh.factory<_i103.ChatCubit>(() => _i103.ChatCubit(
          gh<_i84.GetChatFeedObservableUseCase>(),
          gh<_i85.GetChatFeedUseCase>(),
          gh<_i86.GetChatInfoByIdUseCase>(),
          gh<_i83.GetAllMessagesByChatIdUseCase>(),
          gh<_i80.ChatsRepository>(),
          gh<_i30.UserService>(),
          gh<_i97.SendChatMessageUseCase>(),
          gh<_i99.SendMenuItemChatMessageUseCase>(),
          gh<_i96.ResetNewMessagesUseCase>(),
          gh<_i95.RemoveMessageByIdUseCase>(),
          gh<_i98.SendFormChatMessageUseCase>(),
          gh<_i15.LogService>(),
        ));
    gh.factory<_i104.OAuthTryLoginUseCase>(
      () => _i104.OAuthTryLoginUseCaseImpl(
        gh<_i75.AuthProvider>(),
        gh<_i101.UserLogInUseCase>(),
        gh<_i15.LogService>(),
      ),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i105.TasksEASApiService>(
      () => _i105.TasksEASApiService(
        gh<_i55.GetTasksEASApiBaseUrlUseCase>(),
        gh<_i11.DioProvider>(),
        gh<_i15.LogService>(),
        gh<_i14.LocaleInterceptor>(),
        gh<_i38.AuthInterceptor>(),
        gh<_i104.OAuthTryLoginUseCase>(),
        gh<_i17.NavigatorKeyProvider>(),
      ),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i106.TasksEASRemoteDataSource>(
      () => _i106.TasksEASRemoteDataSourceImpl(gh<_i105.TasksEASApiService>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i107.TasksSBSApiService>(
      () => _i107.TasksSBSApiService(
        gh<_i56.GetTasksSBSApiBaseUrlUseCase>(),
        gh<_i11.DioProvider>(),
        gh<_i15.LogService>(),
        gh<_i14.LocaleInterceptor>(),
        gh<_i38.AuthInterceptor>(),
        gh<_i104.OAuthTryLoginUseCase>(),
        gh<_i17.NavigatorKeyProvider>(),
      ),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i108.TasksSBSRemoteDataSource>(
      () => _i108.TasksSBSRemoteDataSourceImpl(gh<_i107.TasksSBSApiService>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.factory<_i109.AuthCubit>(() => _i109.AuthCubit(
          gh<_i19.PushNotificationsProvider>(),
          gh<_i89.HasCachedAccountUseCase>(),
          gh<_i104.OAuthTryLoginUseCase>(),
          gh<_i15.LogService>(),
          gh<_i53.GetRegionSettingsUseCase>(),
        ));
    gh.lazySingleton<_i110.CompleteTaskEASUseCase>(
      () => _i110.CompleteTaskEASUseCaseImpl(
          gh<_i106.TasksEASRemoteDataSource>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i111.CompleteTaskSBSUseCase>(
      () => _i111.CompleteTaskSBSUseCaseImpl(
          gh<_i108.TasksSBSRemoteDataSource>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i112.TasksEASCachedDataSource>(
      () => _i112.TasksEASCachedDataSourceImpl(
          gh<_i106.TasksEASRemoteDataSource>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i113.TasksEASRepository>(
      () => _i114.TasksEASCachedRepository(
          dataSource: gh<_i112.TasksEASCachedDataSource>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i115.TasksSBSCachedDataSource>(
      () => _i115.TasksSBSCachedDataSourceImpl(
          gh<_i108.TasksSBSRemoteDataSource>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i116.TasksSBSRepository>(
      () => _i117.TasksSBSCachedRepository(
          dataSource: gh<_i115.TasksSBSCachedDataSource>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.factory<_i118.UserLogOutUseCase>(
      () => _i118.UserLogOutUseCaseImpl(
        gh<_i80.ChatsRepository>(),
        gh<_i112.TasksEASCachedDataSource>(),
        gh<_i30.UserService>(),
        gh<_i75.AuthProvider>(),
        gh<_i20.ScopeRepository>(),
      ),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i119.ClearCacheTasksEASUseCase>(
      () => _i119.ClearCacheTasksEASUseCaseImpl(
          gh<_i112.TasksEASCachedDataSource>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i120.ClearCacheTasksSBSUseCase>(
      () => _i120.ClearCacheTasksSBSUseCaseImpl(
          gh<_i115.TasksSBSCachedDataSource>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i121.CompleteCachedTaskEASUseCase>(
      () => _i121.CompleteCachedTaskEASUseCaseImpl(
          gh<_i113.TasksEASRepository>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i122.CompleteCachedTaskSBSUseCase>(
      () => _i122.CompleteCachedTaskSBSUseCaseImpl(
          gh<_i116.TasksSBSRepository>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i123.GetTasksEASUseCase>(
      () => _i123.GetTasksEASUseCaseImpl(gh<_i112.TasksEASCachedDataSource>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i124.GetTasksSBSUseCase>(
      () => _i124.GetTasksSBSUseCaseImpl(gh<_i115.TasksSBSCachedDataSource>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.factory<_i125.SettingsCubit>(() => _i125.SettingsCubit(
          gh<_i49.GetBillingNotificationSettingsUseCase>(),
          gh<_i51.GetDarkModeSettingsUseCase>(),
          gh<_i54.GetSystemModeSettingsUseCase>(),
          gh<_i53.GetRegionSettingsUseCase>(),
          gh<_i118.UserLogOutUseCase>(),
          gh<_i72.ThemeCubit>(),
          gh<_i94.RegionCubit>(),
        ));
    gh.factory<_i126.TasksEASCubit>(() => _i126.TasksEASCubit(
          gh<_i123.GetTasksEASUseCase>(),
          gh<_i121.CompleteCachedTaskEASUseCase>(),
          gh<_i110.CompleteTaskEASUseCase>(),
          gh<_i119.ClearCacheTasksEASUseCase>(),
          gh<_i15.LogService>(),
        ));
    gh.factory<_i127.TasksSBSCubit>(() => _i127.TasksSBSCubit(
          gh<_i124.GetTasksSBSUseCase>(),
          gh<_i120.ClearCacheTasksSBSUseCase>(),
          gh<_i122.CompleteCachedTaskSBSUseCase>(),
          gh<_i111.CompleteTaskSBSUseCase>(),
          gh<_i15.LogService>(),
        ));
    return this;
  }

// initializes the registration of mockScope-scope dependencies inside of GetIt
  _i1.GetIt initMockScopeScope({_i1.ScopeDisposeFunc? dispose}) {
    return _i2.GetItHelper(this).initScope(
      'mockScope',
      dispose: dispose,
      init: (_i2.GetItHelper gh) {
        gh.lazySingleton<_i80.ChatsRepository>(
          () => _i128.ChatsMockRepository(
            gh<_i31.UuidGenerator>(),
            gh<_i30.UserService>(),
          ),
          registerFor: {
            _dev,
            _prod,
          },
        );
        gh.lazySingleton<_i8.NewsRepository>(
          () => _i129.NewsMockRepository(constants: gh<_i9.Constants>()),
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
          () => _i130.NewsCachedRepository(
            dataSource: gh<_i90.NewsCachedDataSource>(),
            constants: gh<_i9.Constants>(),
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

class _$AppModule extends _i131.AppModule {}
