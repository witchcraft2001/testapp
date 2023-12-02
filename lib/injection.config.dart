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
import 'package:shared_preferences/shared_preferences.dart' as _i29;
import 'package:sqflite/sqflite.dart' as _i10;
import 'package:terralinkapp/common/constants.dart' as _i9;
import 'package:terralinkapp/data/data_sources/cache/news_cached_data_source.dart'
    as _i95;
import 'package:terralinkapp/data/data_sources/cache/tasks_eas_cached_data_source.dart'
    as _i140;
import 'package:terralinkapp/data/data_sources/cache/tasks_sbs_cached_data_source.dart'
    as _i120;
import 'package:terralinkapp/data/data_sources/cache/tasks_summary_cached_data_source.dart'
    as _i123;
import 'package:terralinkapp/data/data_sources/cache/tasks_vacation_cached_data_source.dart'
    as _i124;
import 'package:terralinkapp/data/data_sources/local/api_settings_presets/api_settings_presets_data_source.dart'
    as _i3;
import 'package:terralinkapp/data/data_sources/local/database/app_documents_db_data_source.dart'
    as _i37;
import 'package:terralinkapp/data/data_sources/local/database/business_card_db_data_source.dart'
    as _i42;
import 'package:terralinkapp/data/data_sources/local/database/chats_db_data_source.dart'
    as _i46;
import 'package:terralinkapp/data/data_sources/local/database/messages_db_data_source.dart'
    as _i17;
import 'package:terralinkapp/data/data_sources/local/file/file_storage_data_source.dart'
    as _i48;
import 'package:terralinkapp/data/data_sources/local/shared_preferences/settings_data_source.dart'
    as _i25;
import 'package:terralinkapp/data/data_sources/remote/news_remote_data_source.dart'
    as _i65;
import 'package:terralinkapp/data/data_sources/remote/tasks_eas_remote_data_source.dart'
    as _i119;
import 'package:terralinkapp/data/data_sources/remote/tasks_sbs_remote_data_source.dart'
    as _i112;
import 'package:terralinkapp/data/data_sources/remote/tasks_summary_remote_data_source.dart'
    as _i114;
import 'package:terralinkapp/data/data_sources/remote/tasks_vacation_remote_data_source.dart'
    as _i115;
import 'package:terralinkapp/data/providers/api_settings_provider.dart' as _i36;
import 'package:terralinkapp/data/providers/auth_provider.dart' as _i80;
import 'package:terralinkapp/data/providers/dio_provider.dart' as _i11;
import 'package:terralinkapp/data/providers/navigator_key_provider.dart'
    as _i18;
import 'package:terralinkapp/data/providers/push_notifications_provider.dart'
    as _i21;
import 'package:terralinkapp/data/providers/uuid_generator.dart' as _i34;
import 'package:terralinkapp/data/repositories/cache/news_cached_repository.dart'
    as _i160;
import 'package:terralinkapp/data/repositories/cache/tasks_eas_cached_repository.dart'
    as _i142;
import 'package:terralinkapp/data/repositories/cache/tasks_sbs_cached_repository.dart'
    as _i122;
import 'package:terralinkapp/data/repositories/cache/tasks_vacation_cached_repository.dart'
    as _i126;
import 'package:terralinkapp/data/repositories/di_scope_repository.dart'
    as _i23;
import 'package:terralinkapp/data/repositories/local/api_settings_presets/api_settings_presets_repository.dart'
    as _i4;
import 'package:terralinkapp/data/repositories/local/database/app_documents_db_repository.dart'
    as _i39;
import 'package:terralinkapp/data/repositories/local/database/business_card_db_repository.dart'
    as _i44;
import 'package:terralinkapp/data/repositories/local/file/avatar_storage_repository_impl.dart'
    as _i82;
import 'package:terralinkapp/data/repositories/local/notifications/app_remote_messages_repository.dart'
    as _i6;
import 'package:terralinkapp/data/repositories/local/shared_preferences/settings_shared_preferences_repository.dart'
    as _i27;
import 'package:terralinkapp/data/repositories/mock/chat_mock_repository.dart'
    as _i158;
import 'package:terralinkapp/data/repositories/mock/news_mock_repository.dart'
    as _i159;
import 'package:terralinkapp/data/repositories/remote/chats_remote_repository.dart'
    as _i86;
import 'package:terralinkapp/data/services/app_parsing_tags_service.dart'
    as _i5;
import 'package:terralinkapp/data/services/converters/businesscard_to_vcard_converter.dart'
    as _i45;
import 'package:terralinkapp/data/services/http/interceptors/auth_interceptor.dart'
    as _i41;
import 'package:terralinkapp/data/services/http/interceptors/locale_interceptor.dart'
    as _i15;
import 'package:terralinkapp/data/services/http/news_api_service.dart' as _i64;
import 'package:terralinkapp/data/services/http/overrides/api_http_overrides.dart'
    as _i35;
import 'package:terralinkapp/data/services/http/tasks_sbs_api_service.dart'
    as _i111;
import 'package:terralinkapp/data/services/http/tasks_summary_api_service.dart'
    as _i113;
import 'package:terralinkapp/data/services/local_notifications_service.dart'
    as _i63;
import 'package:terralinkapp/data/services/log_service.dart' as _i16;
import 'package:terralinkapp/data/services/timezone_service.dart' as _i32;
import 'package:terralinkapp/data/services/user_service.dart' as _i33;
import 'package:terralinkapp/data/services/websocket_service.dart' as _i78;
import 'package:terralinkapp/data/use_cases/auth/get_background_data_use_case.dart'
    as _i156;
import 'package:terralinkapp/data/use_cases/auth/has_cached_account_use_case.dart'
    as _i94;
import 'package:terralinkapp/data/use_cases/auth/oauth_try_login_use_case.dart'
    as _i110;
import 'package:terralinkapp/data/use_cases/auth/refresh_auth_settings_use_case.dart'
    as _i98;
import 'package:terralinkapp/data/use_cases/auth/user_log_in_use_case.dart'
    as _i107;
import 'package:terralinkapp/data/use_cases/auth/user_log_out_use_case.dart'
    as _i149;
