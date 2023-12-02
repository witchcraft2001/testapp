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
import 'package:shared_preferences/shared_preferences.dart' as _i28;
import 'package:sqflite/sqflite.dart' as _i10;
import 'package:terralinkapp/core/common/constants.dart' as _i9;
import 'package:terralinkapp/core/http/interceptors/auth_interceptor.dart'
    as _i39;
import 'package:terralinkapp/core/http/interceptors/locale_interceptor.dart'
    as _i15;
import 'package:terralinkapp/core/http/overrides/api_http_overrides.dart'
    as _i34;
import 'package:terralinkapp/core/http/providers/dio_provider.dart' as _i11;
import 'package:terralinkapp/core/navigation/app_navigation_service.dart'
    as _i38;
import 'package:terralinkapp/core/navigation/navigator_key_provider.dart'
    as _i18;
import 'package:terralinkapp/core/notifications/providers/push_notifications_provider.dart'
    as _i21;
import 'package:terralinkapp/core/notifications/repositories/app_remote_messages_repository.dart'
    as _i6;
import 'package:terralinkapp/core/notifications/services/local_notifications_service.dart'
    as _i60;
import 'package:terralinkapp/core/notifications/services/timezone_service.dart'
    as _i31;
import 'package:terralinkapp/core/repositories/di_scope_repository.dart'
    as _i23;
import 'package:terralinkapp/core/repositories/scope_repository.dart' as _i22;
import 'package:terralinkapp/core/services/app_parsing_tags_service.dart'
    as _i5;
import 'package:terralinkapp/core/services/converters/businesscard_to_vcard_converter.dart'
    as _i42;
import 'package:terralinkapp/core/services/log_service.dart' as _i16;
import 'package:terralinkapp/core/services/user_service/user_service.dart'
    as _i32;
import 'package:terralinkapp/core/services/websocket_service.dart' as _i75;
import 'package:terralinkapp/core/theme/domain/cubits/theme_cubit.dart' as _i74;
import 'package:terralinkapp/di/modules/app_module.dart' as _i155;
import 'package:terralinkapp/features/api_settings/data/data_sources/api_settings_presets_data_source.dart'
    as _i3;
import 'package:terralinkapp/features/api_settings/data/providers/api_settings_provider.dart'
    as _i35;
import 'package:terralinkapp/features/api_settings/data/repositories/api_settings_presets_repository.dart'
    as _i4;
import 'package:terralinkapp/features/api_settings/domain/cubits/api_settings_cubit.dart'
    as _i104;
import 'package:terralinkapp/features/auth/data/providers/auth_provider.dart'
    as _i77;
import 'package:terralinkapp/features/auth/data/use_cases/get_background_data_use_case.dart'
    as _i150;
import 'package:terralinkapp/features/auth/data/use_cases/has_cached_account_use_case.dart'
    as _i90;
import 'package:terralinkapp/features/auth/data/use_cases/oauth_try_login_use_case.dart'
    as _i106;
import 'package:terralinkapp/features/auth/data/use_cases/refresh_auth_settings_use_case.dart'
    as _i94;
import 'package:terralinkapp/features/auth/data/use_cases/user_log_in_use_case.dart'
    as _i103;
import 'package:terralinkapp/features/auth/data/use_cases/user_log_out_use_case.dart'
    as _i143;
import 'package:terralinkapp/features/auth/domain/auth_cubit.dart' as _i151;
import 'package:terralinkapp/features/business_cards/data/data_sources/business_card_db_data_source.dart'
    as _i40;
import 'package:terralinkapp/features/business_cards/data/repositories/business_card_repository.dart'
    as _i41;
import 'package:terralinkapp/features/business_cards/data/use_cases/get_all_business_cards_use_case.dart'
    as _i47;
import 'package:terralinkapp/features/business_cards/data/use_cases/get_business_card_by_id_use_case.dart'
    as _i50;
import 'package:terralinkapp/features/business_cards/data/use_cases/get_vcard_from_business_card_use_case.dart'
    as _i58;
import 'package:terralinkapp/features/business_cards/data/use_cases/remove_business_card_by_id_use_case.dart'
    as _i64;
import 'package:terralinkapp/features/business_cards/data/use_cases/save_business_card_use_case.dart'
    as _i66;
import 'package:terralinkapp/features/business_cards/data/use_cases/save_vcard_file_from_business_card_use_case.dart'
    as _i67;
import 'package:terralinkapp/features/business_cards/data/use_cases/share_vcard_from_bussiness_card_use_case.dart'
    as _i73;
import 'package:terralinkapp/features/business_cards/domain/cubits/business_card_show_cubit.dart'
    as _i79;
import 'package:terralinkapp/features/business_cards/domain/cubits/business_cards_list_cubit.dart'
    as _i80;
import 'package:terralinkapp/features/chat/data/data_sources/chats_db_data_source.dart'
    as _i43;
import 'package:terralinkapp/features/chat/data/data_sources/messages_db_data_source.dart'
    as _i17;
import 'package:terralinkapp/features/chat/data/providers/uuid_generator.dart'
    as _i33;
import 'package:terralinkapp/features/chat/data/repositories/chats_mock_repository.dart'
    as _i152;
import 'package:terralinkapp/features/chat/data/repositories/chats_remote_repository.dart'
    as _i82;
import 'package:terralinkapp/features/chat/data/repositories/chats_repository.dart'
    as _i81;
import 'package:terralinkapp/features/chat/data/use_cases/chat/clear_chat_history_use_case.dart'
    as _i83;
import 'package:terralinkapp/features/chat/data/use_cases/chat/get_all_messages_by_chat_id_use_case.dart'
    as _i84;
import 'package:terralinkapp/features/chat/data/use_cases/chat/get_chat_info_by_id_use_case.dart'
    as _i87;
import 'package:terralinkapp/features/chat/data/use_cases/chat/remove_message_by_id_use_case.dart'
    as _i96;
