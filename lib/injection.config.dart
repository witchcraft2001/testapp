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
import 'package:sqflite/sqflite.dart' as _i7;
import 'package:terralinkapp/common/constants.dart' as _i6;
import 'package:terralinkapp/data/data_sources/cache/news_cached_data_source.dart'
    as _i60;
import 'package:terralinkapp/data/data_sources/cache/tasks_cached_data_source.dart'
    as _i94;
import 'package:terralinkapp/data/data_sources/local/database/app_documents_db_data_source.dart'
    as _i34;
import 'package:terralinkapp/data/data_sources/local/database/business_card_db_data_source.dart'
    as _i40;
import 'package:terralinkapp/data/data_sources/local/database/chats_db_data_source.dart'
    as _i43;
import 'package:terralinkapp/data/data_sources/local/database/messages_db_data_source.dart'
    as _i15;
import 'package:terralinkapp/data/data_sources/local/file/file_storage_data_source.dart'
    as _i47;
import 'package:terralinkapp/data/data_sources/local/shared_preferences/settings_data_source.dart'
    as _i25;
import 'package:terralinkapp/data/data_sources/remote/news_remote_data_source.dart'
    as _i19;
import 'package:terralinkapp/data/data_sources/remote/tasks_remote_data_source.dart'
    as _i91;
import 'package:terralinkapp/data/providers/auth_provider.dart' as _i39;
import 'package:terralinkapp/data/providers/dio_provider.dart' as _i8;
import 'package:terralinkapp/data/providers/navigator_key_provider.dart'
    as _i16;
import 'package:terralinkapp/data/providers/push_notifications_provider.dart'
    as _i21;
import 'package:terralinkapp/data/providers/uuid_generator.dart' as _i31;
import 'package:terralinkapp/data/repositories/cache/news_cached_repository.dart'
    as _i103;
import 'package:terralinkapp/data/repositories/cache/tasks_cached_repository.dart'
    as _i96;
import 'package:terralinkapp/data/repositories/di_scope_repository.dart'
    as _i23;
import 'package:terralinkapp/data/repositories/local/database/app_documents_db_repository.dart'
    as _i36;
import 'package:terralinkapp/data/repositories/local/database/business_card_db_repository.dart'
    as _i42;
import 'package:terralinkapp/data/repositories/local/file/avatar_storage_repository_impl.dart'
    as _i77;
import 'package:terralinkapp/data/repositories/local/shared_preferences/settings_shared_preferences_repository.dart'
    as _i27;
import 'package:terralinkapp/data/repositories/mock/news_mock_repository.dart'
    as _i102;
import 'package:terralinkapp/data/repositories/remote/chats_remote_repository.dart'
    as _i45;
import 'package:terralinkapp/data/services/app_parsing_tags_service.dart'
    as _i3;
import 'package:terralinkapp/data/services/http/interceptors/auth_interceptor.dart'
    as _i38;
import 'package:terralinkapp/data/services/http/interceptors/locale_interceptor.dart'
    as _i13;
import 'package:terralinkapp/data/services/http/news_api_service.dart' as _i18;
import 'package:terralinkapp/data/services/http/overrides/api_http_overrides.dart'
    as _i33;
import 'package:terralinkapp/data/services/http/tasks_api_service.dart' as _i90;
import 'package:terralinkapp/data/services/local_notifications_service.dart'
    as _i12;
import 'package:terralinkapp/data/services/log_service.dart' as _i14;
import 'package:terralinkapp/data/services/timezone_service.dart' as _i29;
import 'package:terralinkapp/data/services/user_service.dart' as _i30;
import 'package:terralinkapp/data/services/websocket_service.dart' as _i32;
import 'package:terralinkapp/data/use_cases/_unused/get_home_screen_feed_use_case.dart'
    as _i80;
import 'package:terralinkapp/data/use_cases/_unused/get_new_employees_use_case.dart'
    as _i9;
