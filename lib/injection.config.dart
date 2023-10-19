// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:shared_preferences/shared_preferences.dart' as _i24;
import 'package:sqflite/sqflite.dart' as _i7;
import 'package:terralinkapp/common/constants.dart' as _i6;
import 'package:terralinkapp/data/data_sources/cache/news_cached_data_source.dart'
    as _i84;
import 'package:terralinkapp/data/data_sources/cache/tasks_cached_data_source.dart'
    as _i103;
import 'package:terralinkapp/data/data_sources/local/database/app_documents_db_data_source.dart'
    as _i30;
import 'package:terralinkapp/data/data_sources/local/database/business_card_db_data_source.dart'
    as _i35;
import 'package:terralinkapp/data/data_sources/local/database/chats_db_data_source.dart'
    as _i39;
import 'package:terralinkapp/data/data_sources/local/database/messages_db_data_source.dart'
    as _i13;
import 'package:terralinkapp/data/data_sources/local/file/file_storage_data_source.dart'
    as _i41;
import 'package:terralinkapp/data/data_sources/local/shared_preferences/settings_data_source.dart'
    as _i20;
import 'package:terralinkapp/data/data_sources/remote/news_remote_data_source.dart'
    as _i55;
import 'package:terralinkapp/data/data_sources/remote/tasks_remote_data_source.dart'
    as _i100;
import 'package:terralinkapp/data/providers/api_settings_provider.dart' as _i29;
import 'package:terralinkapp/data/providers/auth_provider.dart' as _i69;
import 'package:terralinkapp/data/providers/dio_provider.dart' as _i8;
import 'package:terralinkapp/data/providers/navigator_key_provider.dart'
    as _i14;
import 'package:terralinkapp/data/providers/push_notifications_provider.dart'
    as _i16;
import 'package:terralinkapp/data/providers/uuid_generator.dart' as _i27;
import 'package:terralinkapp/data/repositories/cache/news_cached_repository.dart'
    as _i114;
import 'package:terralinkapp/data/repositories/cache/tasks_cached_repository.dart'
    as _i105;
import 'package:terralinkapp/data/repositories/di_scope_repository.dart'
    as _i18;
import 'package:terralinkapp/data/repositories/local/database/app_documents_db_repository.dart'
    as _i32;
import 'package:terralinkapp/data/repositories/local/database/business_card_db_repository.dart'
    as _i37;
import 'package:terralinkapp/data/repositories/local/file/avatar_storage_repository_impl.dart'
    as _i71;
import 'package:terralinkapp/data/repositories/local/shared_preferences/settings_shared_preferences_repository.dart'
    as _i22;
import 'package:terralinkapp/data/repositories/mock/chat_mock_repository.dart'
    as _i112;
import 'package:terralinkapp/data/repositories/mock/news_mock_repository.dart'
    as _i113;
import 'package:terralinkapp/data/repositories/remote/chats_remote_repository.dart'
    as _i75;
import 'package:terralinkapp/data/services/app_parsing_tags_service.dart'
    as _i3;
import 'package:terralinkapp/data/services/converters/businesscard_to_vcard_converter.dart'
    as _i38;
import 'package:terralinkapp/data/services/http/interceptors/auth_interceptor.dart'
    as _i34;
import 'package:terralinkapp/data/services/http/interceptors/locale_interceptor.dart'
    as _i11;
import 'package:terralinkapp/data/services/http/news_api_service.dart' as _i54;
import 'package:terralinkapp/data/services/http/overrides/api_http_overrides.dart'
    as _i28;
import 'package:terralinkapp/data/services/http/tasks_api_service.dart' as _i99;
import 'package:terralinkapp/data/services/local_notifications_service.dart'
    as _i10;
import 'package:terralinkapp/data/services/log_service.dart' as _i12;
import 'package:terralinkapp/data/services/timezone_service.dart' as _i25;
import 'package:terralinkapp/data/services/user_service.dart' as _i26;
import 'package:terralinkapp/data/services/websocket_service.dart' as _i67;
import 'package:terralinkapp/data/use_cases/auth/has_cached_account_use_case.dart'
    as _i83;
import 'package:terralinkapp/data/use_cases/auth/oauth_try_login_use_case.dart'
    as _i98;
import 'package:terralinkapp/data/use_cases/auth/refresh_auth_settings_use_case.dart'
    as _i87;