import 'package:terralinkapp/features/chat/data/use_cases/chat/reset_new_messages_use_case.dart'
    as _i98;
import 'package:terralinkapp/features/chat/data/use_cases/chat/send_chat_message_use_case.dart'
    as _i99;
import 'package:terralinkapp/features/chat/data/use_cases/chat/send_form_chat_message_use_case.dart'
    as _i100;
import 'package:terralinkapp/features/chat/data/use_cases/chat/send_menu_item_chat_message_use_case.dart'
    as _i101;
import 'package:terralinkapp/features/chat/data/use_cases/chats/get_chat_feed_observable_use_case.dart'
    as _i85;
import 'package:terralinkapp/features/chat/data/use_cases/chats/get_chat_feed_use_case.dart'
    as _i86;
import 'package:terralinkapp/features/chat/domain/cubits/chat_cubit.dart'
    as _i105;
import 'package:terralinkapp/features/feedback/data/use_cases/send_feedback_use_case.dart'
    as _i24;
import 'package:terralinkapp/features/news/data/data_sources/news_cached_data_source.dart'
    as _i91;
import 'package:terralinkapp/features/news/data/data_sources/news_remote_data_source.dart'
    as _i62;
import 'package:terralinkapp/features/news/data/repositories/news_cached_repository.dart'
    as _i154;
import 'package:terralinkapp/features/news/data/repositories/news_mock_repository.dart'
    as _i153;
import 'package:terralinkapp/features/news/data/repositories/news_repository.dart'
    as _i8;
import 'package:terralinkapp/features/news/data/services/news_api_service.dart'
    as _i61;
import 'package:terralinkapp/features/news/data/use_cases/clear_cache_news_use_case.dart'
    as _i7;
import 'package:terralinkapp/features/news/data/use_cases/get_all_news_use_case.dart'
    as _i88;
import 'package:terralinkapp/features/news/domain/cubits/news_cubit.dart'
    as _i92;
import 'package:terralinkapp/features/profile/data/data_sources/file_storage_data_source.dart'
    as _i45;
import 'package:terralinkapp/features/profile/data/repositories/avatar_storage_repository.dart'
    as _i78;
import 'package:terralinkapp/features/profile/data/use_cases/get_profile_avatar_use_case.dart'
    as _i89;
import 'package:terralinkapp/features/profile/data/use_cases/set_profile_avatar_use_case.dart'
    as _i102;
import 'package:terralinkapp/features/profile_documents/data/data_sources/app_documents_db_data_source.dart'
    as _i36;
import 'package:terralinkapp/features/profile_documents/data/repositories/app_documents_repository.dart'
    as _i37;
import 'package:terralinkapp/features/profile_documents/data/use_cases/add_app_documents_use_case.dart'
    as _i76;
import 'package:terralinkapp/features/profile_documents/data/use_cases/edit_app_documents_use_case.dart'
    as _i44;
import 'package:terralinkapp/features/profile_documents/data/use_cases/get_app_documents_use_case.dart'
    as _i48;
import 'package:terralinkapp/features/profile_documents/data/use_cases/init_case_app_documents_use_case.dart'
    as _i13;
import 'package:terralinkapp/features/profile_documents/data/use_cases/open_app_document_use_case.dart'
    as _i19;
import 'package:terralinkapp/features/profile_documents/data/use_cases/remove_case_app_documents_use_case.dart'
    as _i63;
import 'package:terralinkapp/features/profile_documents/data/use_cases/share_app_documents_use_case.dart'
    as _i27;
import 'package:terralinkapp/features/profile_documents/domain/cubits/profile_documents_cubit.dart'
    as _i93;
import 'package:terralinkapp/features/region/domain/cubits/region_cubit.dart'
    as _i95;
import 'package:terralinkapp/features/settings/data/data_sources/settings_data_source.dart'
    as _i25;
import 'package:terralinkapp/features/settings/data/repositories/settings_repository.dart'
    as _i26;
import 'package:terralinkapp/features/settings/data/use_cases/get_all_api_settings_use_case.dart'
    as _i46;
import 'package:terralinkapp/features/settings/data/use_cases/get_api_settings_presets_use_case.dart'
    as _i12;
import 'package:terralinkapp/features/settings/data/use_cases/get_billing_notification_settings_use_case.dart'
    as _i49;
import 'package:terralinkapp/features/settings/data/use_cases/get_dark_mode_settings_use_case.dart'
    as _i51;
import 'package:terralinkapp/features/settings/data/use_cases/get_news_api_base_url_use_case.dart'
    as _i52;
import 'package:terralinkapp/features/settings/data/use_cases/get_region_settings_use_case.dart'
    as _i53;
import 'package:terralinkapp/features/settings/data/use_cases/get_system_mode_settings_use_case.dart'
    as _i54;
import 'package:terralinkapp/features/settings/data/use_cases/get_tasks_sbs_api_base_url_use_case.dart'
    as _i56;
import 'package:terralinkapp/features/settings/data/use_cases/get_tasks_summary_api_base_url_use_case.dart'
    as _i57;
import 'package:terralinkapp/features/settings/data/use_cases/get_ws_url_use_case.dart'
    as _i59;
import 'package:terralinkapp/features/settings/data/use_cases/set_all_api_settings_use_case.dart'
    as _i68;
import 'package:terralinkapp/features/settings/data/use_cases/set_billing_notification_settings_use_case.dart'
    as _i69;
import 'package:terralinkapp/features/settings/data/use_cases/set_dark_mode_settings_use_case.dart'
    as _i70;
import 'package:terralinkapp/features/settings/data/use_cases/set_region_settings_use_case.dart'
    as _i71;
import 'package:terralinkapp/features/settings/data/use_cases/set_system_mode_settings_use_case.dart'
    as _i72;
import 'package:terralinkapp/features/settings/domain/cubits/settings_cubit.dart'
    as _i147;
import 'package:terralinkapp/features/tasks/common/data/services/tasks_summary_api_service.dart'
    as _i109;