import 'package:terralinkapp/data/use_cases/_unused/get_poll_by_id_use_case.dart'
    as _i10;
import 'package:terralinkapp/data/use_cases/_unused/get_unread_chats_use_case.dart'
    as _i59;
import 'package:terralinkapp/data/use_cases/auth/oauth_try_login_use_case.dart'
    as _i85;
import 'package:terralinkapp/data/use_cases/auth/user_log_in_use_case.dart'
    as _i74;
import 'package:terralinkapp/data/use_cases/auth/user_log_out_use_case.dart'
    as _i97;
import 'package:terralinkapp/data/use_cases/business_cards/get_all_business_cards_use_case.dart'
    as _i48;
import 'package:terralinkapp/data/use_cases/business_cards/get_business_card_by_id_use_case.dart'
    as _i52;
import 'package:terralinkapp/data/use_cases/business_cards/remove_business_card_by_id_use_case.dart'
    as _i62;
import 'package:terralinkapp/data/use_cases/business_cards/save_business_card_use_case.dart'
    as _i65;
import 'package:terralinkapp/data/use_cases/chat/get_all_messages_by_chat_id_use_case.dart'
    as _i49;
import 'package:terralinkapp/data/use_cases/chat/get_chat_info_by_id_use_case.dart'
    as _i55;
import 'package:terralinkapp/data/use_cases/chat/remove_message_by_id_use_case.dart'
    as _i63;
import 'package:terralinkapp/data/use_cases/chat/reset_new_messages_use_case.dart'
    as _i64;
import 'package:terralinkapp/data/use_cases/chat/send_chat_message_use_case.dart'
    as _i66;
import 'package:terralinkapp/data/use_cases/chat/send_form_chat_message_use_case.dart'
    as _i67;
import 'package:terralinkapp/data/use_cases/chat/send_menu_item_chat_message_use_case.dart'
    as _i68;
import 'package:terralinkapp/data/use_cases/chats/get_chat_feed_observable_use_case.dart'
    as _i53;
import 'package:terralinkapp/data/use_cases/chats/get_chat_feed_use_case.dart'
    as _i54;
import 'package:terralinkapp/data/use_cases/documents/add_app_documents_use_case.dart'
    as _i75;
import 'package:terralinkapp/data/use_cases/documents/edit_app_documents_use_case.dart'
    as _i46;
import 'package:terralinkapp/data/use_cases/documents/get_app_documents_use_case.dart'
    as _i50;
import 'package:terralinkapp/data/use_cases/documents/init_case_app_documents_use_case.dart'
    as _i11;
import 'package:terralinkapp/data/use_cases/documents/open_app_document_use_case.dart'
    as _i20;
import 'package:terralinkapp/data/use_cases/documents/remove_case_app_documents_use_case.dart'
    as _i61;
import 'package:terralinkapp/data/use_cases/documents/share_app_documents_use_case.dart'
    as _i28;
import 'package:terralinkapp/data/use_cases/feedback/send_feedback_use_case.dart'
    as _i24;
import 'package:terralinkapp/data/use_cases/news/clear_cache_news_use_case.dart'
    as _i4;
import 'package:terralinkapp/data/use_cases/news/get_all_news_use_case.dart'
    as _i81;
import 'package:terralinkapp/data/use_cases/profile/get_profile_avatar_use_case.dart'
    as _i82;
import 'package:terralinkapp/data/use_cases/profile/set_profile_avatar_use_case.dart'
    as _i88;
import 'package:terralinkapp/data/use_cases/settings/get_billing_notification_settings_use_case.dart'
    as _i51;
import 'package:terralinkapp/data/use_cases/settings/get_dark_mode_settings_use_case.dart'
    as _i56;
import 'package:terralinkapp/data/use_cases/settings/get_region_settings_use_case.dart'
    as _i57;
import 'package:terralinkapp/data/use_cases/settings/get_system_mode_settings_use_case.dart'
    as _i58;
