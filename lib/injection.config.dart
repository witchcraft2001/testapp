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
import 'package:shared_preferences/shared_preferences.dart' as _i24;
import 'package:sqflite/sqflite.dart' as _i7;
import 'package:terralinkapp/common/constants.dart' as _i6;
import 'package:terralinkapp/data/data_sources/cache/news_cached_data_source.dart'
    as _i86;
import 'package:terralinkapp/data/data_sources/cache/tasks_eas_cached_data_source.dart'
    as _i108;
import 'package:terralinkapp/data/data_sources/cache/tasks_sbs_cached_data_source.dart'
    as _i111;
import 'package:terralinkapp/data/data_sources/local/database/app_documents_db_data_source.dart'
    as _i31;
import 'package:terralinkapp/data/data_sources/local/database/business_card_db_data_source.dart'
    as _i36;
import 'package:terralinkapp/data/data_sources/local/database/chats_db_data_source.dart'
    as _i40;
import 'package:terralinkapp/data/data_sources/local/database/messages_db_data_source.dart'
    as _i13;
import 'package:terralinkapp/data/data_sources/local/file/file_storage_data_source.dart'
    as _i42;
import 'package:terralinkapp/data/data_sources/local/shared_preferences/settings_data_source.dart'
    as _i20;
import 'package:terralinkapp/data/data_sources/remote/news_remote_data_source.dart'
    as _i57;
import 'package:terralinkapp/data/data_sources/remote/tasks_eas_remote_data_source.dart'
    as _i102;
import 'package:terralinkapp/data/data_sources/remote/tasks_sbs_remote_data_source.dart'
    as _i104;
import 'package:terralinkapp/data/providers/api_settings_provider.dart' as _i30;
import 'package:terralinkapp/data/providers/auth_provider.dart' as _i71;
import 'package:terralinkapp/data/providers/dio_provider.dart' as _i8;
import 'package:terralinkapp/data/providers/navigator_key_provider.dart'
    as _i14;
import 'package:terralinkapp/data/providers/push_notifications_provider.dart'
    as _i16;
import 'package:terralinkapp/data/providers/uuid_generator.dart' as _i28;
import 'package:terralinkapp/data/repositories/cache/news_cached_repository.dart'
    as _i126;
import 'package:terralinkapp/data/repositories/cache/tasks_eas_cached_repository.dart'
    as _i110;
import 'package:terralinkapp/data/repositories/cache/tasks_sbs_cached_repository.dart'
    as _i113;
import 'package:terralinkapp/data/repositories/di_scope_repository.dart'
    as _i18;
import 'package:terralinkapp/data/repositories/local/database/app_documents_db_repository.dart'
    as _i33;
import 'package:terralinkapp/data/repositories/local/database/business_card_db_repository.dart'
    as _i38;
import 'package:terralinkapp/data/repositories/local/file/avatar_storage_repository_impl.dart'
    as _i73;
import 'package:terralinkapp/data/repositories/local/shared_preferences/settings_shared_preferences_repository.dart'
    as _i22;
import 'package:terralinkapp/data/repositories/mock/chat_mock_repository.dart'
    as _i124;
import 'package:terralinkapp/data/repositories/mock/news_mock_repository.dart'
    as _i125;
import 'package:terralinkapp/data/repositories/remote/chats_remote_repository.dart'
    as _i77;
import 'package:terralinkapp/data/services/app_parsing_tags_service.dart'
    as _i3;
import 'package:terralinkapp/data/services/converters/businesscard_to_vcard_converter.dart'
    as _i39;
import 'package:terralinkapp/data/services/http/interceptors/auth_interceptor.dart'
    as _i35;
import 'package:terralinkapp/data/services/http/interceptors/locale_interceptor.dart'
    as _i11;
import 'package:terralinkapp/data/services/http/news_api_service.dart' as _i56;
import 'package:terralinkapp/data/services/http/overrides/api_http_overrides.dart'
    as _i29;
import 'package:terralinkapp/data/services/http/tasks_eas_api_service.dart'
    as _i101;
import 'package:terralinkapp/data/services/http/tasks_sbs_api_service.dart'
    as _i103;
import 'package:terralinkapp/data/services/local_notifications_service.dart'
    as _i10;
import 'package:terralinkapp/data/services/log_service.dart' as _i12;
import 'package:terralinkapp/data/services/timezone_service.dart' as _i26;
import 'package:terralinkapp/data/services/user_service.dart' as _i27;
import 'package:terralinkapp/data/services/websocket_service.dart' as _i69;
import 'package:terralinkapp/data/use_cases/auth/has_cached_account_use_case.dart'
    as _i85;
import 'package:terralinkapp/data/use_cases/auth/oauth_try_login_use_case.dart'
    as _i100;