import 'package:terralinkapp/data/use_cases/auth/user_log_in_use_case.dart'
    as _i95;
import 'package:terralinkapp/data/use_cases/auth/user_log_out_use_case.dart'
    as _i106;
import 'package:terralinkapp/data/use_cases/business_cards/get_all_business_cards_use_case.dart'
    as _i43;
import 'package:terralinkapp/data/use_cases/business_cards/get_business_card_by_id_use_case.dart'
    as _i46;
import 'package:terralinkapp/data/use_cases/business_cards/get_vcard_from_business_card_use_case.dart'
    as _i52;
import 'package:terralinkapp/data/use_cases/business_cards/remove_business_card_by_id_use_case.dart'
    as _i57;
import 'package:terralinkapp/data/use_cases/business_cards/save_business_card_use_case.dart'
    as _i58;
import 'package:terralinkapp/data/use_cases/business_cards/save_vcard_file_from_business_card_use_case.dart'
    as _i59;
import 'package:terralinkapp/data/use_cases/business_cards/share_vcard_from_bussiness_card_use_case.dart'
    as _i65;
import 'package:terralinkapp/data/use_cases/chat/clear_chat_history_use_case.dart'
    as _i76;
import 'package:terralinkapp/data/use_cases/chat/get_all_messages_by_chat_id_use_case.dart'
    as _i77;
import 'package:terralinkapp/data/use_cases/chat/get_chat_info_by_id_use_case.dart'
    as _i80;
import 'package:terralinkapp/data/use_cases/chat/remove_message_by_id_use_case.dart'
    as _i89;
import 'package:terralinkapp/data/use_cases/chat/reset_new_messages_use_case.dart'
    as _i90;
import 'package:terralinkapp/data/use_cases/chat/send_chat_message_use_case.dart'
    as _i91;
import 'package:terralinkapp/data/use_cases/chat/send_form_chat_message_use_case.dart'
    as _i92;
import 'package:terralinkapp/data/use_cases/chat/send_menu_item_chat_message_use_case.dart'
    as _i93;
import 'package:terralinkapp/data/use_cases/chats/get_chat_feed_observable_use_case.dart'
    as _i78;
import 'package:terralinkapp/data/use_cases/chats/get_chat_feed_use_case.dart'
    as _i79;
import 'package:terralinkapp/data/use_cases/documents/add_app_documents_use_case.dart'
    as _i68;
import 'package:terralinkapp/data/use_cases/documents/edit_app_documents_use_case.dart'
    as _i40;
import 'package:terralinkapp/data/use_cases/documents/get_app_documents_use_case.dart'
    as _i44;
import 'package:terralinkapp/data/use_cases/documents/init_case_app_documents_use_case.dart'
    as _i9;
import 'package:terralinkapp/data/use_cases/documents/open_app_document_use_case.dart'
    as _i15;
import 'package:terralinkapp/data/use_cases/documents/remove_case_app_documents_use_case.dart'
    as _i56;
import 'package:terralinkapp/data/use_cases/documents/share_app_documents_use_case.dart'
    as _i23;
import 'package:terralinkapp/data/use_cases/feedback/send_feedback_use_case.dart'
    as _i19;
import 'package:terralinkapp/data/use_cases/news/clear_cache_news_use_case.dart'
    as _i4;
import 'package:terralinkapp/data/use_cases/news/get_all_news_use_case.dart'
    as _i81;
import 'package:terralinkapp/data/use_cases/profile/get_profile_avatar_use_case.dart'
    as _i82;
import 'package:terralinkapp/data/use_cases/profile/set_profile_avatar_use_case.dart'
    as _i94;
import 'package:terralinkapp/data/use_cases/settings/get_all_api_settings_use_case.dart'
    as _i42;
import 'package:terralinkapp/data/use_cases/settings/get_billing_notification_settings_use_case.dart'
    as _i45;
import 'package:terralinkapp/data/use_cases/settings/get_dark_mode_settings_use_case.dart'
    as _i47;
import 'package:terralinkapp/data/use_cases/settings/get_news_api_base_url_use_case.dart'
    as _i48;
import 'package:terralinkapp/data/use_cases/settings/get_region_settings_use_case.dart'
    as _i49;
import 'package:terralinkapp/data/use_cases/settings/get_system_mode_settings_use_case.dart'
    as _i50;