import 'package:terralinkapp/data/use_cases/business_cards/get_all_business_cards_use_case.dart'
    as _i50;
import 'package:terralinkapp/data/use_cases/business_cards/get_business_card_by_id_use_case.dart'
    as _i53;
import 'package:terralinkapp/data/use_cases/business_cards/get_vcard_from_business_card_use_case.dart'
    as _i61;
import 'package:terralinkapp/data/use_cases/business_cards/remove_business_card_by_id_use_case.dart'
    as _i67;
import 'package:terralinkapp/data/use_cases/business_cards/save_business_card_use_case.dart'
    as _i69;
import 'package:terralinkapp/data/use_cases/business_cards/save_vcard_file_from_business_card_use_case.dart'
    as _i70;
import 'package:terralinkapp/data/use_cases/business_cards/share_vcard_from_bussiness_card_use_case.dart'
    as _i76;
import 'package:terralinkapp/data/use_cases/chat/clear_chat_history_use_case.dart'
    as _i87;
import 'package:terralinkapp/data/use_cases/chat/get_all_messages_by_chat_id_use_case.dart'
    as _i88;
import 'package:terralinkapp/data/use_cases/chat/get_chat_info_by_id_use_case.dart'
    as _i91;
import 'package:terralinkapp/data/use_cases/chat/remove_message_by_id_use_case.dart'
    as _i100;
import 'package:terralinkapp/data/use_cases/chat/reset_new_messages_use_case.dart'
    as _i102;
import 'package:terralinkapp/data/use_cases/chat/send_chat_message_use_case.dart'
    as _i103;
import 'package:terralinkapp/data/use_cases/chat/send_form_chat_message_use_case.dart'
    as _i104;
import 'package:terralinkapp/data/use_cases/chat/send_menu_item_chat_message_use_case.dart'
    as _i105;
import 'package:terralinkapp/data/use_cases/chats/get_chat_feed_observable_use_case.dart'
    as _i89;
import 'package:terralinkapp/data/use_cases/chats/get_chat_feed_use_case.dart'
    as _i90;
import 'package:terralinkapp/data/use_cases/documents/add_app_documents_use_case.dart'
    as _i79;
import 'package:terralinkapp/data/use_cases/documents/edit_app_documents_use_case.dart'
    as _i47;
import 'package:terralinkapp/data/use_cases/documents/get_app_documents_use_case.dart'
    as _i51;
import 'package:terralinkapp/data/use_cases/documents/init_case_app_documents_use_case.dart'
    as _i13;
import 'package:terralinkapp/data/use_cases/documents/open_app_document_use_case.dart'
    as _i19;
import 'package:terralinkapp/data/use_cases/documents/remove_case_app_documents_use_case.dart'
    as _i66;
import 'package:terralinkapp/data/use_cases/documents/share_app_documents_use_case.dart'
    as _i28;
import 'package:terralinkapp/data/use_cases/feedback/send_feedback_use_case.dart'
    as _i24;
import 'package:terralinkapp/data/use_cases/news/clear_cache_news_use_case.dart'
    as _i7;
import 'package:terralinkapp/data/use_cases/news/get_all_news_use_case.dart'
    as _i92;
import 'package:terralinkapp/data/use_cases/profile/get_profile_avatar_use_case.dart'
    as _i93;
import 'package:terralinkapp/data/use_cases/profile/set_profile_avatar_use_case.dart'
    as _i106;
import 'package:terralinkapp/data/use_cases/settings/get_all_api_settings_use_case.dart'
    as _i49;
import 'package:terralinkapp/data/use_cases/settings/get_api_settings_presets_use_case.dart'
    as _i12;
import 'package:terralinkapp/data/use_cases/settings/get_billing_notification_settings_use_case.dart'
    as _i52;
import 'package:terralinkapp/data/use_cases/settings/get_dark_mode_settings_use_case.dart'
    as _i54;
import 'package:terralinkapp/data/use_cases/settings/get_news_api_base_url_use_case.dart'
    as _i55;
import 'package:terralinkapp/data/use_cases/settings/get_region_settings_use_case.dart'
    as _i56;
import 'package:terralinkapp/data/use_cases/settings/get_system_mode_settings_use_case.dart'
    as _i57;
import 'package:terralinkapp/data/use_cases/settings/get_tasks_sbs_api_base_url_use_case.dart'
    as _i59;
import 'package:terralinkapp/data/use_cases/settings/get_tasks_summary_api_base_url_use_case.dart'
    as _i60;
import 'package:terralinkapp/data/use_cases/settings/get_ws_url_use_case.dart'
    as _i62;
import 'package:terralinkapp/data/use_cases/settings/set_all_api_settings_use_case.dart'
    as _i71;
import 'package:terralinkapp/data/use_cases/settings/set_billing_notification_settings_use_case.dart'
    as _i72;
import 'package:terralinkapp/data/use_cases/settings/set_dark_mode_settings_use_case.dart'
    as _i73;
import 'package:terralinkapp/data/use_cases/settings/set_region_settings_use_case.dart'
    as _i74;
import 'package:terralinkapp/data/use_cases/settings/set_system_mode_settings_use_case.dart'
    as _i75;
import 'package:terralinkapp/data/use_cases/tasks_eas/clear_cache_tasks_eas_use_case.dart'
    as _i150;
import 'package:terralinkapp/data/use_cases/tasks_eas/complete_cached_task_eas_use_case.dart'
    as _i151;
import 'package:terralinkapp/data/use_cases/tasks_eas/complete_task_eas_use_case.dart'
    as _i133;
import 'package:terralinkapp/data/use_cases/tasks_eas/get_tasks_eas_use_case.dart'
    as _i152;
import 'package:terralinkapp/data/use_cases/tasks_sbs_late/clear_cache_tasks_sbs_late_use_case.dart'
    as _i127;
import 'package:terralinkapp/data/use_cases/tasks_sbs_late/complete_cached_tasks_late_sbs_use_case.dart'
    as _i132;
import 'package:terralinkapp/data/use_cases/tasks_sbs_late/complete_tasks_sbs_late_use_case.dart'
    as _i118;
