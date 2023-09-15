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
import 'package:terralinkapp/common/constants.dart' as _i4;
import 'package:terralinkapp/data/providers/auth_provider.dart' as _i29;
import 'package:terralinkapp/data/providers/db_provider.dart' as _i5;
import 'package:terralinkapp/data/providers/dio_provider.dart' as _i6;
import 'package:terralinkapp/data/providers/navigator_key_provider.dart'
    as _i14;
import 'package:terralinkapp/data/providers/push_notifications_provider.dart'
    as _i19;
import 'package:terralinkapp/data/providers/uuid_generator.dart' as _i24;
import 'package:terralinkapp/data/repositories/chats_repository.dart' as _i33;
import 'package:terralinkapp/data/repositories/local/business_card_db_repository.dart'
    as _i30;
import 'package:terralinkapp/data/repositories/local/cached_news_repository.dart'
    as _i31;
import 'package:terralinkapp/data/repositories/local/cached_tasks_repository.dart'
    as _i74;
import 'package:terralinkapp/data/repositories/local/chats_db_repository.dart'
    as _i32;
import 'package:terralinkapp/data/repositories/local/documents_db_repository.dart'
    as _i26;
import 'package:terralinkapp/data/repositories/local/messages_db_repository.dart'
    as _i13;
import 'package:terralinkapp/data/repositories/local/settings_repository.dart'
    as _i20;
import 'package:terralinkapp/data/repositories/news_repository.dart' as _i17;
import 'package:terralinkapp/data/repositories/tasks_repository.dart' as _i72;
import 'package:terralinkapp/data/services/app_parsing_tags_service.dart'
    as _i3;
import 'package:terralinkapp/data/services/http/interceptors/auth_interceptor.dart'
    as _i28;
import 'package:terralinkapp/data/services/http/interceptors/locale_interceptor.dart'
    as _i11;
import 'package:terralinkapp/data/services/http/news_api_service.dart' as _i16;
import 'package:terralinkapp/data/services/http/tasks_api_service.dart' as _i71;
import 'package:terralinkapp/data/services/local_notifications_service.dart'
    as _i10;
import 'package:terralinkapp/data/services/log_service.dart' as _i12;
import 'package:terralinkapp/data/services/timezone_service.dart' as _i22;
import 'package:terralinkapp/data/services/user_service.dart' as _i23;
import 'package:terralinkapp/data/services/websocket_service.dart' as _i25;
import 'package:terralinkapp/data/use_cases/_unused/get_home_screen_feed_use_case.dart'
    as _i66;
import 'package:terralinkapp/data/use_cases/_unused/get_new_employees_use_case.dart'
    as _i7;
import 'package:terralinkapp/data/use_cases/_unused/get_poll_by_id_use_case.dart'
    as _i8;
import 'package:terralinkapp/data/use_cases/_unused/get_unread_chats_use_case.dart'
    as _i48;
import 'package:terralinkapp/data/use_cases/auth/oauth_try_login_use_case.dart'
    as _i68;
import 'package:terralinkapp/data/use_cases/auth/user_log_in_use_case.dart'
    as _i63;
import 'package:terralinkapp/data/use_cases/auth/user_log_out_use_case.dart'
    as _i80;
import 'package:terralinkapp/data/use_cases/business_cards/get_all_business_cards_use_case.dart'
    as _i36;
import 'package:terralinkapp/data/use_cases/business_cards/get_business_card_by_id_use_case.dart'
    as _i40;
import 'package:terralinkapp/data/use_cases/business_cards/remove_business_card_by_id_use_case.dart'
    as _i51;
import 'package:terralinkapp/data/use_cases/business_cards/save_business_card_use_case.dart'
    as _i54;
import 'package:terralinkapp/data/use_cases/chat/get_all_messages_by_chat_id_use_case.dart'
    as _i37;
import 'package:terralinkapp/data/use_cases/chat/get_chat_info_by_id_use_case.dart'
    as _i43;
import 'package:terralinkapp/data/use_cases/chat/remove_message_by_id_use_case.dart'
    as _i52;
import 'package:terralinkapp/data/use_cases/chat/reset_new_messages_use_case.dart'
    as _i53;
import 'package:terralinkapp/data/use_cases/chat/send_chat_message_use_case.dart'
    as _i55;
import 'package:terralinkapp/data/use_cases/chat/send_form_chat_message_use_case.dart'
    as _i56;