import 'package:terralinkapp/data/use_cases/settings/get_tasks_api_base_url_use_case.dart'
    as _i51;
import 'package:terralinkapp/data/use_cases/settings/get_ws_url_use_case.dart'
    as _i53;
import 'package:terralinkapp/data/use_cases/settings/set_all_api_settings_use_case.dart'
    as _i60;
import 'package:terralinkapp/data/use_cases/settings/set_billing_notification_settings_use_case.dart'
    as _i61;
import 'package:terralinkapp/data/use_cases/settings/set_dark_mode_settings_use_case.dart'
    as _i62;
import 'package:terralinkapp/data/use_cases/settings/set_region_settings_use_case.dart'
    as _i63;
import 'package:terralinkapp/data/use_cases/settings/set_system_mode_settings_use_case.dart'
    as _i64;
import 'package:terralinkapp/data/use_cases/tasks/clear_cache_tasks_use_case.dart'
    as _i107;
import 'package:terralinkapp/data/use_cases/tasks/get_all_tasks_use_case.dart'
    as _i108;
import 'package:terralinkapp/data/use_cases/tasks/set_cached_task_status_use_case.dart'
    as _i109;
import 'package:terralinkapp/data/use_cases/tasks/set_task_status_use_case.dart'
    as _i102;
import 'package:terralinkapp/di/modules/app_module.dart' as _i115;
import 'package:terralinkapp/domain/repositories/app_documents_repository.dart'
    as _i31;
import 'package:terralinkapp/domain/repositories/avatar_storage_repository.dart'
    as _i70;
import 'package:terralinkapp/domain/repositories/business_card_repository.dart'
    as _i36;
import 'package:terralinkapp/domain/repositories/chats_repository.dart' as _i74;
import 'package:terralinkapp/domain/repositories/news_repository.dart' as _i5;
import 'package:terralinkapp/domain/repositories/scope_repository.dart' as _i17;
import 'package:terralinkapp/domain/repositories/settings_repository.dart'
    as _i21;
import 'package:terralinkapp/domain/repositories/tasks_repository.dart'
    as _i104;
import 'package:terralinkapp/presentation/navigation/app_navigation_service.dart'
    as _i33;
import 'package:terralinkapp/presentation/screens/api_settings/domain/cubits/api_settings_cubit.dart'
    as _i96;
import 'package:terralinkapp/presentation/screens/auth/auth_cubit.dart'
    as _i101;
import 'package:terralinkapp/presentation/screens/business_cards/list/business_cards_list_cubit.dart'
    as _i73;
import 'package:terralinkapp/presentation/screens/business_cards/show/business_card_show_cubit.dart'
    as _i72;
import 'package:terralinkapp/presentation/screens/chat/domain/cubits/chat_cubit.dart'
    as _i97;
import 'package:terralinkapp/presentation/screens/news/domain/cubits/news_cubit.dart'
    as _i85;
import 'package:terralinkapp/presentation/screens/profile_documents/domain/cubits/profile_documents_cubit.dart'
    as _i86;
import 'package:terralinkapp/presentation/screens/region/domain/cubits/region_cubit.dart'
    as _i88;
import 'package:terralinkapp/presentation/screens/settings/domain/cubits/settings_cubit.dart'
    as _i110;
import 'package:terralinkapp/presentation/screens/tasks/domain/cubits/tasks_cubit.dart'
    as _i111;