import 'package:terralinkapp/data/use_cases/tasks_sbs_late/get_tasks_sbs_late_use_case.dart'
    as _i135;
import 'package:terralinkapp/data/use_cases/tasks_sbs_weekly/clear_cache_tasks_sbs_weekly_use_case.dart'
    as _i128;
import 'package:terralinkapp/data/use_cases/tasks_sbs_weekly/complete_cached_task_sbs_weekly_use_case.dart'
    as _i130;
import 'package:terralinkapp/data/use_cases/tasks_sbs_weekly/complete_task_sbs_weekly_use_case.dart'
    as _i116;
import 'package:terralinkapp/data/use_cases/tasks_sbs_weekly/get_tasks_sbs_weekly_use_case.dart'
    as _i136;
import 'package:terralinkapp/data/use_cases/tasks_summary/get_tasks_summary_use_case.dart'
    as _i137;
import 'package:terralinkapp/data/use_cases/tasks_vacation/clear_cache_tasks_vacation_use_case.dart'
    as _i129;
import 'package:terralinkapp/data/use_cases/tasks_vacation/complete_cached_task_vacation_use_case.dart'
    as _i131;
import 'package:terralinkapp/data/use_cases/tasks_vacation/complete_task_vacation_use_case.dart'
    as _i117;
import 'package:terralinkapp/data/use_cases/tasks_vacation/get_tasks_vacation_use_case.dart'
    as _i138;
import 'package:terralinkapp/di/modules/app_module.dart' as _i161;
import 'package:terralinkapp/domain/repositories/app_documents_repository.dart'
    as _i38;
import 'package:terralinkapp/domain/repositories/avatar_storage_repository.dart'
    as _i81;
import 'package:terralinkapp/domain/repositories/business_card_repository.dart'
    as _i43;
import 'package:terralinkapp/domain/repositories/chats_repository.dart' as _i85;
import 'package:terralinkapp/domain/repositories/news_repository.dart' as _i8;
import 'package:terralinkapp/domain/repositories/scope_repository.dart' as _i22;
import 'package:terralinkapp/domain/repositories/settings_repository.dart'
    as _i26;
import 'package:terralinkapp/domain/repositories/tasks_eas_repository.dart'
    as _i141;
import 'package:terralinkapp/domain/repositories/tasks_sbs_repository.dart'
    as _i121;
import 'package:terralinkapp/domain/repositories/tasks_vacation_repository.dart'
    as _i125;
import 'package:terralinkapp/presentation/navigation/app_navigation_service.dart'
    as _i40;
import 'package:terralinkapp/presentation/screens/api_settings/domain/cubits/api_settings_cubit.dart'
    as _i108;
import 'package:terralinkapp/presentation/screens/auth/auth_cubit.dart'
    as _i157;
import 'package:terralinkapp/presentation/screens/business_cards/list/business_cards_list_cubit.dart'
    as _i84;
import 'package:terralinkapp/presentation/screens/business_cards/show/business_card_show_cubit.dart'
    as _i83;
import 'package:terralinkapp/presentation/screens/chat/domain/cubits/chat_cubit.dart'
    as _i109;
import 'package:terralinkapp/presentation/screens/news/domain/cubits/news_cubit.dart'
    as _i96;
import 'package:terralinkapp/presentation/screens/profile_documents/domain/cubits/profile_documents_cubit.dart'
    as _i97;
import 'package:terralinkapp/presentation/screens/region/domain/cubits/region_cubit.dart'
    as _i99;
import 'package:terralinkapp/presentation/screens/settings/domain/cubits/settings_cubit.dart'
    as _i153;
import 'package:terralinkapp/presentation/screens/tasks/eas/data/data_source/tasks_eas_attachments_db_data_source.dart'
    as _i30;
import 'package:terralinkapp/presentation/screens/tasks/eas/data/repositories/tasks_eas_attachments_repository.dart'
    as _i31;
import 'package:terralinkapp/presentation/screens/tasks/eas/data/use_cases/attachments/download_task_eas_attachment_use_case.dart'
    as _i134;
import 'package:terralinkapp/presentation/screens/tasks/eas/data/use_cases/attachments/get_task_eas_attachment_use_case.dart'
    as _i58;
import 'package:terralinkapp/presentation/screens/tasks/eas/data/use_cases/attachments/init_task_eas_attachments_directory_use_case.dart'
    as _i14;
import 'package:terralinkapp/presentation/screens/tasks/eas/data/use_cases/attachments/open_task_eas_attachment_use_case.dart'
    as _i20;
import 'package:terralinkapp/presentation/screens/tasks/eas/data/use_cases/attachments/remove_not_actual_task_eas_attachments_use_case.dart'
    as _i101;
import 'package:terralinkapp/presentation/screens/tasks/eas/data/use_cases/attachments/remove_task_eas_attachment_use_case.dart'
    as _i68;
import 'package:terralinkapp/presentation/screens/tasks/eas/domain/cubits/task_eas_attachment_cubit.dart'
    as _i139;
import 'package:terralinkapp/presentation/screens/tasks/eas/domain/cubits/tasks_eas_cubit.dart'
    as _i154;
import 'package:terralinkapp/presentation/screens/tasks/sbs_late/domain/cubits/tasks_sbs_late_cubit.dart'
    as _i143;
import 'package:terralinkapp/presentation/screens/tasks/sbs_weekly/domain/cubits/tasks_sbs_weekly_cubit.dart'
    as _i145;
import 'package:terralinkapp/presentation/screens/tasks/summary/domain/cubits/tasks_eas_summary_cubit.dart'
    as _i155;
import 'package:terralinkapp/presentation/screens/tasks/summary/domain/cubits/tasks_sbs_late_summary_cubit.dart'
    as _i144;
import 'package:terralinkapp/presentation/screens/tasks/summary/domain/cubits/tasks_sbs_weekly_summary_cubit.dart'
    as _i146;
import 'package:terralinkapp/presentation/screens/tasks/summary/domain/cubits/tasks_vacation_summary_cubit.dart'
    as _i148;