import 'package:terralinkapp/data/use_cases/chat/send_menu_item_chat_message_use_case.dart'
    as _i57;
import 'package:terralinkapp/data/use_cases/chats/get_chat_feed_observable_use_case.dart'
    as _i41;
import 'package:terralinkapp/data/use_cases/chats/get_chat_feed_use_case.dart'
    as _i42;
import 'package:terralinkapp/data/use_cases/documents/add_app_documents_use_case.dart'
    as _i64;
import 'package:terralinkapp/data/use_cases/documents/edit_app_documents_use_case.dart'
    as _i35;
import 'package:terralinkapp/data/use_cases/documents/get_app_documents_use_case.dart'
    as _i38;
import 'package:terralinkapp/data/use_cases/documents/init_case_app_documents_use_case.dart'
    as _i9;
import 'package:terralinkapp/data/use_cases/documents/open_app_document_use_case.dart'
    as _i18;
import 'package:terralinkapp/data/use_cases/documents/remove_case_app_documents_use_case.dart'
    as _i50;
import 'package:terralinkapp/data/use_cases/documents/share_app_documents_use_case.dart'
    as _i21;
import 'package:terralinkapp/data/use_cases/news/clear_cache_news_use_case.dart'
    as _i34;
import 'package:terralinkapp/data/use_cases/news/get_all_news_use_case.dart'
    as _i45;
import 'package:terralinkapp/data/use_cases/profile/get_profile_avatar_use_case.dart'
    as _i46;
import 'package:terralinkapp/data/use_cases/profile/set_profile_avatar_use_case.dart'
    as _i60;
import 'package:terralinkapp/data/use_cases/settings/get_billing_notification_settings_use_case.dart'
    as _i39;
import 'package:terralinkapp/data/use_cases/settings/get_dark_mode_settings_use_case.dart'
    as _i44;
import 'package:terralinkapp/data/use_cases/settings/get_system_mode_settings_use_case.dart'
    as _i47;
import 'package:terralinkapp/data/use_cases/settings/set_billing_notification_settings_use_case.dart'
    as _i58;
import 'package:terralinkapp/data/use_cases/settings/set_dark_mode_settings_use_case.dart'
    as _i59;
import 'package:terralinkapp/data/use_cases/settings/set_system_mode_settings_use_case.dart'
    as _i61;
import 'package:terralinkapp/data/use_cases/tasks/clear_cache_tasks_use_case.dart'
    as _i75;
import 'package:terralinkapp/data/use_cases/tasks/get_all_tasks_use_case.dart'
    as _i76;
import 'package:terralinkapp/data/use_cases/tasks/set_cached_task_status_use_case.dart'
    as _i77;
import 'package:terralinkapp/data/use_cases/tasks/set_task_status_use_case.dart'
    as _i78;
import 'package:terralinkapp/presentation/navigation/app_navigation_service.dart'
    as _i27;
import 'package:terralinkapp/presentation/screens/_unused/home/home_cubit.dart'
    as _i67;
import 'package:terralinkapp/presentation/screens/_unused/new_employees/new_employees_cubit.dart'
    as _i15;
import 'package:terralinkapp/presentation/screens/auth/auth_cubit.dart' as _i73;
import 'package:terralinkapp/presentation/screens/chats/chats_cubit.dart'
    as _i65;
import 'package:terralinkapp/presentation/screens/news/domain/cubits/news_cubit.dart'
    as _i49;
import 'package:terralinkapp/presentation/screens/profile_documents/domain/cubits/profile_documents_cubit.dart'
    as _i69;
import 'package:terralinkapp/presentation/screens/settings/domain/cubits/settings_cubit.dart'
    as _i70;
import 'package:terralinkapp/presentation/screens/tasks/tasks_cubit.dart'
    as _i79;
import 'package:terralinkapp/presentation/theme/domain/cubits/theme_cubit.dart'
    as _i62;