import 'package:terralinkapp/features/tasks/eas/data/data_source/tasks_eas_attachments_db_data_source.dart'
    as _i29;
import 'package:terralinkapp/features/tasks/eas/data/data_source/tasks_eas_cached_data_source.dart'
    as _i135;
import 'package:terralinkapp/features/tasks/eas/data/data_source/tasks_eas_remote_data_source.dart'
    as _i115;
import 'package:terralinkapp/features/tasks/eas/data/repositories/tasks_eas_attachments_repository.dart'
    as _i30;
import 'package:terralinkapp/features/tasks/eas/data/repositories/tasks_eas_repository.dart'
    as _i136;
import 'package:terralinkapp/features/tasks/eas/data/use_cases/attachments/download_task_eas_attachment_use_case.dart'
    as _i129;
import 'package:terralinkapp/features/tasks/eas/data/use_cases/attachments/get_task_eas_attachment_use_case.dart'
    as _i55;
import 'package:terralinkapp/features/tasks/eas/data/use_cases/attachments/init_task_eas_attachments_directory_use_case.dart'
    as _i14;
import 'package:terralinkapp/features/tasks/eas/data/use_cases/attachments/open_task_eas_attachment_use_case.dart'
    as _i20;
import 'package:terralinkapp/features/tasks/eas/data/use_cases/attachments/remove_not_actual_task_eas_attachments_use_case.dart'
    as _i97;
import 'package:terralinkapp/features/tasks/eas/data/use_cases/attachments/remove_task_eas_attachment_use_case.dart'
    as _i65;
import 'package:terralinkapp/features/tasks/eas/data/use_cases/tasks/clear_cache_tasks_eas_use_case.dart'
    as _i144;
import 'package:terralinkapp/features/tasks/eas/data/use_cases/tasks/complete_cached_task_eas_use_case.dart'
    as _i145;
import 'package:terralinkapp/features/tasks/eas/data/use_cases/tasks/complete_task_eas_use_case.dart'
    as _i128;
import 'package:terralinkapp/features/tasks/eas/data/use_cases/tasks/get_tasks_eas_use_case.dart'
    as _i146;
import 'package:terralinkapp/features/tasks/eas/domain/cubits/task_eas_attachment_cubit.dart'
    as _i134;
import 'package:terralinkapp/features/tasks/eas/domain/cubits/tasks_eas_cubit.dart'
    as _i148;
import 'package:terralinkapp/features/tasks/sbs/data/data_sources/tasks_sbs_cached_data_source.dart'
    as _i116;
import 'package:terralinkapp/features/tasks/sbs/data/data_sources/tasks_sbs_remote_data_source.dart'
    as _i108;
import 'package:terralinkapp/features/tasks/sbs/data/repositories/tasks_sbs_repository.dart'
    as _i117;
import 'package:terralinkapp/features/tasks/sbs/data/services/tasks_sbs_api_service.dart'
    as _i107;
import 'package:terralinkapp/features/tasks/sbs_late/data/use_cases/clear_cache_tasks_sbs_late_use_case.dart'
    as _i122;
import 'package:terralinkapp/features/tasks/sbs_late/data/use_cases/complete_cached_tasks_late_sbs_use_case.dart'
    as _i127;
import 'package:terralinkapp/features/tasks/sbs_late/data/use_cases/complete_tasks_sbs_late_use_case.dart'
    as _i114;
import 'package:terralinkapp/features/tasks/sbs_late/data/use_cases/get_tasks_sbs_late_use_case.dart'
    as _i130;
import 'package:terralinkapp/features/tasks/sbs_late/domain/cubits/tasks_sbs_late_cubit.dart'
    as _i137;
import 'package:terralinkapp/features/tasks/sbs_weekly/data/use_cases/clear_cache_tasks_sbs_weekly_use_case.dart'
    as _i123;
import 'package:terralinkapp/features/tasks/sbs_weekly/data/use_cases/complete_cached_task_sbs_weekly_use_case.dart'
    as _i125;
import 'package:terralinkapp/features/tasks/sbs_weekly/data/use_cases/complete_task_sbs_weekly_use_case.dart'
    as _i112;
import 'package:terralinkapp/features/tasks/sbs_weekly/data/use_cases/get_tasks_sbs_weekly_use_case.dart'
    as _i131;
import 'package:terralinkapp/features/tasks/sbs_weekly/domain/cubits/tasks_sbs_weekly_cubit.dart'
    as _i139;
import 'package:terralinkapp/features/tasks/summary/data/data_sources/tasks_summary_cached_data_source.dart'
    as _i118;
import 'package:terralinkapp/features/tasks/summary/data/data_sources/tasks_summary_remote_data_source.dart'
    as _i110;
import 'package:terralinkapp/features/tasks/summary/data/use_cases/get_tasks_summary_use_case.dart'
    as _i132;
import 'package:terralinkapp/features/tasks/summary/domain/cubits/tasks_eas_summary_cubit.dart'
    as _i149;
import 'package:terralinkapp/features/tasks/summary/domain/cubits/tasks_sbs_late_summary_cubit.dart'
    as _i138;
import 'package:terralinkapp/features/tasks/summary/domain/cubits/tasks_sbs_weekly_summary_cubit.dart'
    as _i140;
import 'package:terralinkapp/features/tasks/summary/domain/cubits/tasks_vacation_summary_cubit.dart'
    as _i142;
import 'package:terralinkapp/features/tasks/vacations/data/data_sources/tasks_vacation_cached_data_source.dart'
    as _i119;
import 'package:terralinkapp/features/tasks/vacations/data/data_sources/tasks_vacation_remote_data_source.dart'
    as _i111;
import 'package:terralinkapp/features/tasks/vacations/data/repositories/tasks_vacation_cached_repository.dart'
    as _i121;
import 'package:terralinkapp/features/tasks/vacations/data/repositories/tasks_vacation_repository.dart'
    as _i120;