import 'package:terralinkapp/data/use_cases/settings/set_billing_notification_settings_use_case.dart'
    as _i69;
import 'package:terralinkapp/data/use_cases/settings/set_dark_mode_settings_use_case.dart'
    as _i70;
import 'package:terralinkapp/data/use_cases/settings/set_region_settings_use_case.dart'
    as _i71;
import 'package:terralinkapp/data/use_cases/settings/set_system_mode_settings_use_case.dart'
    as _i72;
import 'package:terralinkapp/data/use_cases/tasks/clear_cache_tasks_use_case.dart'
    as _i98;
import 'package:terralinkapp/data/use_cases/tasks/get_all_tasks_use_case.dart'
    as _i99;
import 'package:terralinkapp/data/use_cases/tasks/set_cached_task_status_use_case.dart'
    as _i100;
import 'package:terralinkapp/data/use_cases/tasks/set_task_status_use_case.dart'
    as _i93;
import 'package:terralinkapp/di/modules/app_module.dart' as _i104;
import 'package:terralinkapp/domain/repositories/app_documents_repository.dart'
    as _i35;
import 'package:terralinkapp/domain/repositories/avatar_storage_repository.dart'
    as _i76;
import 'package:terralinkapp/domain/repositories/business_card_repository.dart'
    as _i41;
import 'package:terralinkapp/domain/repositories/chats_repository.dart' as _i44;
import 'package:terralinkapp/domain/repositories/news_repository.dart' as _i5;
import 'package:terralinkapp/domain/repositories/scope_repository.dart' as _i22;
import 'package:terralinkapp/domain/repositories/settings_repository.dart'
    as _i26;
import 'package:terralinkapp/domain/repositories/tasks_repository.dart' as _i95;
import 'package:terralinkapp/presentation/navigation/app_navigation_service.dart'
    as _i37;
import 'package:terralinkapp/presentation/screens/_unused/chats/chats_cubit.dart'
    as _i79;
import 'package:terralinkapp/presentation/screens/_unused/home/home_cubit.dart'
    as _i83;
import 'package:terralinkapp/presentation/screens/_unused/new_employees/new_employees_cubit.dart'
    as _i17;
import 'package:terralinkapp/presentation/screens/auth/auth_cubit.dart' as _i92;
import 'package:terralinkapp/presentation/screens/chat/domain/cubits/chat_cubit.dart'
    as _i78;
import 'package:terralinkapp/presentation/screens/news/domain/cubits/news_cubit.dart'
    as _i84;
import 'package:terralinkapp/presentation/screens/profile_documents/domain/cubits/profile_documents_cubit.dart'
    as _i86;
import 'package:terralinkapp/presentation/screens/region/domain/cubits/region_cubit.dart'
    as _i87;
import 'package:terralinkapp/presentation/screens/settings/domain/cubits/settings_cubit.dart'
    as _i89;
import 'package:terralinkapp/presentation/screens/tasks/domain/cubits/tasks_cubit.dart'
    as _i101;