import 'package:terralinkapp/data/use_cases/auth/refresh_auth_settings_use_case.dart'
    as _i89;
import 'package:terralinkapp/data/use_cases/auth/user_log_in_use_case.dart'
    as _i97;
import 'package:terralinkapp/data/use_cases/auth/user_log_out_use_case.dart'
    as _i114;
import 'package:terralinkapp/data/use_cases/business_cards/get_all_business_cards_use_case.dart'
    as _i44;
import 'package:terralinkapp/data/use_cases/business_cards/get_business_card_by_id_use_case.dart'
    as _i47;
import 'package:terralinkapp/data/use_cases/business_cards/get_vcard_from_business_card_use_case.dart'
    as _i54;
import 'package:terralinkapp/data/use_cases/business_cards/remove_business_card_by_id_use_case.dart'
    as _i59;
import 'package:terralinkapp/data/use_cases/business_cards/save_business_card_use_case.dart'
    as _i60;
import 'package:terralinkapp/data/use_cases/business_cards/save_vcard_file_from_business_card_use_case.dart'
    as _i61;
import 'package:terralinkapp/data/use_cases/business_cards/share_vcard_from_bussiness_card_use_case.dart'
    as _i67;
import 'package:terralinkapp/data/use_cases/chat/clear_chat_history_use_case.dart'
    as _i78;
import 'package:terralinkapp/data/use_cases/chat/get_all_messages_by_chat_id_use_case.dart'
    as _i79;
import 'package:terralinkapp/data/use_cases/chat/get_chat_info_by_id_use_case.dart'
    as _i82;
import 'package:terralinkapp/data/use_cases/chat/remove_message_by_id_use_case.dart'
    as _i91;
import 'package:terralinkapp/data/use_cases/chat/reset_new_messages_use_case.dart'
    as _i92;
import 'package:terralinkapp/data/use_cases/chat/send_chat_message_use_case.dart'
    as _i93;
import 'package:terralinkapp/data/use_cases/chat/send_form_chat_message_use_case.dart'
    as _i94;
import 'package:terralinkapp/data/use_cases/chat/send_menu_item_chat_message_use_case.dart'
    as _i95;
import 'package:terralinkapp/data/use_cases/chats/get_chat_feed_observable_use_case.dart'
    as _i80;
import 'package:terralinkapp/data/use_cases/chats/get_chat_feed_use_case.dart'
    as _i81;
import 'package:terralinkapp/data/use_cases/documents/add_app_documents_use_case.dart'
    as _i70;
import 'package:terralinkapp/data/use_cases/documents/edit_app_documents_use_case.dart'
    as _i41;
import 'package:terralinkapp/data/use_cases/documents/get_app_documents_use_case.dart'
    as _i45;
import 'package:terralinkapp/data/use_cases/documents/init_case_app_documents_use_case.dart'
    as _i9;
import 'package:terralinkapp/data/use_cases/documents/open_app_document_use_case.dart'
    as _i15;
import 'package:terralinkapp/data/use_cases/documents/remove_case_app_documents_use_case.dart'
    as _i58;
import 'package:terralinkapp/data/use_cases/documents/share_app_documents_use_case.dart'
    as _i23;
import 'package:terralinkapp/data/use_cases/feedback/send_feedback_use_case.dart'
    as _i19;
import 'package:terralinkapp/data/use_cases/news/clear_cache_news_use_case.dart'
    as _i4;
import 'package:terralinkapp/data/use_cases/news/get_all_news_use_case.dart'
    as _i83;
import 'package:terralinkapp/data/use_cases/profile/get_profile_avatar_use_case.dart'
    as _i84;
import 'package:terralinkapp/data/use_cases/profile/set_profile_avatar_use_case.dart'
    as _i96;
import 'package:terralinkapp/data/use_cases/settings/get_all_api_settings_use_case.dart'
    as _i43;
import 'package:terralinkapp/data/use_cases/settings/get_billing_notification_settings_use_case.dart'
    as _i46;
import 'package:terralinkapp/data/use_cases/settings/get_dark_mode_settings_use_case.dart'
    as _i48;
import 'package:terralinkapp/data/use_cases/settings/get_news_api_base_url_use_case.dart'
    as _i49;
import 'package:terralinkapp/data/use_cases/settings/get_region_settings_use_case.dart'
    as _i50;
import 'package:terralinkapp/data/use_cases/settings/get_system_mode_settings_use_case.dart'
    as _i51;
import 'package:terralinkapp/data/use_cases/settings/get_tasks_eas_api_base_url_use_case.dart'
    as _i52;
import 'package:terralinkapp/data/use_cases/settings/get_tasks_sbs_api_base_url_use_case.dart'
    as _i53;