import 'package:terralinkapp/features/tasks/vacations/data/use_cases/clear_cache_tasks_vacation_use_case.dart'
    as _i124;
import 'package:terralinkapp/features/tasks/vacations/data/use_cases/complete_cached_task_vacation_use_case.dart'
    as _i126;
import 'package:terralinkapp/features/tasks/vacations/data/use_cases/complete_task_vacation_use_case.dart'
    as _i113;
import 'package:terralinkapp/features/tasks/vacations/data/use_cases/get_tasks_vacation_use_case.dart'
    as _i133;
import 'package:terralinkapp/features/tasks/vacations/domain/cubits/tasks_vacation_cubit.dart'
    as _i141;

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
      () => _i26.SettingsRepositoryImpl(
          dataSource: gh<_i25.SettingsDataSource>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i27.ShareAppDocumentsUseCase>(
      () => _i27.ShareAppDocumentsUseCaseImpl(),
      registerFor: {
        _dev,
        _prod,
      },
    );
    await gh.factoryAsync<_i28.SharedPreferences>(
      () => appModule.providePrefs,
      preResolve: true,
    );
    gh.lazySingleton<_i29.TasksEasAttachmentsDbDataSource>(
      () => _i29.TasksEasAttachmentsDbDataSourceImpl(gh<_i10.Database>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i30.TasksEasAttachmentsRepository>(
      () => _i30.TasksEasAttachmentsRepositoryImpl(
          dbDataSource: gh<_i29.TasksEasAttachmentsDbDataSource>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i31.TimeZoneService>(
      () => _i31.TimeZoneServiceImpl(),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i32.UserService>(
      () => _i32.UserServiceImpl(),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i33.UuidGenerator>(
      () => _i33.UuidGeneratorImpl(),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i34.ApiHttpOverrides>(
      () => _i34.ApiHttpOverrides(gh<_i9.Constants>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i35.ApiSettingsProvider>(() => _i35.ApiSettingsProvider(
          gh<_i25.SettingsDataSource>(),
          gh<_i9.Constants>(),
        ));
    gh.lazySingleton<_i36.AppDocumentsDbDataSource>(
      () => _i36.AppDocumentsDbDataSourceImpl(gh<_i10.Database>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i37.AppDocumentsRepository>(
      () => _i37.AppDocumentsDbRepositoryImpl(
          dataSource: gh<_i36.AppDocumentsDbDataSource>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i38.AppNavigationService>(
      () => _i38.AppNavigationService(gh<_i18.NavigatorKeyProvider>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i39.AuthInterceptor>(
        () => _i39.AuthInterceptor(gh<_i32.UserService>()));
    gh.lazySingleton<_i40.BusinessCardDbDataSource>(
      () => _i40.BusinessCardDbDataSourceImpl(gh<_i10.Database>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i41.BusinessCardRepository>(
      () => _i41.BusinessCardRepositoryImpl(
          dataSource: gh<_i40.BusinessCardDbDataSource>()),
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
      () => _i44.EditAppDocumentUseCaseImpl(gh<_i37.AppDocumentsRepository>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i45.FileStorageDataSource>(
      () => _i45.FileStorageDataSourceImpl(logService: gh<_i16.LogService>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.factory<_i46.GetAllApiSettingsUseCase>(
        () => _i46.GetAllApiSettingsUseCase(gh<_i35.ApiSettingsProvider>()));
    gh.lazySingleton<_i47.GetAllBusinessCardsUseCase>(
      () => _i47.GetAllBusinessCardsUseCaseImpl(
          gh<_i41.BusinessCardRepository>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i48.GetAppDocumentsUseCase>(
      () => _i48.GetAppDocumentsUseCaseImpl(gh<_i37.AppDocumentsRepository>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i49.GetBillingNotificationSettingsUseCase>(
      () => _i49.GetBillingNotificationSettingsUseCaseImpl(
          gh<_i25.SettingsDataSource>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i50.GetBusinessCardByIdUseCase>(
      () => _i50.GetBusinessCardByIdUseCaseImpl(
          gh<_i41.BusinessCardRepository>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i51.GetDarkModeSettingsUseCase>(
      () => _i51.GetDarkModeSettingsUseCaseImpl(gh<_i25.SettingsDataSource>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.factory<_i52.GetNewsApiBaseUrlUseCase>(
        () => _i52.GetNewsApiBaseUrlUseCase(gh<_i35.ApiSettingsProvider>()));
    gh.lazySingleton<_i53.GetRegionSettingsUseCase>(
      () => _i53.GetRegionSettingsUseCaseImpl(gh<_i25.SettingsDataSource>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i54.GetSystemModeSettingsUseCase>(
      () =>
          _i54.GetSystemModeSettingsUseCaseImpl(gh<_i25.SettingsDataSource>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i55.GetTaskEasAttachmentUseCase>(
      () => _i55.GetTaskEasAttachmentUseCaseImpl(
          gh<_i30.TasksEasAttachmentsRepository>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.factory<_i56.GetTasksSbsApiBaseUrlUseCase>(() =>
        _i56.GetTasksSbsApiBaseUrlUseCase(gh<_i35.ApiSettingsProvider>()));
    gh.factory<_i57.GetTasksSummaryApiBaseUrlUseCase>(() =>
        _i57.GetTasksSummaryApiBaseUrlUseCase(gh<_i35.ApiSettingsProvider>()));
    gh.factory<_i58.GetVCardFromBusinessCardUseCase>(() =>
        _i58.GetVCardFromBusinessCardUseCase(
            gh<_i42.BusinessCardToVCardConverter>()));
    gh.factory<_i59.GetWsUrlUseCase>(
        () => _i59.GetWsUrlUseCase(gh<_i35.ApiSettingsProvider>()));
    gh.lazySingleton<_i60.LocalNotificationsService>(
      () => _i60.LocalNotificationsServiceImpl(
        gh<_i18.NavigatorKeyProvider>(),
        gh<_i6.AppRemoteMessagesRepository>(),
        gh<_i16.LogService>(),
      ),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i61.NewsApiService>(
      () => _i61.NewsApiService(
        gh<_i11.DioProvider>(),
        gh<_i16.LogService>(),
        gh<_i52.GetNewsApiBaseUrlUseCase>(),
      ),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i62.NewsRemoteDataSource>(
      () => _i62.NewsRemoteDataSourceImpl(gh<_i61.NewsApiService>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i63.RemoveAppDocumentUseCase>(
      () =>
          _i63.RemoveAppDocumentUseCaseImpl(gh<_i37.AppDocumentsRepository>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i64.RemoveBusinessCardByIdUseCase>(
      () => _i64.RemoveBusinessCardByIdUseCaseImpl(
          gh<_i41.BusinessCardRepository>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i65.RemoveTaskEasAttachmentUseCase>(
      () => _i65.RemoveTaskEasAttachmentUseCaseImpl(
          gh<_i30.TasksEasAttachmentsRepository>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i66.SaveBusinessCardUseCase>(
      () => _i66.SaveBusinessCardUseCaseImpl(gh<_i41.BusinessCardRepository>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.factory<_i67.SaveVCardFileFromBusinessCardUseCase>(() =>
        _i67.SaveVCardFileFromBusinessCardUseCase(
            gh<_i58.GetVCardFromBusinessCardUseCase>()));
    gh.factory<_i68.SetAllApiSettingsUseCase>(
        () => _i68.SetAllApiSettingsUseCase(gh<_i35.ApiSettingsProvider>()));
    gh.lazySingleton<_i69.SetBillingNotificationSettingsUseCase>(
      () => _i69.SetBillingNotificationSettingsUseCaseImpl(
        gh<_i25.SettingsDataSource>(),
        gh<_i60.LocalNotificationsService>(),
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
    gh.factory<_i73.ShareVCardFromBusinessCardUseCase>(() =>
        _i73.ShareVCardFromBusinessCardUseCase(
            gh<_i67.SaveVCardFileFromBusinessCardUseCase>()));
    gh.lazySingleton<_i74.ThemeCubit>(
      () => _i74.ThemeCubit(
        gh<_i51.GetDarkModeSettingsUseCase>(),
        gh<_i70.SetDarkModeSettingsUseCase>(),
        gh<_i54.GetSystemModeSettingsUseCase>(),
        gh<_i72.SetSystemModeSettingsUseCase>(),
      ),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i75.WebsocketService>(
      () => _i75.WebsocketServiceImpl(
        gh<_i32.UserService>(),
        gh<_i21.PushNotificationsProvider>(),
        gh<_i16.LogService>(),
        gh<_i59.GetWsUrlUseCase>(),
      ),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i76.AddAppDocumentsUseCase>(
      () =>
          _i76.AddAppDocumentsAddUseCaseImpl(gh<_i37.AppDocumentsRepository>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i77.AuthProvider>(
      () => _i77.AuthProvider(
        gh<_i9.Constants>(),
        gh<_i18.NavigatorKeyProvider>(),
        gh<_i46.GetAllApiSettingsUseCase>(),
      ),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i78.AvatarStorageRepository>(
      () => _i78.AvatarStorageRepositoryImpl(
          dataSource: gh<_i45.FileStorageDataSource>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.factoryParam<_i79.BusinessCardShowCubit, int, dynamic>((
      id,
      _,
    ) =>
        _i79.BusinessCardShowCubit(
          id,
          gh<_i50.GetBusinessCardByIdUseCase>(),
          gh<_i16.LogService>(),
          gh<_i73.ShareVCardFromBusinessCardUseCase>(),
          gh<_i58.GetVCardFromBusinessCardUseCase>(),
        ));
    gh.factory<_i80.BusinessCardsListCubit>(() => _i80.BusinessCardsListCubit(
          gh<_i47.GetAllBusinessCardsUseCase>(),
          gh<_i64.RemoveBusinessCardByIdUseCase>(),
          gh<_i73.ShareVCardFromBusinessCardUseCase>(),
          gh<_i16.LogService>(),
        ));
    gh.lazySingleton<_i81.ChatsRepository>(
      () => _i82.ChatsRemoteRepository(
        gh<_i75.WebsocketService>(),
        gh<_i43.ChatsDbDataSource>(),
        gh<_i33.UuidGenerator>(),
        gh<_i32.UserService>(),
        gh<_i17.MessagesDbDataSource>(),
        gh<_i16.LogService>(),
      ),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.factory<_i83.ClearChatHistoryUseCase>(
        () => _i83.ClearChatHistoryUseCase(gh<_i81.ChatsRepository>()));
    gh.lazySingleton<_i84.GetAllMessagesByChatIdUseCase>(
      () => _i84.GetAllMessagesByChatIdUseCaseImpl(gh<_i81.ChatsRepository>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i85.GetChatFeedObservableUseCase>(
      () => _i85.GetChatFeedObservableUseCaseImpl(gh<_i81.ChatsRepository>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i86.GetChatFeedUseCase>(
      () => _i86.GetChatFeedUseCaseImpl(gh<_i81.ChatsRepository>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i87.GetChatInfoByIdUseCase>(
      () => _i87.GetChatInfoByIdUseCaseImpl(gh<_i81.ChatsRepository>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.factory<_i88.GetNewsUseCase>(
      () => _i88.GetNewsUseCaseImpl(
        gh<_i8.NewsRepository>(),
        gh<_i53.GetRegionSettingsUseCase>(),
      ),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i89.GetProfileAvatarUseCase>(
      () => _i89.GetProfileAvatarUseCaseImpl(
        settingsRepository: gh<_i26.SettingsRepository>(),
        avatarStorageRepository: gh<_i78.AvatarStorageRepository>(),
      ),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.factory<_i90.HasCachedAccountUseCase>(
        () => _i90.HasCachedAccountUseCase(gh<_i77.AuthProvider>()));
    gh.lazySingleton<_i91.NewsCachedDataSource>(
      () => _i91.NewsCachedDataSourceImpl(
          newsRepository: gh<_i62.NewsRemoteDataSource>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.factory<_i92.NewsCubit>(() => _i92.NewsCubit(
          gh<_i88.GetNewsUseCase>(),
          gh<_i7.ClearCacheNewsUseCase>(),
          gh<_i16.LogService>(),
        ));
    gh.factory<_i93.ProfileDocumentsCubit>(() => _i93.ProfileDocumentsCubit(
          gh<_i13.InitAppDocumentsUseCase>(),
          gh<_i48.GetAppDocumentsUseCase>(),
          gh<_i76.AddAppDocumentsUseCase>(),
          gh<_i63.RemoveAppDocumentUseCase>(),
          gh<_i44.EditAppDocumentUseCase>(),
          gh<_i27.ShareAppDocumentsUseCase>(),
          gh<_i19.OpenAppDocumentUseCase>(),
        ));
    gh.factory<_i94.RefreshAuthSettingsUseCase>(
        () => _i94.RefreshAuthSettingsUseCase(gh<_i77.AuthProvider>()));
    gh.lazySingleton<_i95.RegionCubit>(
      () => _i95.RegionCubit(
        gh<_i53.GetRegionSettingsUseCase>(),
        gh<_i71.SetRegionSettingsUseCase>(),
      ),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i96.RemoveMessageByIdUseCase>(
      () => _i96.RemoveMessageByIdUseCaseImpl(gh<_i81.ChatsRepository>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i97.RemoveNotActualTaskEasAttachmentsUseCase>(
      () => _i97.RemoveNotActualTaskEasAttachmentsUseCaseImpl(
        gh<_i30.TasksEasAttachmentsRepository>(),
        gh<_i65.RemoveTaskEasAttachmentUseCase>(),
      ),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i98.ResetNewMessagesUseCase>(
      () => _i98.ResetNewMessagesUseCaseImpl(gh<_i81.ChatsRepository>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i99.SendChatMessageUseCase>(
      () => _i99.SendChatMessageUseCaseImpl(gh<_i81.ChatsRepository>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i100.SendFormChatMessageUseCase>(
      () => _i100.SendFormChatMessageUseCaseImpl(gh<_i81.ChatsRepository>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i101.SendMenuItemChatMessageUseCase>(
      () =>
          _i101.SendMenuItemChatMessageUseCaseImpl(gh<_i81.ChatsRepository>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i102.SetProfileAvatarUseCase>(
      () => _i102.SetProfileAvatarUseCaseImpl(
        settingsRepository: gh<_i26.SettingsRepository>(),
        avatarStorageRepository: gh<_i78.AvatarStorageRepository>(),
      ),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.factory<_i103.UserLogInUseCase>(
      () => _i103.UserLogInUseCaseImpl(
        userService: gh<_i32.UserService>(),
        chatsRepository: gh<_i81.ChatsRepository>(),
        settingsRepository: gh<_i26.SettingsRepository>(),
        businessCardRepository: gh<_i41.BusinessCardRepository>(),
        appDocumentsRepository: gh<_i37.AppDocumentsRepository>(),
        removeAllTaskEasAttachmentUseCase:
            gh<_i97.RemoveNotActualTaskEasAttachmentsUseCase>(),
        scopeRepository: gh<_i22.ScopeRepository>(),
        localNotificationsService: gh<_i60.LocalNotificationsService>(),
      ),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.factory<_i104.ApiSettingsCubit>(() => _i104.ApiSettingsCubit(
          gh<_i68.SetAllApiSettingsUseCase>(),
          gh<_i46.GetAllApiSettingsUseCase>(),
          gh<_i94.RefreshAuthSettingsUseCase>(),
          gh<_i83.ClearChatHistoryUseCase>(),
          gh<_i12.GetApiSettingsPresetsUseCase>(),
        ));
    gh.factory<_i105.ChatCubit>(() => _i105.ChatCubit(
          gh<_i85.GetChatFeedObservableUseCase>(),
          gh<_i86.GetChatFeedUseCase>(),
          gh<_i87.GetChatInfoByIdUseCase>(),
          gh<_i84.GetAllMessagesByChatIdUseCase>(),
          gh<_i81.ChatsRepository>(),
          gh<_i32.UserService>(),
          gh<_i99.SendChatMessageUseCase>(),
          gh<_i101.SendMenuItemChatMessageUseCase>(),
          gh<_i98.ResetNewMessagesUseCase>(),
          gh<_i96.RemoveMessageByIdUseCase>(),
          gh<_i100.SendFormChatMessageUseCase>(),
          gh<_i16.LogService>(),
        ));
    gh.factory<_i106.OAuthTryLoginUseCase>(
      () => _i106.OAuthTryLoginUseCaseImpl(
        gh<_i77.AuthProvider>(),
        gh<_i103.UserLogInUseCase>(),
        gh<_i16.LogService>(),
      ),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i107.TasksSbsApiService>(
      () => _i107.TasksSbsApiService(
        gh<_i56.GetTasksSbsApiBaseUrlUseCase>(),
        gh<_i11.DioProvider>(),
        gh<_i16.LogService>(),
        gh<_i15.LocaleInterceptor>(),
        gh<_i39.AuthInterceptor>(),
        gh<_i106.OAuthTryLoginUseCase>(),
        gh<_i18.NavigatorKeyProvider>(),
      ),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i108.TasksSbsRemoteDataSource>(
      () => _i108.TasksSbsRemoteDataSourceImpl(gh<_i107.TasksSbsApiService>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i109.TasksSummaryApiService>(
      () => _i109.TasksSummaryApiService(
        gh<_i57.GetTasksSummaryApiBaseUrlUseCase>(),
        gh<_i11.DioProvider>(),
        gh<_i16.LogService>(),
        gh<_i15.LocaleInterceptor>(),
        gh<_i39.AuthInterceptor>(),
        gh<_i106.OAuthTryLoginUseCase>(),
        gh<_i18.NavigatorKeyProvider>(),
      ),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i110.TasksSummaryRemoteDataSource>(
      () => _i110.TasksSummaryRemoteDataSourceImpl(
          gh<_i109.TasksSummaryApiService>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i111.TasksVacationRemoteDataSource>(
      () => _i111.TasksVacationRemoteDataSourceImpl(
          gh<_i109.TasksSummaryApiService>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i112.CompleteTaskSbsWeeklyUseCase>(
      () => _i112.CompleteTaskSbsWeeklyUseCaseImpl(
          gh<_i108.TasksSbsRemoteDataSource>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i113.CompleteTaskVacationUseCase>(
      () => _i113.CompleteTaskVacationUseCaseImpl(
          gh<_i111.TasksVacationRemoteDataSource>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i114.CompleteTasksSbsLateUseCase>(
      () => _i114.CompleteTaskSbsLateUseCaseImpl(
          gh<_i108.TasksSbsRemoteDataSource>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i115.TasksEasRemoteDataSource>(
      () => _i115.TasksEasRemoteDataSourceImpl(
          gh<_i109.TasksSummaryApiService>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i116.TasksSbsCachedDataSource>(
      () => _i116.TasksSbsCachedDataSourceImpl(
          gh<_i108.TasksSbsRemoteDataSource>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i117.TasksSbsRepository>(
      () => _i117.TasksSbsRepositoryImpl(
          dataSource: gh<_i116.TasksSbsCachedDataSource>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i118.TasksSummaryCachedDataSource>(
      () => _i118.TasksSummaryCachedDataSourceImpl(
          gh<_i110.TasksSummaryRemoteDataSource>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i119.TasksVacationCachedDataSource>(
      () => _i119.TasksEasCachedDataSourceImpl(
          gh<_i111.TasksVacationRemoteDataSource>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i120.TasksVacationRepository>(
      () => _i121.TasksVacationRepositoryImpl(
          dataSource: gh<_i119.TasksVacationCachedDataSource>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i122.ClearCacheTasksSbsLateUseCase>(
      () => _i122.ClearCacheTasksSbsLateUseCaseImpl(
          gh<_i116.TasksSbsCachedDataSource>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i123.ClearCacheTasksSbsWeeklyUseCase>(
      () => _i123.ClearCacheTasksSbsWeeklyUseCaseImpl(
          gh<_i116.TasksSbsCachedDataSource>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i124.ClearCacheTasksVacationUseCase>(
      () => _i124.ClearCacheTasksVacationUseCaseImpl(
          gh<_i119.TasksVacationCachedDataSource>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i125.CompleteCachedTaskSbsWeeklyUseCase>(
      () => _i125.CompleteCachedTaskSbsWeeklyUseCaseImpl(
          gh<_i117.TasksSbsRepository>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i126.CompleteCachedTaskVacationUseCase>(
      () => _i126.CompleteCachedTaskVacationUseCaseImpl(
          gh<_i120.TasksVacationRepository>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i127.CompleteCachedTasksSbsLateUseCase>(
      () => _i127.CompleteCachedTaskSbsLateUseCaseImpl(
          gh<_i117.TasksSbsRepository>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i128.CompleteTaskEasUseCase>(
      () => _i128.CompleteTaskEasUseCaseImpl(
          gh<_i115.TasksEasRemoteDataSource>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i129.DownloadTaskEasAttachmentUseCase>(
      () => _i129.DownloadTaskEasAttachmentUseCaseImpl(
        gh<_i30.TasksEasAttachmentsRepository>(),
        gh<_i115.TasksEasRemoteDataSource>(),
      ),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i130.GetTasksSbsLateUseCase>(
      () => _i130.GetTasksSbsLateUseCaseImpl(
          gh<_i116.TasksSbsCachedDataSource>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i131.GetTasksSbsWeeklyUseCase>(
      () => _i131.GetTasksSbsWeeklyUseCaseImpl(
          gh<_i116.TasksSbsCachedDataSource>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i132.GetTasksSummaryUseCase>(
      () => _i132.GetTasksSummaryUseCaseImpl(
          gh<_i118.TasksSummaryCachedDataSource>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i133.GetTasksVacationUseCase>(
      () => _i133.GetTasksVacationUseCaseImpl(
          gh<_i119.TasksVacationCachedDataSource>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.factory<_i134.TaskEasAttachmentCubit>(() => _i134.TaskEasAttachmentCubit(
          gh<_i14.InitTaskEasAttachmentsDirectoryUseCase>(),
          gh<_i55.GetTaskEasAttachmentUseCase>(),
          gh<_i129.DownloadTaskEasAttachmentUseCase>(),
          gh<_i20.OpenTaskEasAttachmentUseCase>(),
          gh<_i16.LogService>(),
        ));
    gh.lazySingleton<_i135.TasksEasCachedDataSource>(
      () => _i135.TasksEasCachedDataSourceImpl(
        gh<_i115.TasksEasRemoteDataSource>(),
        gh<_i97.RemoveNotActualTaskEasAttachmentsUseCase>(),
      ),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i136.TasksEasRepository>(
      () => _i136.TasksEasRepositoryImpl(
          dataSource: gh<_i135.TasksEasCachedDataSource>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.factory<_i137.TasksSbsLateCubit>(() => _i137.TasksSbsLateCubit(
          gh<_i130.GetTasksSbsLateUseCase>(),
          gh<_i127.CompleteCachedTasksSbsLateUseCase>(),
          gh<_i114.CompleteTasksSbsLateUseCase>(),
          gh<_i122.ClearCacheTasksSbsLateUseCase>(),
          gh<_i16.LogService>(),
        ));
    gh.factory<_i138.TasksSbsLateSummaryCubit>(
        () => _i138.TasksSbsLateSummaryCubit(
              gh<_i130.GetTasksSbsLateUseCase>(),
              gh<_i122.ClearCacheTasksSbsLateUseCase>(),
              gh<_i117.TasksSbsRepository>(),
              gh<_i16.LogService>(),
            ));
    gh.factory<_i139.TasksSbsWeeklyCubit>(() => _i139.TasksSbsWeeklyCubit(
          gh<_i131.GetTasksSbsWeeklyUseCase>(),
          gh<_i123.ClearCacheTasksSbsWeeklyUseCase>(),
          gh<_i125.CompleteCachedTaskSbsWeeklyUseCase>(),
          gh<_i112.CompleteTaskSbsWeeklyUseCase>(),
          gh<_i16.LogService>(),
        ));
    gh.factory<_i140.TasksSbsWeeklySummaryCubit>(
        () => _i140.TasksSbsWeeklySummaryCubit(
              gh<_i131.GetTasksSbsWeeklyUseCase>(),
              gh<_i123.ClearCacheTasksSbsWeeklyUseCase>(),
              gh<_i117.TasksSbsRepository>(),
              gh<_i16.LogService>(),
            ));
    gh.factory<_i141.TasksVacationCubit>(() => _i141.TasksVacationCubit(
          gh<_i133.GetTasksVacationUseCase>(),
          gh<_i126.CompleteCachedTaskVacationUseCase>(),
          gh<_i113.CompleteTaskVacationUseCase>(),
          gh<_i124.ClearCacheTasksVacationUseCase>(),
          gh<_i16.LogService>(),
        ));
    gh.factory<_i142.TasksVacationSummaryCubit>(
        () => _i142.TasksVacationSummaryCubit(
              gh<_i133.GetTasksVacationUseCase>(),
              gh<_i124.ClearCacheTasksVacationUseCase>(),
              gh<_i120.TasksVacationRepository>(),
              gh<_i16.LogService>(),
            ));
    gh.factory<_i143.UserLogOutUseCase>(
      () => _i143.UserLogOutUseCaseImpl(
        gh<_i81.ChatsRepository>(),
        gh<_i91.NewsCachedDataSource>(),
        gh<_i135.TasksEasCachedDataSource>(),
        gh<_i116.TasksSbsCachedDataSource>(),
        gh<_i119.TasksVacationCachedDataSource>(),
        gh<_i32.UserService>(),
        gh<_i77.AuthProvider>(),
        gh<_i22.ScopeRepository>(),
      ),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i144.ClearCacheTasksEasUseCase>(
      () => _i144.ClearCacheTasksEasUseCaseImpl(
          gh<_i135.TasksEasCachedDataSource>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i145.CompleteCachedTaskEasUseCase>(
      () => _i145.CompleteCachedTaskEasUseCaseImpl(
          gh<_i136.TasksEasRepository>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i146.GetTasksEasUseCase>(
      () => _i146.GetTasksEasUseCaseImpl(gh<_i135.TasksEasCachedDataSource>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.factory<_i147.SettingsCubit>(() => _i147.SettingsCubit(
          gh<_i49.GetBillingNotificationSettingsUseCase>(),
          gh<_i51.GetDarkModeSettingsUseCase>(),
          gh<_i54.GetSystemModeSettingsUseCase>(),
          gh<_i53.GetRegionSettingsUseCase>(),
          gh<_i143.UserLogOutUseCase>(),
          gh<_i74.ThemeCubit>(),
          gh<_i95.RegionCubit>(),
        ));
    gh.factory<_i148.TasksEasCubit>(() => _i148.TasksEasCubit(
          gh<_i146.GetTasksEasUseCase>(),
          gh<_i145.CompleteCachedTaskEasUseCase>(),
          gh<_i128.CompleteTaskEasUseCase>(),
          gh<_i144.ClearCacheTasksEasUseCase>(),
          gh<_i16.LogService>(),
        ));
    gh.factory<_i149.TasksEasSummaryCubit>(() => _i149.TasksEasSummaryCubit(
          gh<_i146.GetTasksEasUseCase>(),
          gh<_i144.ClearCacheTasksEasUseCase>(),
          gh<_i136.TasksEasRepository>(),
          gh<_i16.LogService>(),
        ));
    gh.factory<_i150.GetBackgroundDataUseCase>(
        () => _i150.GetBackgroundDataUseCase(
              gh<_i131.GetTasksSbsWeeklyUseCase>(),
              gh<_i130.GetTasksSbsLateUseCase>(),
              gh<_i146.GetTasksEasUseCase>(),
              gh<_i133.GetTasksVacationUseCase>(),
            ));
    gh.factory<_i151.AuthCubit>(() => _i151.AuthCubit(
          gh<_i21.PushNotificationsProvider>(),
          gh<_i90.HasCachedAccountUseCase>(),
          gh<_i106.OAuthTryLoginUseCase>(),
          gh<_i16.LogService>(),
          gh<_i53.GetRegionSettingsUseCase>(),
          gh<_i150.GetBackgroundDataUseCase>(),
        ));
    return this;
  }

// initializes the registration of mockScope-scope dependencies inside of GetIt
  _i1.GetIt initMockScopeScope({_i1.ScopeDisposeFunc? dispose}) {
    return _i2.GetItHelper(this).initScope(
      'mockScope',
      dispose: dispose,
      init: (_i2.GetItHelper gh) {
        gh.lazySingleton<_i81.ChatsRepository>(
          () => _i152.ChatsMockRepository(
            gh<_i33.UuidGenerator>(),
            gh<_i32.UserService>(),
          ),
          registerFor: {
            _dev,
            _prod,
          },
        );
        gh.lazySingleton<_i8.NewsRepository>(
          () => _i153.NewsMockRepository(constants: gh<_i9.Constants>()),
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
          () => _i154.NewsCachedRepository(
            dataSource: gh<_i91.NewsCachedDataSource>(),
            getNewsApiBaseUrlUseCase: gh<_i52.GetNewsApiBaseUrlUseCase>(),
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

class _$AppModule extends _i155.AppModule {}