import 'package:terralinkapp/presentation/theme/domain/cubits/theme_cubit.dart'
    as _i73;

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
    gh.lazySingleton<_i9.GetNewEmployeesUseCase>(
      () => _i9.GetNewEmployeesUseCaseImpl(),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i10.GetPollByIdUseCase>(
      () => _i10.GetPollByIdUseCaseImpl(),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i11.InitAppDocumentsUseCase>(
      () => _i11.InitAppDocumentsInitUseCaseImpl(),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i12.LocalNotificationsService>(
      () => _i12.LocalNotificationsServiceImpl(),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i13.LocaleInterceptor>(() => _i13.LocaleInterceptor());
    gh.lazySingleton<_i14.LogService>(
      () => _i14.LogService(),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i15.MessagesDbDataSource>(
      () => _i15.MessagesDbDataSourceImpl(gh<_i7.Database>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i16.NavigatorKeyProvider>(
      () => _i16.NavigatorKeyProvider(),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.factory<_i17.NewEmployeesCubit>(
        () => _i17.NewEmployeesCubit(gh<_i9.GetNewEmployeesUseCase>()));
    gh.lazySingleton<_i18.NewsApiService>(
      () => _i18.NewsApiService(
        gh<_i6.Constants>(),
        gh<_i8.DioProvider>(),
        gh<_i14.LogService>(),
      ),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i19.NewsRemoteDataSource>(
      () => _i19.NewsRemoteDataSourceImpl(gh<_i18.NewsApiService>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i20.OpenAppDocumentUseCase>(
      () => _i20.OpenAppDocumentUseCaseImpl(),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i21.PushNotificationsProvider>(
      () => _i21.PushNotificationsProviderImpl(),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i22.ScopeRepository>(
      () => _i23.DiScopeRepository(),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i24.SendFeedbackUseCase>(
      () => _i24.SendFeedbackUseCaseImpl(),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i25.SettingsDataSource>(
      () => _i25.SettingsDataSourceImpl(),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i26.SettingsRepository>(
      () => _i27.SettingsSharedPreferencesRepository(
          dataSource: gh<_i25.SettingsDataSource>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i28.ShareAppDocumentsUseCase>(
      () => _i28.ShareAppDocumentsUseCaseImpl(),
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
    gh.lazySingleton<_i32.WebsocketService>(
      () => _i32.WebsocketServiceImpl(
        gh<_i6.Constants>(),
        gh<_i30.UserService>(),
        gh<_i21.PushNotificationsProvider>(),
        gh<_i14.LogService>(),
      ),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i33.ApiHttpOverrides>(
      () => _i33.ApiHttpOverrides(gh<_i6.Constants>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i34.AppDocumentsDbDataSource>(
      () => _i34.AppDocumentsDbDataSourceImpl(gh<_i7.Database>()),
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
      () => _i37.AppNavigationService(gh<_i16.NavigatorKeyProvider>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i38.AuthInterceptor>(
        () => _i38.AuthInterceptor(gh<_i30.UserService>()));
    gh.lazySingleton<_i39.AuthProvider>(
      () => _i39.AuthProvider(
        gh<_i6.Constants>(),
        gh<_i16.NavigatorKeyProvider>(),
      ),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i40.BusinessCardDbDataSource>(
      () => _i40.BusinessCardDbDataSourceImpl(gh<_i7.Database>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i41.BusinessCardRepository>(
      () => _i42.BusinessCardDbRepository(
          dataSource: gh<_i40.BusinessCardDbDataSource>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i43.ChatsDbDataSource>(
      () => _i43.ChatsDbDataSourceImpl(gh<_i7.Database>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i44.ChatsRepository>(
      () => _i45.ChatsRemoteRepository(
        gh<_i32.WebsocketService>(),
        gh<_i43.ChatsDbDataSource>(),
        gh<_i31.UuidGenerator>(),
        gh<_i30.UserService>(),
        gh<_i15.MessagesDbDataSource>(),
        gh<_i14.LogService>(),
      ),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i46.EditAppDocumentUseCase>(
      () => _i46.EditAppDocumentUseCaseImpl(gh<_i35.AppDocumentsRepository>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i47.FileStorageDataSource>(
      () => _i47.ImageStorageDataSourceImpl(logService: gh<_i14.LogService>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i48.GetAllBusinessCardsUseCase>(
      () => _i48.GetAllBusinessCardsUseCaseImpl(
          gh<_i41.BusinessCardRepository>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i49.GetAllMessagesByChatIdUseCase>(
      () => _i49.GetAllMessagesByChatIdUseCaseImpl(gh<_i44.ChatsRepository>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i50.GetAppDocumentsUseCase>(
      () => _i50.GetAppDocumentsUseCaseImpl(gh<_i35.AppDocumentsRepository>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i51.GetBillingNotificationSettingsUseCase>(
      () => _i51.GetBillingNotificationSettingsUseCaseImpl(
          gh<_i25.SettingsDataSource>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i52.GetBusinessCardByIdUseCase>(
      () => _i52.GetBusinessCardByIdUseCaseImpl(
          gh<_i41.BusinessCardRepository>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i53.GetChatFeedObservableUseCase>(
      () => _i53.GetChatFeedObservableUseCaseImpl(gh<_i44.ChatsRepository>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i54.GetChatFeedUseCase>(
      () => _i54.GetChatFeedUseCaseImpl(gh<_i44.ChatsRepository>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i55.GetChatInfoByIdUseCase>(
      () => _i55.GetChatInfoByIdUseCaseImpl(gh<_i44.ChatsRepository>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i56.GetDarkModeSettingsUseCase>(
      () => _i56.GetDarkModeSettingsUseCaseImpl(gh<_i25.SettingsDataSource>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i57.GetRegionSettingsUseCase>(
      () => _i57.GetRegionSettingsUseCaseImpl(gh<_i25.SettingsDataSource>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i58.GetSystemModeSettingsUseCase>(
      () =>
          _i58.GetSystemModeSettingsUseCaseImpl(gh<_i25.SettingsDataSource>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i59.GetUnreadChatsUseCase>(
      () => _i59.GetUnreadChatsUseCaseImpl(gh<_i44.ChatsRepository>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i60.NewsCachedDataSource>(
      () => _i60.NewsCachedDataSourceImpl(
          newsRepository: gh<_i19.NewsRemoteDataSource>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i61.RemoveAppDocumentUseCase>(
      () =>
          _i61.RemoveAppDocumentUseCaseImpl(gh<_i35.AppDocumentsRepository>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i62.RemoveBusinessCardByIdUseCase>(
      () => _i62.RemoveBusinessCardByIdUseCaseImpl(
          gh<_i41.BusinessCardRepository>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i63.RemoveMessageByIdUseCase>(
      () => _i63.RemoveMessageByIdUseCaseImpl(gh<_i44.ChatsRepository>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i64.ResetNewMessagesUseCase>(
      () => _i64.ResetNewMessagesUseCaseImpl(gh<_i44.ChatsRepository>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i65.SaveBusinessCardUseCase>(
      () => _i65.SaveBusinessCardUseCaseImpl(gh<_i41.BusinessCardRepository>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i66.SendChatMessageUseCase>(
      () => _i66.SendChatMessageUseCaseImpl(gh<_i44.ChatsRepository>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i67.SendFormChatMessageUseCase>(
      () => _i67.SendFormChatMessageUseCaseImpl(gh<_i44.ChatsRepository>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i68.SendMenuItemChatMessageUseCase>(
      () => _i68.SendMenuItemChatMessageUseCaseImpl(gh<_i44.ChatsRepository>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i69.SetBillingNotificationSettingsUseCase>(
      () => _i69.SetBillingNotificationSettingsUseCaseImpl(
        gh<_i25.SettingsDataSource>(),
        gh<_i12.LocalNotificationsService>(),
      ),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i70.SetDarkModeSettingsUseCase>(
      () => _i70.SetDarkModeSettingsUseCaseImpl(gh<_i25.SettingsDataSource>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i71.SetRegionSettingsUseCase>(
      () => _i71.SetRegionSettingsUseCaseImpl(gh<_i25.SettingsDataSource>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i72.SetSystemModeSettingsUseCase>(
      () =>
          _i72.SetSystemModeSettingsUseCaseImpl(gh<_i25.SettingsDataSource>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i73.ThemeCubit>(
      () => _i73.ThemeCubit(
        gh<_i56.GetDarkModeSettingsUseCase>(),
        gh<_i70.SetDarkModeSettingsUseCase>(),
        gh<_i58.GetSystemModeSettingsUseCase>(),
        gh<_i72.SetSystemModeSettingsUseCase>(),
      ),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.factory<_i74.UserLogInUseCase>(
      () => _i74.UserLogInUseCaseImpl(
        userService: gh<_i30.UserService>(),
        chatsRepository: gh<_i44.ChatsRepository>(),
        settingsRepository: gh<_i26.SettingsRepository>(),
        businessCardRepository: gh<_i41.BusinessCardRepository>(),
        appDocumentsRepository: gh<_i35.AppDocumentsRepository>(),
        scopeRepository: gh<_i22.ScopeRepository>(),
      ),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i75.AddAppDocumentsUseCase>(
      () =>
          _i75.AddAppDocumentsAddUseCaseImpl(gh<_i35.AppDocumentsRepository>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i76.AvatarStorageRepository>(
      () => _i77.AvatarStorageRepositoryImpl(
          dataSource: gh<_i47.FileStorageDataSource>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.factory<_i78.ChatCubit>(() => _i78.ChatCubit(
          gh<_i53.GetChatFeedObservableUseCase>(),
          gh<_i54.GetChatFeedUseCase>(),
          gh<_i55.GetChatInfoByIdUseCase>(),
          gh<_i49.GetAllMessagesByChatIdUseCase>(),
          gh<_i44.ChatsRepository>(),
          gh<_i30.UserService>(),
          gh<_i66.SendChatMessageUseCase>(),
          gh<_i68.SendMenuItemChatMessageUseCase>(),
          gh<_i64.ResetNewMessagesUseCase>(),
          gh<_i63.RemoveMessageByIdUseCase>(),
          gh<_i67.SendFormChatMessageUseCase>(),
          gh<_i14.LogService>(),
        ));
    gh.factory<_i79.ChatsCubit>(() => _i79.ChatsCubit(
          gh<_i53.GetChatFeedObservableUseCase>(),
          gh<_i54.GetChatFeedUseCase>(),
          gh<_i14.LogService>(),
        ));
    gh.lazySingleton<_i80.GetHomeScreenFeedUseCase>(
      () => _i80.GetHomeScreenFeedUseCaseImpl(gh<_i59.GetUnreadChatsUseCase>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.factory<_i81.GetNewsUseCase>(
      () => _i81.GetNewsUseCaseImpl(
        gh<_i5.NewsRepository>(),
        gh<_i57.GetRegionSettingsUseCase>(),
      ),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i82.GetProfileAvatarUseCase>(
      () => _i82.GetProfileAvatarUseCaseImpl(
        settingsRepository: gh<_i26.SettingsRepository>(),
        avatarStorageRepository: gh<_i76.AvatarStorageRepository>(),
      ),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.factory<_i83.HomeCubit>(
        () => _i83.HomeCubit(gh<_i80.GetHomeScreenFeedUseCase>()));
    gh.factory<_i84.NewsCubit>(() => _i84.NewsCubit(
          gh<_i81.GetNewsUseCase>(),
          gh<_i4.ClearCacheNewsUseCase>(),
          gh<_i14.LogService>(),
        ));
    gh.factory<_i85.OAuthTryLoginUseCase>(
      () => _i85.OAuthTryLoginUseCaseImpl(
        gh<_i39.AuthProvider>(),
        gh<_i74.UserLogInUseCase>(),
        gh<_i14.LogService>(),
      ),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.factory<_i86.ProfileDocumentsCubit>(() => _i86.ProfileDocumentsCubit(
          gh<_i11.InitAppDocumentsUseCase>(),
          gh<_i50.GetAppDocumentsUseCase>(),
          gh<_i75.AddAppDocumentsUseCase>(),
          gh<_i61.RemoveAppDocumentUseCase>(),
          gh<_i46.EditAppDocumentUseCase>(),
          gh<_i28.ShareAppDocumentsUseCase>(),
          gh<_i20.OpenAppDocumentUseCase>(),
        ));
    gh.lazySingleton<_i87.RegionCubit>(
      () => _i87.RegionCubit(
        gh<_i57.GetRegionSettingsUseCase>(),
        gh<_i71.SetRegionSettingsUseCase>(),
      ),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i88.SetProfileAvatarUseCase>(
      () => _i88.SetProfileAvatarUseCaseImpl(
        settingsRepository: gh<_i26.SettingsRepository>(),
        avatarStorageRepository: gh<_i76.AvatarStorageRepository>(),
      ),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.factory<_i89.SettingsCubit>(() => _i89.SettingsCubit(
          gh<_i51.GetBillingNotificationSettingsUseCase>(),
          gh<_i56.GetDarkModeSettingsUseCase>(),
          gh<_i58.GetSystemModeSettingsUseCase>(),
          gh<_i57.GetRegionSettingsUseCase>(),
          gh<_i73.ThemeCubit>(),
          gh<_i87.RegionCubit>(),
        ));
    gh.lazySingleton<_i90.TasksApiService>(
      () => _i90.TasksApiService(
        gh<_i6.Constants>(),
        gh<_i8.DioProvider>(),
        gh<_i14.LogService>(),
        gh<_i13.LocaleInterceptor>(),
        gh<_i38.AuthInterceptor>(),
        gh<_i85.OAuthTryLoginUseCase>(),
        gh<_i16.NavigatorKeyProvider>(),
      ),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i91.TasksRemoteDataSource>(
      () => _i91.TasksRemoteDataSourceImpl(gh<_i90.TasksApiService>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.factory<_i92.AuthCubit>(() => _i92.AuthCubit(
          gh<_i21.PushNotificationsProvider>(),
          gh<_i39.AuthProvider>(),
          gh<_i85.OAuthTryLoginUseCase>(),
          gh<_i14.LogService>(),
          gh<_i57.GetRegionSettingsUseCase>(),
        ));
    gh.lazySingleton<_i93.SetTaskStatusUseCase>(
      () => _i93.SetTaskStatusUseCaseImpl(gh<_i91.TasksRemoteDataSource>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i94.TasksCachedDataSource>(
      () => _i94.TasksCachedDataSourceImpl(gh<_i91.TasksRemoteDataSource>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i95.TasksRepository>(
      () => _i96.TasksCachedRepository(
          dataSource: gh<_i94.TasksCachedDataSource>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.factory<_i97.UserLogOutUseCase>(
      () => _i97.UserLogOutUseCaseImpl(
        gh<_i44.ChatsRepository>(),
        gh<_i94.TasksCachedDataSource>(),
        gh<_i30.UserService>(),
        gh<_i39.AuthProvider>(),
        gh<_i22.ScopeRepository>(),
      ),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i98.ClearCacheTasksUseCase>(
      () => _i98.ClearCacheTasksUseCaseImpl(gh<_i94.TasksCachedDataSource>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i99.GetTasksUseCase>(
      () => _i99.GetTasksUseCaseImpl(gh<_i94.TasksCachedDataSource>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i100.SetCachedTaskStatusUseCase>(
      () => _i100.SetCachedTaskStatusUseCaseImpl(gh<_i95.TasksRepository>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.factory<_i101.TasksCubit>(() => _i101.TasksCubit(
          gh<_i99.GetTasksUseCase>(),
          gh<_i100.SetCachedTaskStatusUseCase>(),
          gh<_i93.SetTaskStatusUseCase>(),
          gh<_i98.ClearCacheTasksUseCase>(),
          gh<_i14.LogService>(),
        ));
    return this;
  }

// initializes the registration of mockScope-scope dependencies inside of GetIt
  _i1.GetIt initMockScopeScope({_i1.ScopeDisposeFunc? dispose}) {
    return _i2.GetItHelper(this).initScope(
      'mockScope',
      dispose: dispose,
      init: (_i2.GetItHelper gh) {
        gh.lazySingleton<_i5.NewsRepository>(
          () => _i102.NewsMockRepository(constants: gh<_i6.Constants>()),
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
          () => _i103.NewsCachedRepository(
            dataSource: gh<_i60.NewsCachedDataSource>(),
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

class _$AppModule extends _i104.AppModule {}