import 'package:terralinkapp/presentation/theme/domain/cubits/theme_cubit.dart'
    as _i66;

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
    gh.lazySingleton<_i25.TimeZoneService>(
      () => _i25.TimeZoneServiceImpl(),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i26.UserService>(
      () => _i26.UserServiceImpl(),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i27.UuidGenerator>(
      () => _i27.UuidGeneratorImpl(),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i28.ApiHttpOverrides>(
      () => _i28.ApiHttpOverrides(gh<_i6.Constants>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i29.ApiSettingsProvider>(() => _i29.ApiSettingsProvider(
          gh<_i20.SettingsDataSource>(),
          gh<_i6.Constants>(),
        ));
    gh.lazySingleton<_i30.AppDocumentsDbDataSource>(
      () => _i30.AppDocumentsDbDataSourceImpl(gh<_i7.Database>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i31.AppDocumentsRepository>(
      () => _i32.AppDocumentsDbRepository(
          dataSource: gh<_i30.AppDocumentsDbDataSource>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i33.AppNavigationService>(
      () => _i33.AppNavigationService(gh<_i14.NavigatorKeyProvider>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i34.AuthInterceptor>(
        () => _i34.AuthInterceptor(gh<_i26.UserService>()));
    gh.lazySingleton<_i35.BusinessCardDbDataSource>(
      () => _i35.BusinessCardDbDataSourceImpl(gh<_i7.Database>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i36.BusinessCardRepository>(
      () => _i37.BusinessCardDbRepository(
          dataSource: gh<_i35.BusinessCardDbDataSource>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.factory<_i38.BusinessCardToVCardConverter>(
        () => _i38.BusinessCardToVCardConverter(gh<_i6.Constants>()));
    gh.lazySingleton<_i39.ChatsDbDataSource>(
      () => _i39.ChatsDbDataSourceImpl(gh<_i7.Database>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i40.EditAppDocumentUseCase>(
      () => _i40.EditAppDocumentUseCaseImpl(gh<_i31.AppDocumentsRepository>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i41.FileStorageDataSource>(
      () => _i41.ImageStorageDataSourceImpl(logService: gh<_i12.LogService>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.factory<_i42.GetAllApiSettingsUseCase>(
        () => _i42.GetAllApiSettingsUseCase(gh<_i29.ApiSettingsProvider>()));
    gh.lazySingleton<_i43.GetAllBusinessCardsUseCase>(
      () => _i43.GetAllBusinessCardsUseCaseImpl(
          gh<_i36.BusinessCardRepository>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i44.GetAppDocumentsUseCase>(
      () => _i44.GetAppDocumentsUseCaseImpl(gh<_i31.AppDocumentsRepository>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i45.GetBillingNotificationSettingsUseCase>(
      () => _i45.GetBillingNotificationSettingsUseCaseImpl(
          gh<_i20.SettingsDataSource>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i46.GetBusinessCardByIdUseCase>(
      () => _i46.GetBusinessCardByIdUseCaseImpl(
          gh<_i36.BusinessCardRepository>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i47.GetDarkModeSettingsUseCase>(
      () => _i47.GetDarkModeSettingsUseCaseImpl(gh<_i20.SettingsDataSource>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.factory<_i48.GetNewsApiBaseUrlUseCase>(
        () => _i48.GetNewsApiBaseUrlUseCase(gh<_i29.ApiSettingsProvider>()));
    gh.lazySingleton<_i49.GetRegionSettingsUseCase>(
      () => _i49.GetRegionSettingsUseCaseImpl(gh<_i20.SettingsDataSource>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i50.GetSystemModeSettingsUseCase>(
      () =>
          _i50.GetSystemModeSettingsUseCaseImpl(gh<_i20.SettingsDataSource>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.factory<_i51.GetTasksApiBaseUrlUseCase>(
        () => _i51.GetTasksApiBaseUrlUseCase(gh<_i29.ApiSettingsProvider>()));
    gh.factory<_i52.GetVCardFromBusinessCard>(() =>
        _i52.GetVCardFromBusinessCard(gh<_i38.BusinessCardToVCardConverter>()));
    gh.factory<_i53.GetWsUrlUseCase>(
        () => _i53.GetWsUrlUseCase(gh<_i29.ApiSettingsProvider>()));
    gh.lazySingleton<_i54.NewsApiService>(
      () => _i54.NewsApiService(
        gh<_i8.DioProvider>(),
        gh<_i12.LogService>(),
        gh<_i48.GetNewsApiBaseUrlUseCase>(),
      ),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i55.NewsRemoteDataSource>(
      () => _i55.NewsRemoteDataSourceImpl(gh<_i54.NewsApiService>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i56.RemoveAppDocumentUseCase>(
      () =>
          _i56.RemoveAppDocumentUseCaseImpl(gh<_i31.AppDocumentsRepository>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i57.RemoveBusinessCardByIdUseCase>(
      () => _i57.RemoveBusinessCardByIdUseCaseImpl(
          gh<_i36.BusinessCardRepository>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i58.SaveBusinessCardUseCase>(
      () => _i58.SaveBusinessCardUseCaseImpl(gh<_i36.BusinessCardRepository>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.factory<_i59.SaveVCardFileFromBusinessCardUseCase>(() =>
        _i59.SaveVCardFileFromBusinessCardUseCase(
            gh<_i52.GetVCardFromBusinessCard>()));
    gh.factory<_i60.SetAllApiSettingsUseCase>(
        () => _i60.SetAllApiSettingsUseCase(gh<_i29.ApiSettingsProvider>()));
    gh.lazySingleton<_i61.SetBillingNotificationSettingsUseCase>(
      () => _i61.SetBillingNotificationSettingsUseCaseImpl(
        gh<_i20.SettingsDataSource>(),
        gh<_i10.LocalNotificationsService>(),
      ),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i62.SetDarkModeSettingsUseCase>(
      () => _i62.SetDarkModeSettingsUseCaseImpl(gh<_i20.SettingsDataSource>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i63.SetRegionSettingsUseCase>(
      () => _i63.SetRegionSettingsUseCaseImpl(gh<_i20.SettingsDataSource>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i64.SetSystemModeSettingsUseCase>(
      () =>
          _i64.SetSystemModeSettingsUseCaseImpl(gh<_i20.SettingsDataSource>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.factory<_i65.ShareVCardFromBusinessCardUseCase>(() =>
        _i65.ShareVCardFromBusinessCardUseCase(
            gh<_i59.SaveVCardFileFromBusinessCardUseCase>()));
    gh.lazySingleton<_i66.ThemeCubit>(
      () => _i66.ThemeCubit(
        gh<_i47.GetDarkModeSettingsUseCase>(),
        gh<_i62.SetDarkModeSettingsUseCase>(),
        gh<_i50.GetSystemModeSettingsUseCase>(),
        gh<_i64.SetSystemModeSettingsUseCase>(),
      ),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i67.WebsocketService>(
      () => _i67.WebsocketServiceImpl(
        gh<_i26.UserService>(),
        gh<_i16.PushNotificationsProvider>(),
        gh<_i12.LogService>(),
        gh<_i53.GetWsUrlUseCase>(),
      ),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i68.AddAppDocumentsUseCase>(
      () =>
          _i68.AddAppDocumentsAddUseCaseImpl(gh<_i31.AppDocumentsRepository>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i69.AuthProvider>(
      () => _i69.AuthProvider(
        gh<_i6.Constants>(),
        gh<_i14.NavigatorKeyProvider>(),
        gh<_i42.GetAllApiSettingsUseCase>(),
      ),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i70.AvatarStorageRepository>(
      () => _i71.AvatarStorageRepositoryImpl(
          dataSource: gh<_i41.FileStorageDataSource>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.factoryParam<_i72.BusinessCardShowCubit, int, dynamic>((
      id,
      _,
    ) =>
        _i72.BusinessCardShowCubit(
          id,
          gh<_i46.GetBusinessCardByIdUseCase>(),
          gh<_i12.LogService>(),
          gh<_i65.ShareVCardFromBusinessCardUseCase>(),
          gh<_i52.GetVCardFromBusinessCard>(),
        ));
    gh.factory<_i73.BusinessCardsListCubit>(() => _i73.BusinessCardsListCubit(
          gh<_i43.GetAllBusinessCardsUseCase>(),
          gh<_i57.RemoveBusinessCardByIdUseCase>(),
          gh<_i65.ShareVCardFromBusinessCardUseCase>(),
          gh<_i12.LogService>(),
        ));
    gh.lazySingleton<_i74.ChatsRepository>(
      () => _i75.ChatsRemoteRepository(
        gh<_i67.WebsocketService>(),
        gh<_i39.ChatsDbDataSource>(),
        gh<_i27.UuidGenerator>(),
        gh<_i26.UserService>(),
        gh<_i13.MessagesDbDataSource>(),
        gh<_i12.LogService>(),
      ),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.factory<_i76.ClearChatHistoryUseCase>(
        () => _i76.ClearChatHistoryUseCase(gh<_i74.ChatsRepository>()));
    gh.lazySingleton<_i77.GetAllMessagesByChatIdUseCase>(
      () => _i77.GetAllMessagesByChatIdUseCaseImpl(gh<_i74.ChatsRepository>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i78.GetChatFeedObservableUseCase>(
      () => _i78.GetChatFeedObservableUseCaseImpl(gh<_i74.ChatsRepository>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i79.GetChatFeedUseCase>(
      () => _i79.GetChatFeedUseCaseImpl(gh<_i74.ChatsRepository>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i80.GetChatInfoByIdUseCase>(
      () => _i80.GetChatInfoByIdUseCaseImpl(gh<_i74.ChatsRepository>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.factory<_i81.GetNewsUseCase>(
      () => _i81.GetNewsUseCaseImpl(
        gh<_i5.NewsRepository>(),
        gh<_i49.GetRegionSettingsUseCase>(),
      ),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i82.GetProfileAvatarUseCase>(
      () => _i82.GetProfileAvatarUseCaseImpl(
        settingsRepository: gh<_i21.SettingsRepository>(),
        avatarStorageRepository: gh<_i70.AvatarStorageRepository>(),
      ),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.factory<_i83.HasCachedAccountUseCase>(
        () => _i83.HasCachedAccountUseCase(gh<_i69.AuthProvider>()));
    gh.lazySingleton<_i84.NewsCachedDataSource>(
      () => _i84.NewsCachedDataSourceImpl(
          newsRepository: gh<_i55.NewsRemoteDataSource>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.factory<_i85.NewsCubit>(() => _i85.NewsCubit(
          gh<_i81.GetNewsUseCase>(),
          gh<_i4.ClearCacheNewsUseCase>(),
          gh<_i12.LogService>(),
        ));
    gh.factory<_i86.ProfileDocumentsCubit>(() => _i86.ProfileDocumentsCubit(
          gh<_i9.InitAppDocumentsUseCase>(),
          gh<_i44.GetAppDocumentsUseCase>(),
          gh<_i68.AddAppDocumentsUseCase>(),
          gh<_i56.RemoveAppDocumentUseCase>(),
          gh<_i40.EditAppDocumentUseCase>(),
          gh<_i23.ShareAppDocumentsUseCase>(),
          gh<_i15.OpenAppDocumentUseCase>(),
        ));
    gh.factory<_i87.RefreshAuthSettingsUseCase>(
        () => _i87.RefreshAuthSettingsUseCase(gh<_i69.AuthProvider>()));
    gh.lazySingleton<_i88.RegionCubit>(
      () => _i88.RegionCubit(
        gh<_i49.GetRegionSettingsUseCase>(),
        gh<_i63.SetRegionSettingsUseCase>(),
      ),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i89.RemoveMessageByIdUseCase>(
      () => _i89.RemoveMessageByIdUseCaseImpl(gh<_i74.ChatsRepository>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i90.ResetNewMessagesUseCase>(
      () => _i90.ResetNewMessagesUseCaseImpl(gh<_i74.ChatsRepository>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i91.SendChatMessageUseCase>(
      () => _i91.SendChatMessageUseCaseImpl(gh<_i74.ChatsRepository>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i92.SendFormChatMessageUseCase>(
      () => _i92.SendFormChatMessageUseCaseImpl(gh<_i74.ChatsRepository>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i93.SendMenuItemChatMessageUseCase>(
      () => _i93.SendMenuItemChatMessageUseCaseImpl(gh<_i74.ChatsRepository>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i94.SetProfileAvatarUseCase>(
      () => _i94.SetProfileAvatarUseCaseImpl(
        settingsRepository: gh<_i21.SettingsRepository>(),
        avatarStorageRepository: gh<_i70.AvatarStorageRepository>(),
      ),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.factory<_i95.UserLogInUseCase>(
      () => _i95.UserLogInUseCaseImpl(
        userService: gh<_i26.UserService>(),
        chatsRepository: gh<_i74.ChatsRepository>(),
        settingsRepository: gh<_i21.SettingsRepository>(),
        businessCardRepository: gh<_i36.BusinessCardRepository>(),
        appDocumentsRepository: gh<_i31.AppDocumentsRepository>(),
        scopeRepository: gh<_i17.ScopeRepository>(),
      ),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.factory<_i96.ApiSettingsCubit>(() => _i96.ApiSettingsCubit(
          gh<_i60.SetAllApiSettingsUseCase>(),
          gh<_i42.GetAllApiSettingsUseCase>(),
          gh<_i87.RefreshAuthSettingsUseCase>(),
          gh<_i76.ClearChatHistoryUseCase>(),
        ));
    gh.factory<_i97.ChatCubit>(() => _i97.ChatCubit(
          gh<_i78.GetChatFeedObservableUseCase>(),
          gh<_i79.GetChatFeedUseCase>(),
          gh<_i80.GetChatInfoByIdUseCase>(),
          gh<_i77.GetAllMessagesByChatIdUseCase>(),
          gh<_i74.ChatsRepository>(),
          gh<_i26.UserService>(),
          gh<_i91.SendChatMessageUseCase>(),
          gh<_i93.SendMenuItemChatMessageUseCase>(),
          gh<_i90.ResetNewMessagesUseCase>(),
          gh<_i89.RemoveMessageByIdUseCase>(),
          gh<_i92.SendFormChatMessageUseCase>(),
          gh<_i12.LogService>(),
        ));
    gh.factory<_i98.OAuthTryLoginUseCase>(
      () => _i98.OAuthTryLoginUseCaseImpl(
        gh<_i69.AuthProvider>(),
        gh<_i95.UserLogInUseCase>(),
        gh<_i12.LogService>(),
      ),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i99.TasksApiService>(
      () => _i99.TasksApiService(
        gh<_i51.GetTasksApiBaseUrlUseCase>(),
        gh<_i8.DioProvider>(),
        gh<_i12.LogService>(),
        gh<_i11.LocaleInterceptor>(),
        gh<_i34.AuthInterceptor>(),
        gh<_i98.OAuthTryLoginUseCase>(),
        gh<_i14.NavigatorKeyProvider>(),
      ),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i100.TasksRemoteDataSource>(
      () => _i100.TasksRemoteDataSourceImpl(gh<_i99.TasksApiService>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.factory<_i101.AuthCubit>(() => _i101.AuthCubit(
          gh<_i16.PushNotificationsProvider>(),
          gh<_i83.HasCachedAccountUseCase>(),
          gh<_i98.OAuthTryLoginUseCase>(),
          gh<_i12.LogService>(),
          gh<_i49.GetRegionSettingsUseCase>(),
        ));
    gh.lazySingleton<_i102.SetTaskStatusUseCase>(
      () => _i102.SetTaskStatusUseCaseImpl(gh<_i100.TasksRemoteDataSource>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i103.TasksCachedDataSource>(
      () => _i103.TasksCachedDataSourceImpl(gh<_i100.TasksRemoteDataSource>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i104.TasksRepository>(
      () => _i105.TasksCachedRepository(
          dataSource: gh<_i103.TasksCachedDataSource>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.factory<_i106.UserLogOutUseCase>(
      () => _i106.UserLogOutUseCaseImpl(
        gh<_i74.ChatsRepository>(),
        gh<_i103.TasksCachedDataSource>(),
        gh<_i26.UserService>(),
        gh<_i69.AuthProvider>(),
        gh<_i17.ScopeRepository>(),
      ),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i107.ClearCacheTasksUseCase>(
      () => _i107.ClearCacheTasksUseCaseImpl(gh<_i103.TasksCachedDataSource>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i108.GetTasksUseCase>(
      () => _i108.GetTasksUseCaseImpl(gh<_i103.TasksCachedDataSource>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i109.SetCachedTaskStatusUseCase>(
      () => _i109.SetCachedTaskStatusUseCaseImpl(gh<_i104.TasksRepository>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.factory<_i110.SettingsCubit>(() => _i110.SettingsCubit(
          gh<_i45.GetBillingNotificationSettingsUseCase>(),
          gh<_i47.GetDarkModeSettingsUseCase>(),
          gh<_i50.GetSystemModeSettingsUseCase>(),
          gh<_i49.GetRegionSettingsUseCase>(),
          gh<_i106.UserLogOutUseCase>(),
          gh<_i66.ThemeCubit>(),
          gh<_i88.RegionCubit>(),
        ));
    gh.factory<_i111.TasksCubit>(() => _i111.TasksCubit(
          gh<_i108.GetTasksUseCase>(),
          gh<_i109.SetCachedTaskStatusUseCase>(),
          gh<_i102.SetTaskStatusUseCase>(),
          gh<_i107.ClearCacheTasksUseCase>(),
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
        gh.lazySingleton<_i74.ChatsRepository>(
          () => _i112.ChatsMockRepository(
            gh<_i27.UuidGenerator>(),
            gh<_i26.UserService>(),
          ),
          registerFor: {
            _dev,
            _prod,
          },
        );
        gh.lazySingleton<_i5.NewsRepository>(
          () => _i113.NewsMockRepository(constants: gh<_i6.Constants>()),
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
          () => _i114.NewsCachedRepository(
            dataSource: gh<_i84.NewsCachedDataSource>(),
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

class _$AppModule extends _i115.AppModule {}