import 'package:terralinkapp/data/use_cases/settings/get_ws_url_use_case.dart'
    as _i55;
import 'package:terralinkapp/data/use_cases/settings/set_all_api_settings_use_case.dart'
    as _i62;
import 'package:terralinkapp/data/use_cases/settings/set_billing_notification_settings_use_case.dart'
    as _i63;
import 'package:terralinkapp/data/use_cases/settings/set_dark_mode_settings_use_case.dart'
    as _i64;
import 'package:terralinkapp/data/use_cases/settings/set_region_settings_use_case.dart'
    as _i65;
import 'package:terralinkapp/data/use_cases/settings/set_system_mode_settings_use_case.dart'
    as _i66;
import 'package:terralinkapp/data/use_cases/tasks_eas/clear_cache_tasks_eas_use_case.dart'
    as _i115;
import 'package:terralinkapp/data/use_cases/tasks_eas/complete_cached_task_eas_use_case.dart'
    as _i117;
import 'package:terralinkapp/data/use_cases/tasks_eas/complete_task_eas_use_case.dart'
    as _i106;
import 'package:terralinkapp/data/use_cases/tasks_eas/get_tasks_eas_use_case.dart'
    as _i119;
import 'package:terralinkapp/data/use_cases/tasks_sbs/clear_cache_tasks_sbs_use_case.dart'
    as _i116;
import 'package:terralinkapp/data/use_cases/tasks_sbs/complete_cached_task_sbs_use_case.dart'
    as _i118;
import 'package:terralinkapp/data/use_cases/tasks_sbs/complete_task_sbs_use_case.dart'
    as _i107;
import 'package:terralinkapp/data/use_cases/tasks_sbs/get_tasks_sbs_use_case.dart'
    as _i120;
import 'package:terralinkapp/di/modules/app_module.dart' as _i127;
import 'package:terralinkapp/domain/repositories/app_documents_repository.dart'
    as _i32;
import 'package:terralinkapp/domain/repositories/avatar_storage_repository.dart'
    as _i72;
import 'package:terralinkapp/domain/repositories/business_card_repository.dart'
    as _i37;
import 'package:terralinkapp/domain/repositories/chats_repository.dart' as _i76;
import 'package:terralinkapp/domain/repositories/news_repository.dart' as _i5;
import 'package:terralinkapp/domain/repositories/scope_repository.dart' as _i17;
import 'package:terralinkapp/domain/repositories/settings_repository.dart'
    as _i21;
import 'package:terralinkapp/domain/repositories/tasks_eas_repository.dart'
    as _i109;
import 'package:terralinkapp/domain/repositories/tasks_sbs_repository.dart'
    as _i112;
import 'package:terralinkapp/presentation/navigation/app_navigation_service.dart'
    as _i34;
import 'package:terralinkapp/presentation/screens/api_settings/domain/cubits/api_settings_cubit.dart'
    as _i98;
import 'package:terralinkapp/presentation/screens/auth/auth_cubit.dart'
    as _i105;
import 'package:terralinkapp/presentation/screens/business_cards/list/business_cards_list_cubit.dart'
    as _i75;
import 'package:terralinkapp/presentation/screens/business_cards/show/business_card_show_cubit.dart'
    as _i74;
import 'package:terralinkapp/presentation/screens/chat/domain/cubits/chat_cubit.dart'
    as _i99;
import 'package:terralinkapp/presentation/screens/news/domain/cubits/news_cubit.dart'
    as _i87;
import 'package:terralinkapp/presentation/screens/profile_documents/domain/cubits/profile_documents_cubit.dart'
    as _i88;
import 'package:terralinkapp/presentation/screens/region/domain/cubits/region_cubit.dart'
    as _i90;
import 'package:terralinkapp/presentation/screens/settings/domain/cubits/settings_cubit.dart'
    as _i121;
import 'package:terralinkapp/presentation/screens/tasks/eas/domain/cubits/tasks_eas_cubit.dart'
    as _i122;
import 'package:terralinkapp/presentation/screens/tasks/sbs/domain/cubits/tasks_sbs_cubit.dart'
    as _i123;
import 'package:terralinkapp/presentation/screens/tasks/summary/domain/cubits/tasks_summary_cubit.dart'
    as _i25;