const String _dev = 'dev';
const String _prod = 'prod';

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.lazySingleton<_i3.AppParsingTagsService>(
      () => _i3.AppParsingTagsService(),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i4.Constants>(
      () => _i4.DevConstantsImpl(),
      registerFor: {_dev},
    );
    gh.lazySingleton<_i4.Constants>(
      () => _i4.ProdConstantsImpl(),
      registerFor: {_prod},
    );
    gh.lazySingleton<_i5.DbProvider>(
      () => _i5.DbProviderImpl(),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.factory<_i6.DioProvider>(() => _i6.DioProvider());
    gh.lazySingleton<_i7.GetNewEmployeesUseCase>(
      () => _i7.GetNewEmployeesUseCaseImpl(),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i8.GetPollByIdUseCase>(
      () => _i8.GetPollByIdUseCaseImpl(),
      registerFor: {
        _dev,
        _prod,
      },
    );
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
    gh.lazySingleton<_i13.MessagesDbRepository>(
      () => _i13.MessagesDbRepositoryImpl(gh<_i5.DbProvider>()),
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
    gh.factory<_i15.NewEmployeesCubit>(
        () => _i15.NewEmployeesCubit(gh<_i7.GetNewEmployeesUseCase>()));
    gh.lazySingleton<_i16.NewsApiService>(
      () => _i16.NewsApiService(
        gh<_i4.Constants>(),
        gh<_i6.DioProvider>(),
        gh<_i12.LogService>(),
      ),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i17.NewsRepository>(
      () => _i17.NewsRepositoryImpl(gh<_i16.NewsApiService>()),
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
    gh.lazySingleton<_i20.SettingsRepository>(
      () => _i20.SettingsRepositoryImpl(),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i21.ShareAppDocumentsUseCase>(
      () => _i21.ShareAppDocumentsUseCaseImpl(),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i22.TimeZoneService>(
      () => _i22.TimeZoneServiceImpl(),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i23.UserService>(
      () => _i23.UserServiceImpl(),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i24.UuidGenerator>(
      () => _i24.UuidGeneratorImpl(),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i25.WebsocketService>(
      () => _i25.WebsocketServiceImpl(
        gh<_i4.Constants>(),
        gh<_i23.UserService>(),
        gh<_i19.PushNotificationsProvider>(),
        gh<_i12.LogService>(),
      ),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i26.AppDocumentsDbRepository>(
      () => _i26.AppDocumentsDbRepositoryImpl(gh<_i5.DbProvider>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i27.AppNavigationService>(
      () => _i27.AppNavigationService(gh<_i14.NavigatorKeyProvider>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i28.AuthInterceptor>(
        () => _i28.AuthInterceptor(gh<_i23.UserService>()));
    gh.lazySingleton<_i29.AuthProvider>(
      () => _i29.AuthProvider(
        gh<_i4.Constants>(),
        gh<_i14.NavigatorKeyProvider>(),
      ),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i30.BusinessCardDbRepository>(
      () => _i30.BusinessCardDbRepositoryImpl(gh<_i5.DbProvider>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i31.CachedNewsRepository>(
      () => _i31.CachedNewsRepositoryImpl(gh<_i17.NewsRepository>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i32.ChatsDbRepository>(
      () => _i32.ChatsDbRepositoryImpl(gh<_i5.DbProvider>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i33.ChatsRepository>(
      () => _i33.ChatsRepositoryImpl(
        gh<_i25.WebsocketService>(),
        gh<_i32.ChatsDbRepository>(),
        gh<_i24.UuidGenerator>(),
        gh<_i23.UserService>(),
        gh<_i13.MessagesDbRepository>(),
        gh<_i12.LogService>(),
      ),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i34.ClearCacheNewsUseCase>(
      () => _i34.ClearCacheNewsUseCaseImpl(gh<_i31.CachedNewsRepository>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i35.EditAppDocumentUseCase>(
      () =>
          _i35.EditAppDocumentUseCaseImpl(gh<_i26.AppDocumentsDbRepository>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i36.GetAllBusinessCardsUseCase>(
      () => _i36.GetAllBusinessCardsUseCaseImpl(
          gh<_i30.BusinessCardDbRepository>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i37.GetAllMessagesByChatIdUseCase>(
      () => _i37.GetAllMessagesByChatIdUseCaseImpl(gh<_i33.ChatsRepository>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i38.GetAppDocumentsUseCase>(
      () =>
          _i38.GetAppDocumentsUseCaseImpl(gh<_i26.AppDocumentsDbRepository>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i39.GetBillingNotificationSettingsUseCase>(
      () => _i39.GetBillingNotificationSettingsUseCaseImpl(
          gh<_i20.SettingsRepository>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i40.GetBusinessCardByIdUseCase>(
      () => _i40.GetBusinessCardByIdUseCaseImpl(
          gh<_i30.BusinessCardDbRepository>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i41.GetChatFeedObservableUseCase>(
      () => _i41.GetChatFeedObservableUseCaseImpl(gh<_i33.ChatsRepository>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i42.GetChatFeedUseCase>(
      () => _i42.GetChatFeedUseCaseImpl(gh<_i33.ChatsRepository>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i43.GetChatInfoByIdUseCase>(
      () => _i43.GetChatInfoByIdUseCaseImpl(gh<_i33.ChatsRepository>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i44.GetDarkModeSettingsUseCase>(
      () => _i44.GetDarkModeSettingsUseCaseImpl(gh<_i20.SettingsRepository>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i45.GetNewsUseCase>(
      () => _i45.GetNewsUseCaseImpl(gh<_i31.CachedNewsRepository>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i46.GetProfileAvatarUseCase>(
      () => _i46.GetProfileAvatarUseCaseImpl(gh<_i20.SettingsRepository>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i47.GetSystemModeSettingsUseCase>(
      () =>
          _i47.GetSystemModeSettingsUseCaseImpl(gh<_i20.SettingsRepository>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i48.GetUnreadChatsUseCase>(
      () => _i48.GetUnreadChatsUseCaseImpl(gh<_i33.ChatsRepository>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.factory<_i49.NewsCubit>(() => _i49.NewsCubit(
          gh<_i45.GetNewsUseCase>(),
          gh<_i34.ClearCacheNewsUseCase>(),
        ));
    gh.lazySingleton<_i50.RemoveAppDocumentUseCase>(
      () => _i50.RemoveAppDocumentUseCaseImpl(
          gh<_i26.AppDocumentsDbRepository>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i51.RemoveBusinessCardByIdUseCase>(
      () => _i51.RemoveBusinessCardByIdUseCaseImpl(
          gh<_i30.BusinessCardDbRepository>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i52.RemoveMessageByIdUseCase>(
      () => _i52.RemoveMessageByIdUseCaseImpl(gh<_i33.ChatsRepository>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i53.ResetNewMessagesUseCase>(
      () => _i53.ResetNewMessagesUseCaseImpl(gh<_i33.ChatsRepository>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i54.SaveBusinessCardUseCase>(
      () =>
          _i54.SaveBusinessCardUseCaseImpl(gh<_i30.BusinessCardDbRepository>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i55.SendChatMessageUseCase>(
      () => _i55.SendChatMessageUseCaseImpl(gh<_i33.ChatsRepository>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i56.SendFormChatMessageUseCase>(
      () => _i56.SendFormChatMessageUseCaseImpl(gh<_i33.ChatsRepository>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i57.SendMenuItemChatMessageUseCase>(
      () => _i57.SendMenuItemChatMessageUseCaseImpl(gh<_i33.ChatsRepository>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i58.SetBillingNotificationSettingsUseCase>(
      () => _i58.SetBillingNotificationSettingsUseCaseImpl(
          gh<_i20.SettingsRepository>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i59.SetDarkModeSettingsUseCase>(
      () => _i59.SetDarkModeSettingsUseCaseImpl(gh<_i20.SettingsRepository>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i60.SetProfileAvatarUseCase>(
      () => _i60.SetProfileAvatarUseCaseImpl(
        gh<_i20.SettingsRepository>(),
        gh<_i12.LogService>(),
      ),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i61.SetSystemModeSettingsUseCase>(
      () =>
          _i61.SetSystemModeSettingsUseCaseImpl(gh<_i20.SettingsRepository>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i62.ThemeCubit>(
      () => _i62.ThemeCubit(
        gh<_i44.GetDarkModeSettingsUseCase>(),
        gh<_i59.SetDarkModeSettingsUseCase>(),
        gh<_i47.GetSystemModeSettingsUseCase>(),
        gh<_i61.SetSystemModeSettingsUseCase>(),
      ),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i63.UserLogInUseCase>(
      () => _i63.UserLogInUseCaseImpl(
        gh<_i33.ChatsRepository>(),
        gh<_i23.UserService>(),
        gh<_i20.SettingsRepository>(),
        gh<_i30.BusinessCardDbRepository>(),
        gh<_i26.AppDocumentsDbRepository>(),
      ),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i64.AddAppDocumentsUseCase>(
      () => _i64.AddAppDocumentsAddUseCaseImpl(
          gh<_i26.AppDocumentsDbRepository>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.factory<_i65.ChatsCubit>(() => _i65.ChatsCubit(
          gh<_i41.GetChatFeedObservableUseCase>(),
          gh<_i42.GetChatFeedUseCase>(),
          gh<_i12.LogService>(),
        ));
    gh.lazySingleton<_i66.GetHomeScreenFeedUseCase>(
      () => _i66.GetHomeScreenFeedUseCaseImpl(gh<_i48.GetUnreadChatsUseCase>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.factory<_i67.HomeCubit>(
        () => _i67.HomeCubit(gh<_i66.GetHomeScreenFeedUseCase>()));
    gh.factory<_i68.OAuthTryLoginUseCase>(
      () => _i68.OAuthTryLoginUseCaseImpl(
        gh<_i29.AuthProvider>(),
        gh<_i63.UserLogInUseCase>(),
        gh<_i12.LogService>(),
      ),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.factory<_i69.ProfileDocumentsCubit>(() => _i69.ProfileDocumentsCubit(
          gh<_i9.InitAppDocumentsUseCase>(),
          gh<_i38.GetAppDocumentsUseCase>(),
          gh<_i64.AddAppDocumentsUseCase>(),
          gh<_i50.RemoveAppDocumentUseCase>(),
          gh<_i35.EditAppDocumentUseCase>(),
          gh<_i21.ShareAppDocumentsUseCase>(),
          gh<_i18.OpenAppDocumentUseCase>(),
        ));
    gh.factory<_i70.SettingsCubit>(() => _i70.SettingsCubit(
          gh<_i39.GetBillingNotificationSettingsUseCase>(),
          gh<_i44.GetDarkModeSettingsUseCase>(),
          gh<_i47.GetSystemModeSettingsUseCase>(),
          gh<_i62.ThemeCubit>(),
        ));
    gh.lazySingleton<_i71.TasksApiService>(
      () => _i71.TasksApiService(
        gh<_i4.Constants>(),
        gh<_i6.DioProvider>(),
        gh<_i12.LogService>(),
        gh<_i11.LocaleInterceptor>(),
        gh<_i28.AuthInterceptor>(),
        gh<_i68.OAuthTryLoginUseCase>(),
        gh<_i14.NavigatorKeyProvider>(),
      ),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i72.TasksRepository>(
      () => _i72.TasksRepositoryImpl(gh<_i71.TasksApiService>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.factory<_i73.AuthCubit>(() => _i73.AuthCubit(
          gh<_i19.PushNotificationsProvider>(),
          gh<_i29.AuthProvider>(),
          gh<_i68.OAuthTryLoginUseCase>(),
          gh<_i12.LogService>(),
        ));
    gh.lazySingleton<_i74.CachedTasksRepository>(
      () => _i74.CachedTasksRepositoryImpl(gh<_i72.TasksRepository>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i75.ClearCacheTasksUseCase>(
      () => _i75.ClearCacheTasksUseCaseImpl(gh<_i74.CachedTasksRepository>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i76.GetTasksUseCase>(
      () => _i76.GetTasksUseCaseImpl(gh<_i74.CachedTasksRepository>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i77.SetCachedTaskStatusUseCase>(
      () =>
          _i77.SetCachedTaskStatusUseCaseImpl(gh<_i74.CachedTasksRepository>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i78.SetTaskStatusUseCase>(
      () => _i78.SetTaskStatusUseCaseImpl(gh<_i72.TasksRepository>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.factory<_i79.TasksCubit>(() => _i79.TasksCubit(
          gh<_i76.GetTasksUseCase>(),
          gh<_i77.SetCachedTaskStatusUseCase>(),
          gh<_i78.SetTaskStatusUseCase>(),
          gh<_i75.ClearCacheTasksUseCase>(),
          gh<_i12.LogService>(),
        ));
    gh.lazySingleton<_i80.UserLogOutUseCase>(
      () => _i80.UserLogOutUseCaseImpl(
        gh<_i33.ChatsRepository>(),
        gh<_i74.CachedTasksRepository>(),
        gh<_i23.UserService>(),
        gh<_i29.AuthProvider>(),
      ),
      registerFor: {
        _dev,
        _prod,
      },
    );
    return this;
  }
}