import 'package:terralinkapp/presentation/screens/tasks/vacations/domain/cubits/tasks_vacation_cubit.dart'
    as _i147;
import 'package:terralinkapp/presentation/theme/domain/cubits/theme_cubit.dart'
    as _i77;

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
    gh.lazySingleton<_i14.InitTaskEasAttachmentsDirectoryUseCase>(
      () => _i14.InitTaskEasAttachmentsDirectoryUseCaseImpl(),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i15.LocaleInterceptor>(() => _i15.LocaleInterceptor());
    gh.lazySingleton<_i16.LogService>(
      () => _i16.LogService(),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i17.MessagesDbDataSource>(
      () => _i17.MessagesDbDataSourceImpl(gh<_i10.Database>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i18.NavigatorKeyProvider>(
      () => _i18.NavigatorKeyProvider(),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i19.OpenAppDocumentUseCase>(
      () => _i19.OpenAppDocumentUseCaseImpl(),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i20.OpenTaskEasAttachmentUseCase>(
      () => _i20.OpenTaskEasAttachmentUseCaseImpl(),
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
    await gh.factoryAsync<_i29.SharedPreferences>(
      () => appModule.providePrefs,
      preResolve: true,
    );
    gh.lazySingleton<_i30.TasksEasAttachmentsDbDataSource>(
      () => _i30.TasksEasAttachmentsDbDataSourceImpl(gh<_i10.Database>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i31.TasksEasAttachmentsRepository>(
      () => _i31.TasksEasAttachmentsRepositoryImpl(
          dbDataSource: gh<_i30.TasksEasAttachmentsDbDataSource>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i32.TimeZoneService>(
      () => _i32.TimeZoneServiceImpl(),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i33.UserService>(
      () => _i33.UserServiceImpl(),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i34.UuidGenerator>(
      () => _i34.UuidGeneratorImpl(),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i35.ApiHttpOverrides>(
      () => _i35.ApiHttpOverrides(gh<_i9.Constants>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i36.ApiSettingsProvider>(() => _i36.ApiSettingsProvider(
          gh<_i25.SettingsDataSource>(),
          gh<_i9.Constants>(),
        ));
    gh.lazySingleton<_i37.AppDocumentsDbDataSource>(
      () => _i37.AppDocumentsDbDataSourceImpl(gh<_i10.Database>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i38.AppDocumentsRepository>(
      () => _i39.AppDocumentsDbRepository(
          dataSource: gh<_i37.AppDocumentsDbDataSource>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i40.AppNavigationService>(
      () => _i40.AppNavigationService(gh<_i18.NavigatorKeyProvider>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i41.AuthInterceptor>(
        () => _i41.AuthInterceptor(gh<_i33.UserService>()));
    gh.lazySingleton<_i42.BusinessCardDbDataSource>(
      () => _i42.BusinessCardDbDataSourceImpl(gh<_i10.Database>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i43.BusinessCardRepository>(
      () => _i44.BusinessCardDbRepository(
          dataSource: gh<_i42.BusinessCardDbDataSource>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.factory<_i45.BusinessCardToVCardConverter>(
        () => _i45.BusinessCardToVCardConverter(gh<_i9.Constants>()));
    gh.lazySingleton<_i46.ChatsDbDataSource>(
      () => _i46.ChatsDbDataSourceImpl(gh<_i10.Database>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i47.EditAppDocumentUseCase>(
      () => _i47.EditAppDocumentUseCaseImpl(gh<_i38.AppDocumentsRepository>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i48.FileStorageDataSource>(
      () => _i48.ImageStorageDataSourceImpl(logService: gh<_i16.LogService>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.factory<_i49.GetAllApiSettingsUseCase>(
        () => _i49.GetAllApiSettingsUseCase(gh<_i36.ApiSettingsProvider>()));
    gh.lazySingleton<_i50.GetAllBusinessCardsUseCase>(
      () => _i50.GetAllBusinessCardsUseCaseImpl(
          gh<_i43.BusinessCardRepository>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i51.GetAppDocumentsUseCase>(
      () => _i51.GetAppDocumentsUseCaseImpl(gh<_i38.AppDocumentsRepository>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i52.GetBillingNotificationSettingsUseCase>(
      () => _i52.GetBillingNotificationSettingsUseCaseImpl(
          gh<_i25.SettingsDataSource>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i53.GetBusinessCardByIdUseCase>(
      () => _i53.GetBusinessCardByIdUseCaseImpl(
          gh<_i43.BusinessCardRepository>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i54.GetDarkModeSettingsUseCase>(
      () => _i54.GetDarkModeSettingsUseCaseImpl(gh<_i25.SettingsDataSource>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.factory<_i55.GetNewsApiBaseUrlUseCase>(
        () => _i55.GetNewsApiBaseUrlUseCase(gh<_i36.ApiSettingsProvider>()));
    gh.lazySingleton<_i56.GetRegionSettingsUseCase>(
      () => _i56.GetRegionSettingsUseCaseImpl(gh<_i25.SettingsDataSource>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i57.GetSystemModeSettingsUseCase>(
      () =>
          _i57.GetSystemModeSettingsUseCaseImpl(gh<_i25.SettingsDataSource>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i58.GetTaskEasAttachmentUseCase>(
      () => _i58.GetTaskEasAttachmentUseCaseImpl(
          gh<_i31.TasksEasAttachmentsRepository>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.factory<_i59.GetTasksSbsApiBaseUrlUseCase>(() =>
        _i59.GetTasksSbsApiBaseUrlUseCase(gh<_i36.ApiSettingsProvider>()));
    gh.factory<_i60.GetTasksSummaryApiBaseUrlUseCase>(() =>
        _i60.GetTasksSummaryApiBaseUrlUseCase(gh<_i36.ApiSettingsProvider>()));
    gh.factory<_i61.GetVCardFromBusinessCardUseCase>(() =>
        _i61.GetVCardFromBusinessCardUseCase(
            gh<_i45.BusinessCardToVCardConverter>()));
    gh.factory<_i62.GetWsUrlUseCase>(
        () => _i62.GetWsUrlUseCase(gh<_i36.ApiSettingsProvider>()));
    gh.lazySingleton<_i63.LocalNotificationsService>(
      () => _i63.LocalNotificationsServiceImpl(
        gh<_i18.NavigatorKeyProvider>(),
        gh<_i6.AppRemoteMessagesRepository>(),
        gh<_i16.LogService>(),
      ),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i64.NewsApiService>(
      () => _i64.NewsApiService(
        gh<_i11.DioProvider>(),
        gh<_i16.LogService>(),
        gh<_i55.GetNewsApiBaseUrlUseCase>(),
      ),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i65.NewsRemoteDataSource>(
      () => _i65.NewsRemoteDataSourceImpl(gh<_i64.NewsApiService>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i66.RemoveAppDocumentUseCase>(
      () =>
          _i66.RemoveAppDocumentUseCaseImpl(gh<_i38.AppDocumentsRepository>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i67.RemoveBusinessCardByIdUseCase>(
      () => _i67.RemoveBusinessCardByIdUseCaseImpl(
          gh<_i43.BusinessCardRepository>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i68.RemoveTaskEasAttachmentUseCase>(
      () => _i68.RemoveTaskEasAttachmentUseCaseImpl(
          gh<_i31.TasksEasAttachmentsRepository>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i69.SaveBusinessCardUseCase>(
      () => _i69.SaveBusinessCardUseCaseImpl(gh<_i43.BusinessCardRepository>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.factory<_i70.SaveVCardFileFromBusinessCardUseCase>(() =>
        _i70.SaveVCardFileFromBusinessCardUseCase(
            gh<_i61.GetVCardFromBusinessCardUseCase>()));
    gh.factory<_i71.SetAllApiSettingsUseCase>(
        () => _i71.SetAllApiSettingsUseCase(gh<_i36.ApiSettingsProvider>()));
    gh.lazySingleton<_i72.SetBillingNotificationSettingsUseCase>(
      () => _i72.SetBillingNotificationSettingsUseCaseImpl(
        gh<_i25.SettingsDataSource>(),
        gh<_i63.LocalNotificationsService>(),
      ),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i73.SetDarkModeSettingsUseCase>(
      () => _i73.SetDarkModeSettingsUseCaseImpl(gh<_i25.SettingsDataSource>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i74.SetRegionSettingsUseCase>(
      () => _i74.SetRegionSettingsUseCaseImpl(gh<_i25.SettingsDataSource>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i75.SetSystemModeSettingsUseCase>(
      () =>
          _i75.SetSystemModeSettingsUseCaseImpl(gh<_i25.SettingsDataSource>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.factory<_i76.ShareVCardFromBusinessCardUseCase>(() =>
        _i76.ShareVCardFromBusinessCardUseCase(
            gh<_i70.SaveVCardFileFromBusinessCardUseCase>()));
    gh.lazySingleton<_i77.ThemeCubit>(
      () => _i77.ThemeCubit(
        gh<_i54.GetDarkModeSettingsUseCase>(),
        gh<_i73.SetDarkModeSettingsUseCase>(),
        gh<_i57.GetSystemModeSettingsUseCase>(),
        gh<_i75.SetSystemModeSettingsUseCase>(),
      ),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i78.WebsocketService>(
      () => _i78.WebsocketServiceImpl(
        gh<_i33.UserService>(),
        gh<_i21.PushNotificationsProvider>(),
        gh<_i16.LogService>(),
        gh<_i62.GetWsUrlUseCase>(),
      ),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i79.AddAppDocumentsUseCase>(
      () =>
          _i79.AddAppDocumentsAddUseCaseImpl(gh<_i38.AppDocumentsRepository>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i80.AuthProvider>(
      () => _i80.AuthProvider(
        gh<_i9.Constants>(),
        gh<_i18.NavigatorKeyProvider>(),
        gh<_i49.GetAllApiSettingsUseCase>(),
      ),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i81.AvatarStorageRepository>(
      () => _i82.AvatarStorageRepositoryImpl(
          dataSource: gh<_i48.FileStorageDataSource>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.factoryParam<_i83.BusinessCardShowCubit, int, dynamic>((
      id,
      _,
    ) =>
        _i83.BusinessCardShowCubit(
          id,
          gh<_i53.GetBusinessCardByIdUseCase>(),
          gh<_i16.LogService>(),
          gh<_i76.ShareVCardFromBusinessCardUseCase>(),
          gh<_i61.GetVCardFromBusinessCardUseCase>(),
        ));
    gh.factory<_i84.BusinessCardsListCubit>(() => _i84.BusinessCardsListCubit(
          gh<_i50.GetAllBusinessCardsUseCase>(),
          gh<_i67.RemoveBusinessCardByIdUseCase>(),
          gh<_i76.ShareVCardFromBusinessCardUseCase>(),
          gh<_i16.LogService>(),
        ));
    gh.lazySingleton<_i85.ChatsRepository>(
      () => _i86.ChatsRemoteRepository(
        gh<_i78.WebsocketService>(),
        gh<_i46.ChatsDbDataSource>(),
        gh<_i34.UuidGenerator>(),
        gh<_i33.UserService>(),
        gh<_i17.MessagesDbDataSource>(),
        gh<_i16.LogService>(),
      ),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.factory<_i87.ClearChatHistoryUseCase>(
        () => _i87.ClearChatHistoryUseCase(gh<_i85.ChatsRepository>()));
    gh.lazySingleton<_i88.GetAllMessagesByChatIdUseCase>(
      () => _i88.GetAllMessagesByChatIdUseCaseImpl(gh<_i85.ChatsRepository>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i89.GetChatFeedObservableUseCase>(
      () => _i89.GetChatFeedObservableUseCaseImpl(gh<_i85.ChatsRepository>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i90.GetChatFeedUseCase>(
      () => _i90.GetChatFeedUseCaseImpl(gh<_i85.ChatsRepository>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i91.GetChatInfoByIdUseCase>(
      () => _i91.GetChatInfoByIdUseCaseImpl(gh<_i85.ChatsRepository>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.factory<_i92.GetNewsUseCase>(
      () => _i92.GetNewsUseCaseImpl(
        gh<_i8.NewsRepository>(),
        gh<_i56.GetRegionSettingsUseCase>(),
      ),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i93.GetProfileAvatarUseCase>(
      () => _i93.GetProfileAvatarUseCaseImpl(
        settingsRepository: gh<_i26.SettingsRepository>(),
        avatarStorageRepository: gh<_i81.AvatarStorageRepository>(),
      ),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.factory<_i94.HasCachedAccountUseCase>(
        () => _i94.HasCachedAccountUseCase(gh<_i80.AuthProvider>()));
    gh.lazySingleton<_i95.NewsCachedDataSource>(
      () => _i95.NewsCachedDataSourceImpl(
          newsRepository: gh<_i65.NewsRemoteDataSource>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.factory<_i96.NewsCubit>(() => _i96.NewsCubit(
          gh<_i92.GetNewsUseCase>(),
          gh<_i7.ClearCacheNewsUseCase>(),
          gh<_i16.LogService>(),
        ));
    gh.factory<_i97.ProfileDocumentsCubit>(() => _i97.ProfileDocumentsCubit(
          gh<_i13.InitAppDocumentsUseCase>(),
          gh<_i51.GetAppDocumentsUseCase>(),
          gh<_i79.AddAppDocumentsUseCase>(),
          gh<_i66.RemoveAppDocumentUseCase>(),
          gh<_i47.EditAppDocumentUseCase>(),
          gh<_i28.ShareAppDocumentsUseCase>(),
          gh<_i19.OpenAppDocumentUseCase>(),
        ));
    gh.factory<_i98.RefreshAuthSettingsUseCase>(
        () => _i98.RefreshAuthSettingsUseCase(gh<_i80.AuthProvider>()));
    gh.lazySingleton<_i99.RegionCubit>(
      () => _i99.RegionCubit(
        gh<_i56.GetRegionSettingsUseCase>(),
        gh<_i74.SetRegionSettingsUseCase>(),
      ),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i100.RemoveMessageByIdUseCase>(
      () => _i100.RemoveMessageByIdUseCaseImpl(gh<_i85.ChatsRepository>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i101.RemoveNotActualTaskEasAttachmentsUseCase>(
      () => _i101.RemoveNotActualTaskEasAttachmentsUseCaseImpl(
        gh<_i31.TasksEasAttachmentsRepository>(),
        gh<_i68.RemoveTaskEasAttachmentUseCase>(),
      ),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i102.ResetNewMessagesUseCase>(
      () => _i102.ResetNewMessagesUseCaseImpl(gh<_i85.ChatsRepository>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i103.SendChatMessageUseCase>(
      () => _i103.SendChatMessageUseCaseImpl(gh<_i85.ChatsRepository>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i104.SendFormChatMessageUseCase>(
      () => _i104.SendFormChatMessageUseCaseImpl(gh<_i85.ChatsRepository>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i105.SendMenuItemChatMessageUseCase>(
      () =>
          _i105.SendMenuItemChatMessageUseCaseImpl(gh<_i85.ChatsRepository>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i106.SetProfileAvatarUseCase>(
      () => _i106.SetProfileAvatarUseCaseImpl(
        settingsRepository: gh<_i26.SettingsRepository>(),
        avatarStorageRepository: gh<_i81.AvatarStorageRepository>(),
      ),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.factory<_i107.UserLogInUseCase>(
      () => _i107.UserLogInUseCaseImpl(
        userService: gh<_i33.UserService>(),
        chatsRepository: gh<_i85.ChatsRepository>(),
        settingsRepository: gh<_i26.SettingsRepository>(),
        businessCardRepository: gh<_i43.BusinessCardRepository>(),
        appDocumentsRepository: gh<_i38.AppDocumentsRepository>(),
        removeAllTaskEasAttachmentUseCase:
            gh<_i101.RemoveNotActualTaskEasAttachmentsUseCase>(),
        scopeRepository: gh<_i22.ScopeRepository>(),
        localNotificationsService: gh<_i63.LocalNotificationsService>(),
      ),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.factory<_i108.ApiSettingsCubit>(() => _i108.ApiSettingsCubit(
          gh<_i71.SetAllApiSettingsUseCase>(),
          gh<_i49.GetAllApiSettingsUseCase>(),
          gh<_i98.RefreshAuthSettingsUseCase>(),
          gh<_i87.ClearChatHistoryUseCase>(),
          gh<_i12.GetApiSettingsPresetsUseCase>(),
        ));
    gh.factory<_i109.ChatCubit>(() => _i109.ChatCubit(
          gh<_i89.GetChatFeedObservableUseCase>(),
          gh<_i90.GetChatFeedUseCase>(),
          gh<_i91.GetChatInfoByIdUseCase>(),
          gh<_i88.GetAllMessagesByChatIdUseCase>(),
          gh<_i85.ChatsRepository>(),
          gh<_i33.UserService>(),
          gh<_i103.SendChatMessageUseCase>(),
          gh<_i105.SendMenuItemChatMessageUseCase>(),
          gh<_i102.ResetNewMessagesUseCase>(),
          gh<_i100.RemoveMessageByIdUseCase>(),
          gh<_i104.SendFormChatMessageUseCase>(),
          gh<_i16.LogService>(),
        ));
    gh.factory<_i110.OAuthTryLoginUseCase>(
      () => _i110.OAuthTryLoginUseCaseImpl(
        gh<_i80.AuthProvider>(),
        gh<_i107.UserLogInUseCase>(),
        gh<_i16.LogService>(),
      ),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i111.TasksSbsApiService>(
      () => _i111.TasksSbsApiService(
        gh<_i59.GetTasksSbsApiBaseUrlUseCase>(),
        gh<_i11.DioProvider>(),
        gh<_i16.LogService>(),
        gh<_i15.LocaleInterceptor>(),
        gh<_i41.AuthInterceptor>(),
        gh<_i110.OAuthTryLoginUseCase>(),
        gh<_i18.NavigatorKeyProvider>(),
      ),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i112.TasksSbsRemoteDataSource>(
      () => _i112.TasksSbsRemoteDataSourceImpl(gh<_i111.TasksSbsApiService>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i113.TasksSummaryApiService>(
      () => _i113.TasksSummaryApiService(
        gh<_i60.GetTasksSummaryApiBaseUrlUseCase>(),
        gh<_i11.DioProvider>(),
        gh<_i16.LogService>(),
        gh<_i15.LocaleInterceptor>(),
        gh<_i41.AuthInterceptor>(),
        gh<_i110.OAuthTryLoginUseCase>(),
        gh<_i18.NavigatorKeyProvider>(),
      ),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i114.TasksSummaryRemoteDataSource>(
      () => _i114.TasksSummaryRemoteDataSourceImpl(
          gh<_i113.TasksSummaryApiService>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i115.TasksVacationRemoteDataSource>(
      () => _i115.TasksVacationRemoteDataSourceImpl(
          gh<_i113.TasksSummaryApiService>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i116.CompleteTaskSbsWeeklyUseCase>(
      () => _i116.CompleteTaskSbsWeeklyUseCaseImpl(
          gh<_i112.TasksSbsRemoteDataSource>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i117.CompleteTaskVacationUseCase>(
      () => _i117.CompleteTaskVacationUseCaseImpl(
          gh<_i115.TasksVacationRemoteDataSource>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i118.CompleteTasksSbsLateUseCase>(
      () => _i118.CompleteTaskSbsLateUseCaseImpl(
          gh<_i112.TasksSbsRemoteDataSource>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i119.TasksEasRemoteDataSource>(
      () => _i119.TasksEasRemoteDataSourceImpl(
          gh<_i113.TasksSummaryApiService>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i120.TasksSbsCachedDataSource>(
      () => _i120.TasksSbsCachedDataSourceImpl(
          gh<_i112.TasksSbsRemoteDataSource>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i121.TasksSbsRepository>(
      () => _i122.TasksSbsCachedRepository(
          dataSource: gh<_i120.TasksSbsCachedDataSource>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i123.TasksSummaryCachedDataSource>(
      () => _i123.TasksSummaryCachedDataSourceImpl(
          gh<_i114.TasksSummaryRemoteDataSource>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i124.TasksVacationCachedDataSource>(
      () => _i124.TasksEasCachedDataSourceImpl(
          gh<_i115.TasksVacationRemoteDataSource>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i125.TasksVacationRepository>(
      () => _i126.TasksVacationCachedRepository(
          dataSource: gh<_i124.TasksVacationCachedDataSource>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i127.ClearCacheTasksSbsLateUseCase>(
      () => _i127.ClearCacheTasksSbsLateUseCaseImpl(
          gh<_i120.TasksSbsCachedDataSource>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i128.ClearCacheTasksSbsWeeklyUseCase>(
      () => _i128.ClearCacheTasksSbsWeeklyUseCaseImpl(
          gh<_i120.TasksSbsCachedDataSource>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i129.ClearCacheTasksVacationUseCase>(
      () => _i129.ClearCacheTasksVacationUseCaseImpl(
          gh<_i124.TasksVacationCachedDataSource>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i130.CompleteCachedTaskSbsWeeklyUseCase>(
      () => _i130.CompleteCachedTaskSbsWeeklyUseCaseImpl(
          gh<_i121.TasksSbsRepository>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i131.CompleteCachedTaskVacationUseCase>(
      () => _i131.CompleteCachedTaskVacationUseCaseImpl(
          gh<_i125.TasksVacationRepository>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i132.CompleteCachedTasksSbsLateUseCase>(
      () => _i132.CompleteCachedTaskSbsLateUseCaseImpl(
          gh<_i121.TasksSbsRepository>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i133.CompleteTaskEasUseCase>(
      () => _i133.CompleteTaskEasUseCaseImpl(
          gh<_i119.TasksEasRemoteDataSource>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i134.DownloadTaskEasAttachmentUseCase>(
      () => _i134.DownloadTaskEasAttachmentUseCaseImpl(
        gh<_i31.TasksEasAttachmentsRepository>(),
        gh<_i119.TasksEasRemoteDataSource>(),
      ),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i135.GetTasksSbsLateUseCase>(
      () => _i135.GetTasksSbsLateUseCaseImpl(
          gh<_i120.TasksSbsCachedDataSource>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i136.GetTasksSbsWeeklyUseCase>(
      () => _i136.GetTasksSbsWeeklyUseCaseImpl(
          gh<_i120.TasksSbsCachedDataSource>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i137.GetTasksSummaryUseCase>(
      () => _i137.GetTasksSummaryUseCaseImpl(
          gh<_i123.TasksSummaryCachedDataSource>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i138.GetTasksVacationUseCase>(
      () => _i138.GetTasksVacationUseCaseImpl(
          gh<_i124.TasksVacationCachedDataSource>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.factory<_i139.TaskEasAttachmentCubit>(() => _i139.TaskEasAttachmentCubit(
          gh<_i14.InitTaskEasAttachmentsDirectoryUseCase>(),
          gh<_i58.GetTaskEasAttachmentUseCase>(),
          gh<_i134.DownloadTaskEasAttachmentUseCase>(),
          gh<_i20.OpenTaskEasAttachmentUseCase>(),
          gh<_i16.LogService>(),
        ));
    gh.lazySingleton<_i140.TasksEasCachedDataSource>(
      () => _i140.TasksEasCachedDataSourceImpl(
        gh<_i119.TasksEasRemoteDataSource>(),
        gh<_i101.RemoveNotActualTaskEasAttachmentsUseCase>(),
      ),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i141.TasksEasRepository>(
      () => _i142.TasksEasCachedRepository(
          dataSource: gh<_i140.TasksEasCachedDataSource>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.factory<_i143.TasksSbsLateCubit>(() => _i143.TasksSbsLateCubit(
          gh<_i135.GetTasksSbsLateUseCase>(),
          gh<_i132.CompleteCachedTasksSbsLateUseCase>(),
          gh<_i118.CompleteTasksSbsLateUseCase>(),
          gh<_i127.ClearCacheTasksSbsLateUseCase>(),
          gh<_i16.LogService>(),
        ));
    gh.factory<_i144.TasksSbsLateSummaryCubit>(
        () => _i144.TasksSbsLateSummaryCubit(
              gh<_i135.GetTasksSbsLateUseCase>(),
              gh<_i127.ClearCacheTasksSbsLateUseCase>(),
              gh<_i121.TasksSbsRepository>(),
              gh<_i16.LogService>(),
            ));
    gh.factory<_i145.TasksSbsWeeklyCubit>(() => _i145.TasksSbsWeeklyCubit(
          gh<_i136.GetTasksSbsWeeklyUseCase>(),
          gh<_i128.ClearCacheTasksSbsWeeklyUseCase>(),
          gh<_i130.CompleteCachedTaskSbsWeeklyUseCase>(),
          gh<_i116.CompleteTaskSbsWeeklyUseCase>(),
          gh<_i16.LogService>(),
        ));
    gh.factory<_i146.TasksSbsWeeklySummaryCubit>(
        () => _i146.TasksSbsWeeklySummaryCubit(
              gh<_i136.GetTasksSbsWeeklyUseCase>(),
              gh<_i128.ClearCacheTasksSbsWeeklyUseCase>(),
              gh<_i121.TasksSbsRepository>(),
              gh<_i16.LogService>(),
            ));
    gh.factory<_i147.TasksVacationCubit>(() => _i147.TasksVacationCubit(
          gh<_i138.GetTasksVacationUseCase>(),
          gh<_i131.CompleteCachedTaskVacationUseCase>(),
          gh<_i117.CompleteTaskVacationUseCase>(),
          gh<_i129.ClearCacheTasksVacationUseCase>(),
          gh<_i16.LogService>(),
        ));
    gh.factory<_i148.TasksVacationSummaryCubit>(
        () => _i148.TasksVacationSummaryCubit(
              gh<_i138.GetTasksVacationUseCase>(),
              gh<_i129.ClearCacheTasksVacationUseCase>(),
              gh<_i125.TasksVacationRepository>(),
              gh<_i16.LogService>(),
            ));
    gh.factory<_i149.UserLogOutUseCase>(
      () => _i149.UserLogOutUseCaseImpl(
        gh<_i85.ChatsRepository>(),
        gh<_i95.NewsCachedDataSource>(),
        gh<_i140.TasksEasCachedDataSource>(),
        gh<_i120.TasksSbsCachedDataSource>(),
        gh<_i124.TasksVacationCachedDataSource>(),
        gh<_i33.UserService>(),
        gh<_i80.AuthProvider>(),
        gh<_i22.ScopeRepository>(),
      ),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i150.ClearCacheTasksEasUseCase>(
      () => _i150.ClearCacheTasksEasUseCaseImpl(
          gh<_i140.TasksEasCachedDataSource>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i151.CompleteCachedTaskEasUseCase>(
      () => _i151.CompleteCachedTaskEasUseCaseImpl(
          gh<_i141.TasksEasRepository>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i152.GetTasksEasUseCase>(
      () => _i152.GetTasksEasUseCaseImpl(gh<_i140.TasksEasCachedDataSource>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.factory<_i153.SettingsCubit>(() => _i153.SettingsCubit(
          gh<_i52.GetBillingNotificationSettingsUseCase>(),
          gh<_i54.GetDarkModeSettingsUseCase>(),
          gh<_i57.GetSystemModeSettingsUseCase>(),
          gh<_i56.GetRegionSettingsUseCase>(),
          gh<_i149.UserLogOutUseCase>(),
          gh<_i77.ThemeCubit>(),
          gh<_i99.RegionCubit>(),
        ));
    gh.factory<_i154.TasksEasCubit>(() => _i154.TasksEasCubit(
          gh<_i152.GetTasksEasUseCase>(),
          gh<_i151.CompleteCachedTaskEasUseCase>(),
          gh<_i133.CompleteTaskEasUseCase>(),
          gh<_i150.ClearCacheTasksEasUseCase>(),
          gh<_i16.LogService>(),
        ));
    gh.factory<_i155.TasksEasSummaryCubit>(() => _i155.TasksEasSummaryCubit(
          gh<_i152.GetTasksEasUseCase>(),
          gh<_i150.ClearCacheTasksEasUseCase>(),
          gh<_i141.TasksEasRepository>(),
          gh<_i16.LogService>(),
        ));
    gh.factory<_i156.GetBackgroundDataUseCase>(
        () => _i156.GetBackgroundDataUseCase(
              gh<_i136.GetTasksSbsWeeklyUseCase>(),
              gh<_i135.GetTasksSbsLateUseCase>(),
              gh<_i152.GetTasksEasUseCase>(),
              gh<_i138.GetTasksVacationUseCase>(),
            ));
    gh.factory<_i157.AuthCubit>(() => _i157.AuthCubit(
          gh<_i21.PushNotificationsProvider>(),
          gh<_i94.HasCachedAccountUseCase>(),
          gh<_i110.OAuthTryLoginUseCase>(),
          gh<_i16.LogService>(),
          gh<_i56.GetRegionSettingsUseCase>(),
          gh<_i156.GetBackgroundDataUseCase>(),
        ));
    return this;
  }

// initializes the registration of mockScope-scope dependencies inside of GetIt
  _i1.GetIt initMockScopeScope({_i1.ScopeDisposeFunc? dispose}) {
    return _i2.GetItHelper(this).initScope(
      'mockScope',
      dispose: dispose,
      init: (_i2.GetItHelper gh) {
        gh.lazySingleton<_i85.ChatsRepository>(
          () => _i158.ChatsMockRepository(
            gh<_i34.UuidGenerator>(),
            gh<_i33.UserService>(),
          ),
          registerFor: {
            _dev,
            _prod,
          },
        );
        gh.lazySingleton<_i8.NewsRepository>(
          () => _i159.NewsMockRepository(constants: gh<_i9.Constants>()),
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
          () => _i160.NewsCachedRepository(
            dataSource: gh<_i95.NewsCachedDataSource>(),
            getNewsApiBaseUrlUseCase: gh<_i55.GetNewsApiBaseUrlUseCase>(),
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

class _$AppModule extends _i161.AppModule {}