import 'package:terralinkapp/presentation/theme/domain/cubits/theme_cubit.dart'
    as _i68;

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
    gh.lazySingleton<_i3.AppParsingTagsService>(
      () => _i3.AppParsingTagsService(),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.factory<_i4.ClearCacheNewsUseCase>(
      () => _i4.ClearCacheNewsUseCaseImpl(gh<_i5.NewsRepository>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i6.Constants>(
      () => _i6.ProdConstantsImpl(),
      registerFor: {_prod},
    );
    gh.lazySingleton<_i6.Constants>(
      () => _i6.DevConstantsImpl(),
      registerFor: {_dev},
    );
    await gh.factoryAsync<_i7.Database>(
      () => appModule.provideDb,
      preResolve: true,
    );
    gh.factory<_i8.DioProvider>(() => _i8.DioProvider());
    gh.lazySingleton<_i9.InitAppDocumentsUseCase>(
      () => _i9.InitAppDocumentsInitUseCaseImpl(),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i10.LocalNotificationsService>(
      () => _i10.LocalNotificationsServiceImpl(),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i11.LocaleInterceptor>(() => _i11.LocaleInterceptor());
    gh.lazySingleton<_i12.LogService>(
      () => _i12.LogService(),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i13.MessagesDbDataSource>(
      () => _i13.MessagesDbDataSourceImpl(gh<_i7.Database>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i14.NavigatorKeyProvider>(
      () => _i14.NavigatorKeyProvider(),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i15.OpenAppDocumentUseCase>(
      () => _i15.OpenAppDocumentUseCaseImpl(),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i16.PushNotificationsProvider>(
      () => _i16.PushNotificationsProviderImpl(),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i17.ScopeRepository>(
      () => _i18.DiScopeRepository(),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i19.SendFeedbackUseCase>(
      () => _i19.SendFeedbackUseCaseImpl(),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i20.SettingsDataSource>(
      () => _i20.SettingsDataSourceImpl(),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i21.SettingsRepository>(
      () => _i22.SettingsSharedPreferencesRepository(
          dataSource: gh<_i20.SettingsDataSource>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i23.ShareAppDocumentsUseCase>(
      () => _i23.ShareAppDocumentsUseCaseImpl(),
      registerFor: {
        _dev,
        _prod,
      },
    );
    await gh.factoryAsync<_i24.SharedPreferences>(
      () => appModule.providePrefs,
      preResolve: true,
    );
    gh.lazySingleton<_i25.TasksSummaryCubit>(
      () => _i25.TasksSummaryCubit(),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i26.TimeZoneService>(
      () => _i26.TimeZoneServiceImpl(),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i27.UserService>(
      () => _i27.UserServiceImpl(),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i28.UuidGenerator>(
      () => _i28.UuidGeneratorImpl(),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i29.ApiHttpOverrides>(
      () => _i29.ApiHttpOverrides(gh<_i6.Constants>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i30.ApiSettingsProvider>(() => _i30.ApiSettingsProvider(
          gh<_i20.SettingsDataSource>(),
          gh<_i6.Constants>(),
        ));
    gh.lazySingleton<_i31.AppDocumentsDbDataSource>(
      () => _i31.AppDocumentsDbDataSourceImpl(gh<_i7.Database>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i32.AppDocumentsRepository>(
      () => _i33.AppDocumentsDbRepository(
          dataSource: gh<_i31.AppDocumentsDbDataSource>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i34.AppNavigationService>(
      () => _i34.AppNavigationService(gh<_i14.NavigatorKeyProvider>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i35.AuthInterceptor>(
        () => _i35.AuthInterceptor(gh<_i27.UserService>()));
    gh.lazySingleton<_i36.BusinessCardDbDataSource>(
      () => _i36.BusinessCardDbDataSourceImpl(gh<_i7.Database>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i37.BusinessCardRepository>(
      () => _i38.BusinessCardDbRepository(
          dataSource: gh<_i36.BusinessCardDbDataSource>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.factory<_i39.BusinessCardToVCardConverter>(
        () => _i39.BusinessCardToVCardConverter(gh<_i6.Constants>()));
    gh.lazySingleton<_i40.ChatsDbDataSource>(
      () => _i40.ChatsDbDataSourceImpl(gh<_i7.Database>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i41.EditAppDocumentUseCase>(
      () => _i41.EditAppDocumentUseCaseImpl(gh<_i32.AppDocumentsRepository>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i42.FileStorageDataSource>(
      () => _i42.ImageStorageDataSourceImpl(logService: gh<_i12.LogService>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.factory<_i43.GetAllApiSettingsUseCase>(
        () => _i43.GetAllApiSettingsUseCase(gh<_i30.ApiSettingsProvider>()));
    gh.lazySingleton<_i44.GetAllBusinessCardsUseCase>(
      () => _i44.GetAllBusinessCardsUseCaseImpl(
          gh<_i37.BusinessCardRepository>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i45.GetAppDocumentsUseCase>(
      () => _i45.GetAppDocumentsUseCaseImpl(gh<_i32.AppDocumentsRepository>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i46.GetBillingNotificationSettingsUseCase>(
      () => _i46.GetBillingNotificationSettingsUseCaseImpl(
          gh<_i20.SettingsDataSource>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i47.GetBusinessCardByIdUseCase>(
      () => _i47.GetBusinessCardByIdUseCaseImpl(
          gh<_i37.BusinessCardRepository>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i48.GetDarkModeSettingsUseCase>(
      () => _i48.GetDarkModeSettingsUseCaseImpl(gh<_i20.SettingsDataSource>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.factory<_i49.GetNewsApiBaseUrlUseCase>(
        () => _i49.GetNewsApiBaseUrlUseCase(gh<_i30.ApiSettingsProvider>()));
    gh.lazySingleton<_i50.GetRegionSettingsUseCase>(
      () => _i50.GetRegionSettingsUseCaseImpl(gh<_i20.SettingsDataSource>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i51.GetSystemModeSettingsUseCase>(
      () =>
          _i51.GetSystemModeSettingsUseCaseImpl(gh<_i20.SettingsDataSource>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.factory<_i52.GetTasksEASApiBaseUrlUseCase>(() =>
        _i52.GetTasksEASApiBaseUrlUseCase(gh<_i30.ApiSettingsProvider>()));
    gh.factory<_i53.GetTasksSBSApiBaseUrlUseCase>(() =>
        _i53.GetTasksSBSApiBaseUrlUseCase(gh<_i30.ApiSettingsProvider>()));
    gh.factory<_i54.GetVCardFromBusinessCard>(() =>
        _i54.GetVCardFromBusinessCard(gh<_i39.BusinessCardToVCardConverter>()));
    gh.factory<_i55.GetWsUrlUseCase>(
        () => _i55.GetWsUrlUseCase(gh<_i30.ApiSettingsProvider>()));
    gh.lazySingleton<_i56.NewsApiService>(
      () => _i56.NewsApiService(
        gh<_i8.DioProvider>(),
        gh<_i12.LogService>(),
        gh<_i49.GetNewsApiBaseUrlUseCase>(),
      ),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i57.NewsRemoteDataSource>(
      () => _i57.NewsRemoteDataSourceImpl(gh<_i56.NewsApiService>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i58.RemoveAppDocumentUseCase>(
      () =>
          _i58.RemoveAppDocumentUseCaseImpl(gh<_i32.AppDocumentsRepository>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i59.RemoveBusinessCardByIdUseCase>(
      () => _i59.RemoveBusinessCardByIdUseCaseImpl(
          gh<_i37.BusinessCardRepository>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i60.SaveBusinessCardUseCase>(
      () => _i60.SaveBusinessCardUseCaseImpl(gh<_i37.BusinessCardRepository>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.factory<_i61.SaveVCardFileFromBusinessCardUseCase>(() =>
        _i61.SaveVCardFileFromBusinessCardUseCase(
            gh<_i54.GetVCardFromBusinessCard>()));
    gh.factory<_i62.SetAllApiSettingsUseCase>(
        () => _i62.SetAllApiSettingsUseCase(gh<_i30.ApiSettingsProvider>()));
    gh.lazySingleton<_i63.SetBillingNotificationSettingsUseCase>(
      () => _i63.SetBillingNotificationSettingsUseCaseImpl(
        gh<_i20.SettingsDataSource>(),
        gh<_i10.LocalNotificationsService>(),
      ),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i64.SetDarkModeSettingsUseCase>(
      () => _i64.SetDarkModeSettingsUseCaseImpl(gh<_i20.SettingsDataSource>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i65.SetRegionSettingsUseCase>(
      () => _i65.SetRegionSettingsUseCaseImpl(gh<_i20.SettingsDataSource>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i66.SetSystemModeSettingsUseCase>(
      () =>
          _i66.SetSystemModeSettingsUseCaseImpl(gh<_i20.SettingsDataSource>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.factory<_i67.ShareVCardFromBusinessCardUseCase>(() =>
        _i67.ShareVCardFromBusinessCardUseCase(
            gh<_i61.SaveVCardFileFromBusinessCardUseCase>()));
    gh.lazySingleton<_i68.ThemeCubit>(
      () => _i68.ThemeCubit(
        gh<_i48.GetDarkModeSettingsUseCase>(),
        gh<_i64.SetDarkModeSettingsUseCase>(),
        gh<_i51.GetSystemModeSettingsUseCase>(),
        gh<_i66.SetSystemModeSettingsUseCase>(),
      ),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i69.WebsocketService>(
      () => _i69.WebsocketServiceImpl(
        gh<_i27.UserService>(),
        gh<_i16.PushNotificationsProvider>(),
        gh<_i12.LogService>(),
        gh<_i55.GetWsUrlUseCase>(),
      ),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i70.AddAppDocumentsUseCase>(
      () =>
          _i70.AddAppDocumentsAddUseCaseImpl(gh<_i32.AppDocumentsRepository>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i71.AuthProvider>(
      () => _i71.AuthProvider(
        gh<_i6.Constants>(),
        gh<_i14.NavigatorKeyProvider>(),
        gh<_i43.GetAllApiSettingsUseCase>(),
      ),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i72.AvatarStorageRepository>(
      () => _i73.AvatarStorageRepositoryImpl(
          dataSource: gh<_i42.FileStorageDataSource>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.factoryParam<_i74.BusinessCardShowCubit, int, dynamic>((
      id,
      _,
    ) =>
        _i74.BusinessCardShowCubit(
          id,
          gh<_i47.GetBusinessCardByIdUseCase>(),
          gh<_i12.LogService>(),
          gh<_i67.ShareVCardFromBusinessCardUseCase>(),
          gh<_i54.GetVCardFromBusinessCard>(),
        ));
    gh.factory<_i75.BusinessCardsListCubit>(() => _i75.BusinessCardsListCubit(
          gh<_i44.GetAllBusinessCardsUseCase>(),
          gh<_i59.RemoveBusinessCardByIdUseCase>(),
          gh<_i67.ShareVCardFromBusinessCardUseCase>(),
          gh<_i12.LogService>(),
        ));
    gh.lazySingleton<_i76.ChatsRepository>(
      () => _i77.ChatsRemoteRepository(
        gh<_i69.WebsocketService>(),
        gh<_i40.ChatsDbDataSource>(),
        gh<_i28.UuidGenerator>(),
        gh<_i27.UserService>(),
        gh<_i13.MessagesDbDataSource>(),
        gh<_i12.LogService>(),
      ),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.factory<_i78.ClearChatHistoryUseCase>(
        () => _i78.ClearChatHistoryUseCase(gh<_i76.ChatsRepository>()));
    gh.lazySingleton<_i79.GetAllMessagesByChatIdUseCase>(
      () => _i79.GetAllMessagesByChatIdUseCaseImpl(gh<_i76.ChatsRepository>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i80.GetChatFeedObservableUseCase>(
      () => _i80.GetChatFeedObservableUseCaseImpl(gh<_i76.ChatsRepository>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i81.GetChatFeedUseCase>(
      () => _i81.GetChatFeedUseCaseImpl(gh<_i76.ChatsRepository>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i82.GetChatInfoByIdUseCase>(
      () => _i82.GetChatInfoByIdUseCaseImpl(gh<_i76.ChatsRepository>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.factory<_i83.GetNewsUseCase>(
      () => _i83.GetNewsUseCaseImpl(
        gh<_i5.NewsRepository>(),
        gh<_i50.GetRegionSettingsUseCase>(),
      ),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i84.GetProfileAvatarUseCase>(
      () => _i84.GetProfileAvatarUseCaseImpl(
        settingsRepository: gh<_i21.SettingsRepository>(),
        avatarStorageRepository: gh<_i72.AvatarStorageRepository>(),
      ),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.factory<_i85.HasCachedAccountUseCase>(
        () => _i85.HasCachedAccountUseCase(gh<_i71.AuthProvider>()));
    gh.lazySingleton<_i86.NewsCachedDataSource>(
      () => _i86.NewsCachedDataSourceImpl(
          newsRepository: gh<_i57.NewsRemoteDataSource>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.factory<_i87.NewsCubit>(() => _i87.NewsCubit(
          gh<_i83.GetNewsUseCase>(),
          gh<_i4.ClearCacheNewsUseCase>(),
          gh<_i12.LogService>(),
        ));
    gh.factory<_i88.ProfileDocumentsCubit>(() => _i88.ProfileDocumentsCubit(
          gh<_i9.InitAppDocumentsUseCase>(),
          gh<_i45.GetAppDocumentsUseCase>(),
          gh<_i70.AddAppDocumentsUseCase>(),
          gh<_i58.RemoveAppDocumentUseCase>(),
          gh<_i41.EditAppDocumentUseCase>(),
          gh<_i23.ShareAppDocumentsUseCase>(),
          gh<_i15.OpenAppDocumentUseCase>(),
        ));
    gh.factory<_i89.RefreshAuthSettingsUseCase>(
        () => _i89.RefreshAuthSettingsUseCase(gh<_i71.AuthProvider>()));
    gh.lazySingleton<_i90.RegionCubit>(
      () => _i90.RegionCubit(
        gh<_i50.GetRegionSettingsUseCase>(),
        gh<_i65.SetRegionSettingsUseCase>(),
      ),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i91.RemoveMessageByIdUseCase>(
      () => _i91.RemoveMessageByIdUseCaseImpl(gh<_i76.ChatsRepository>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i92.ResetNewMessagesUseCase>(
      () => _i92.ResetNewMessagesUseCaseImpl(gh<_i76.ChatsRepository>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i93.SendChatMessageUseCase>(
      () => _i93.SendChatMessageUseCaseImpl(gh<_i76.ChatsRepository>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i94.SendFormChatMessageUseCase>(
      () => _i94.SendFormChatMessageUseCaseImpl(gh<_i76.ChatsRepository>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i95.SendMenuItemChatMessageUseCase>(
      () => _i95.SendMenuItemChatMessageUseCaseImpl(gh<_i76.ChatsRepository>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i96.SetProfileAvatarUseCase>(
      () => _i96.SetProfileAvatarUseCaseImpl(
        settingsRepository: gh<_i21.SettingsRepository>(),
        avatarStorageRepository: gh<_i72.AvatarStorageRepository>(),
      ),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.factory<_i97.UserLogInUseCase>(
      () => _i97.UserLogInUseCaseImpl(
        userService: gh<_i27.UserService>(),
        chatsRepository: gh<_i76.ChatsRepository>(),
        settingsRepository: gh<_i21.SettingsRepository>(),
        businessCardRepository: gh<_i37.BusinessCardRepository>(),
        appDocumentsRepository: gh<_i32.AppDocumentsRepository>(),
        scopeRepository: gh<_i17.ScopeRepository>(),
      ),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.factory<_i98.ApiSettingsCubit>(() => _i98.ApiSettingsCubit(
          gh<_i62.SetAllApiSettingsUseCase>(),
          gh<_i43.GetAllApiSettingsUseCase>(),
          gh<_i89.RefreshAuthSettingsUseCase>(),
          gh<_i78.ClearChatHistoryUseCase>(),
        ));
    gh.factory<_i99.ChatCubit>(() => _i99.ChatCubit(
          gh<_i80.GetChatFeedObservableUseCase>(),
          gh<_i81.GetChatFeedUseCase>(),
          gh<_i82.GetChatInfoByIdUseCase>(),
          gh<_i79.GetAllMessagesByChatIdUseCase>(),
          gh<_i76.ChatsRepository>(),
          gh<_i27.UserService>(),
          gh<_i93.SendChatMessageUseCase>(),
          gh<_i95.SendMenuItemChatMessageUseCase>(),
          gh<_i92.ResetNewMessagesUseCase>(),
          gh<_i91.RemoveMessageByIdUseCase>(),
          gh<_i94.SendFormChatMessageUseCase>(),
          gh<_i12.LogService>(),
        ));
    gh.factory<_i100.OAuthTryLoginUseCase>(
      () => _i100.OAuthTryLoginUseCaseImpl(
        gh<_i71.AuthProvider>(),
        gh<_i97.UserLogInUseCase>(),
        gh<_i12.LogService>(),
      ),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i101.TasksEASApiService>(
      () => _i101.TasksEASApiService(
        gh<_i52.GetTasksEASApiBaseUrlUseCase>(),
        gh<_i8.DioProvider>(),
        gh<_i12.LogService>(),
        gh<_i11.LocaleInterceptor>(),
        gh<_i35.AuthInterceptor>(),
        gh<_i100.OAuthTryLoginUseCase>(),
        gh<_i14.NavigatorKeyProvider>(),
      ),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i102.TasksEASRemoteDataSource>(
      () => _i102.TasksEASRemoteDataSourceImpl(gh<_i101.TasksEASApiService>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i103.TasksSBSApiService>(
      () => _i103.TasksSBSApiService(
        gh<_i53.GetTasksSBSApiBaseUrlUseCase>(),
        gh<_i8.DioProvider>(),
        gh<_i12.LogService>(),
        gh<_i11.LocaleInterceptor>(),
        gh<_i35.AuthInterceptor>(),
        gh<_i100.OAuthTryLoginUseCase>(),
        gh<_i14.NavigatorKeyProvider>(),
      ),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i104.TasksSBSRemoteDataSource>(
      () => _i104.TasksSBSRemoteDataSourceImpl(gh<_i103.TasksSBSApiService>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.factory<_i105.AuthCubit>(() => _i105.AuthCubit(
          gh<_i16.PushNotificationsProvider>(),
          gh<_i85.HasCachedAccountUseCase>(),
          gh<_i100.OAuthTryLoginUseCase>(),
          gh<_i12.LogService>(),
          gh<_i50.GetRegionSettingsUseCase>(),
        ));
    gh.lazySingleton<_i106.CompleteTaskEASUseCase>(
      () => _i106.CompleteTaskEASUseCaseImpl(
          gh<_i102.TasksEASRemoteDataSource>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i107.CompleteTaskSBSUseCase>(
      () => _i107.CompleteTaskSBSUseCaseImpl(
          gh<_i104.TasksSBSRemoteDataSource>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i108.TasksEASCachedDataSource>(
      () => _i108.TasksEASCachedDataSourceImpl(
          gh<_i102.TasksEASRemoteDataSource>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i109.TasksEASRepository>(
      () => _i110.TasksEASCachedRepository(
          dataSource: gh<_i108.TasksEASCachedDataSource>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i111.TasksSBSCachedDataSource>(
      () => _i111.TasksSBSCachedDataSourceImpl(
          gh<_i104.TasksSBSRemoteDataSource>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i112.TasksSBSRepository>(
      () => _i113.TasksSBSCachedRepository(
          dataSource: gh<_i111.TasksSBSCachedDataSource>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.factory<_i114.UserLogOutUseCase>(
      () => _i114.UserLogOutUseCaseImpl(
        gh<_i76.ChatsRepository>(),
        gh<_i108.TasksEASCachedDataSource>(),
        gh<_i27.UserService>(),
        gh<_i71.AuthProvider>(),
        gh<_i17.ScopeRepository>(),
      ),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i115.ClearCacheTasksEASUseCase>(
      () => _i115.ClearCacheTasksEASUseCaseImpl(
          gh<_i108.TasksEASCachedDataSource>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i116.ClearCacheTasksSBSUseCase>(
      () => _i116.ClearCacheTasksSBSUseCaseImpl(
          gh<_i111.TasksSBSCachedDataSource>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i117.CompleteCachedTaskEASUseCase>(
      () => _i117.CompleteCachedTaskEASUseCaseImpl(
          gh<_i109.TasksEASRepository>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i118.CompleteCachedTaskSBSUseCase>(
      () => _i118.CompleteCachedTaskSBSUseCaseImpl(
          gh<_i112.TasksSBSRepository>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i119.GetTasksEASUseCase>(
      () => _i119.GetTasksEASUseCaseImpl(gh<_i108.TasksEASCachedDataSource>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i120.GetTasksSBSUseCase>(
      () => _i120.GetTasksSBSUseCaseImpl(gh<_i111.TasksSBSCachedDataSource>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.factory<_i121.SettingsCubit>(() => _i121.SettingsCubit(
          gh<_i46.GetBillingNotificationSettingsUseCase>(),
          gh<_i48.GetDarkModeSettingsUseCase>(),
          gh<_i51.GetSystemModeSettingsUseCase>(),
          gh<_i50.GetRegionSettingsUseCase>(),
          gh<_i114.UserLogOutUseCase>(),
          gh<_i68.ThemeCubit>(),
          gh<_i90.RegionCubit>(),
        ));
    gh.factory<_i122.TasksEASCubit>(() => _i122.TasksEASCubit(
          gh<_i119.GetTasksEASUseCase>(),
          gh<_i117.CompleteCachedTaskEASUseCase>(),
          gh<_i106.CompleteTaskEASUseCase>(),
          gh<_i115.ClearCacheTasksEASUseCase>(),
          gh<_i12.LogService>(),
        ));
    gh.factory<_i123.TasksSBSCubit>(() => _i123.TasksSBSCubit(
          gh<_i120.GetTasksSBSUseCase>(),
          gh<_i116.ClearCacheTasksSBSUseCase>(),
          gh<_i118.CompleteCachedTaskSBSUseCase>(),
          gh<_i107.CompleteTaskSBSUseCase>(),
          gh<_i12.LogService>(),
        ));
    return this;
  }

// initializes the registration of mockScope-scope dependencies inside of GetIt
  _i1.GetIt initMockScopeScope({_i1.ScopeDisposeFunc? dispose}) {
    return _i2.GetItHelper(this).initScope(
      'mockScope',
      dispose: dispose,
      init: (_i2.GetItHelper gh) {
        gh.lazySingleton<_i76.ChatsRepository>(
          () => _i124.ChatsMockRepository(
            gh<_i28.UuidGenerator>(),
            gh<_i27.UserService>(),
          ),
          registerFor: {
            _dev,
            _prod,
          },
        );
        gh.lazySingleton<_i5.NewsRepository>(
          () => _i125.NewsMockRepository(constants: gh<_i6.Constants>()),
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
        gh.factory<_i5.NewsRepository>(
          () => _i126.NewsCachedRepository(
            dataSource: gh<_i86.NewsCachedDataSource>(),
            constants: gh<_i6.Constants>(),
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

class _$AppModule extends _i127.AppModule {}
