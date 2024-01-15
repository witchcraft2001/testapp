// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:shared_preferences/shared_preferences.dart' as _i31;
import 'package:sqflite/sqflite.dart' as _i10;
import 'package:terralinkapp/core/common/constants.dart' as _i9;
import 'package:terralinkapp/core/http/interceptors/auth_interceptor.dart'
    as _i41;
import 'package:terralinkapp/core/http/interceptors/locale_interceptor.dart'
    as _i16;
import 'package:terralinkapp/core/http/overrides/api_http_overrides.dart'
    as _i79;
import 'package:terralinkapp/core/http/providers/dio_provider.dart' as _i11;
import 'package:terralinkapp/core/navigation/app_navigation_service.dart'
    as _i40;
import 'package:terralinkapp/core/navigation/navigator_key_provider.dart'
    as _i19;
import 'package:terralinkapp/core/notifications/providers/push_notifications_provider.dart'
    as _i22;
import 'package:terralinkapp/core/notifications/repositories/app_remote_messages_repository.dart'
    as _i6;
import 'package:terralinkapp/core/notifications/services/local_notifications_service.dart'
    as _i62;
import 'package:terralinkapp/core/notifications/services/timezone_service.dart'
    as _i34;
import 'package:terralinkapp/core/repositories/di_scope_repository.dart'
    as _i24;
import 'package:terralinkapp/core/repositories/scope_repository.dart' as _i23;
import 'package:terralinkapp/core/services/app_parsing_tags_service.dart'
    as _i5;
import 'package:terralinkapp/core/services/converters/businesscard_to_vcard_converter.dart'
    as _i44;
import 'package:terralinkapp/core/services/log_service.dart' as _i17;
import 'package:terralinkapp/core/services/user_service/user_service.dart'
    as _i35;
import 'package:terralinkapp/core/services/websocket_service.dart' as _i77;
import 'package:terralinkapp/core/theme/domain/cubits/theme_cubit.dart' as _i76;
import 'package:terralinkapp/di/modules/app_module.dart' as _i158;
import 'package:terralinkapp/features/api_settings/data/data_sources/api_settings_presets_data_source.dart'
    as _i3;
import 'package:terralinkapp/features/api_settings/data/providers/api_settings_provider.dart'
    as _i37;
import 'package:terralinkapp/features/api_settings/data/repositories/api_settings_presets_repository.dart'
    as _i4;
import 'package:terralinkapp/features/api_settings/domain/cubits/api_settings_cubit.dart'
    as _i107;
import 'package:terralinkapp/features/auth/data/providers/auth_provider.dart'
    as _i80;
import 'package:terralinkapp/features/auth/data/use_cases/get_background_data_use_case.dart'
    as _i153;
import 'package:terralinkapp/features/auth/data/use_cases/has_cached_account_use_case.dart'
    as _i93;
import 'package:terralinkapp/features/auth/data/use_cases/oauth_try_login_use_case.dart'
    as _i109;
import 'package:terralinkapp/features/auth/data/use_cases/refresh_auth_settings_use_case.dart'
    as _i97;
import 'package:terralinkapp/features/auth/data/use_cases/user_log_in_use_case.dart'
    as _i106;
import 'package:terralinkapp/features/auth/data/use_cases/user_log_out_use_case.dart'
    as _i146;
import 'package:terralinkapp/features/auth/domain/auth_cubit.dart' as _i154;
import 'package:terralinkapp/features/business_cards/data/data_sources/business_card_db_data_source.dart'
    as _i42;
import 'package:terralinkapp/features/business_cards/data/repositories/business_card_repository.dart'
    as _i43;
import 'package:terralinkapp/features/business_cards/data/use_cases/get_all_business_cards_use_case.dart'
    as _i49;
import 'package:terralinkapp/features/business_cards/data/use_cases/get_business_card_by_id_use_case.dart'
    as _i52;
import 'package:terralinkapp/features/business_cards/data/use_cases/get_vcard_from_business_card_use_case.dart'
    as _i60;
import 'package:terralinkapp/features/business_cards/data/use_cases/remove_business_card_by_id_use_case.dart'
    as _i66;
import 'package:terralinkapp/features/business_cards/data/use_cases/save_business_card_use_case.dart'
    as _i68;
import 'package:terralinkapp/features/business_cards/data/use_cases/save_vcard_file_from_business_card_use_case.dart'
    as _i69;
import 'package:terralinkapp/features/business_cards/data/use_cases/share_vcard_from_bussiness_card_use_case.dart'
    as _i75;
import 'package:terralinkapp/features/business_cards/domain/cubits/business_card_show_cubit.dart'
    as _i82;
import 'package:terralinkapp/features/business_cards/domain/cubits/business_cards_list_cubit.dart'
    as _i83;
import 'package:terralinkapp/features/chat/data/data_sources/chats_db_data_source.dart'
    as _i45;
import 'package:terralinkapp/features/chat/data/data_sources/messages_db_data_source.dart'
    as _i18;
import 'package:terralinkapp/features/chat/data/providers/uuid_generator.dart'
    as _i36;
import 'package:terralinkapp/features/chat/data/repositories/chats_mock_repository.dart'
    as _i155;
import 'package:terralinkapp/features/chat/data/repositories/chats_remote_repository.dart'
    as _i85;
import 'package:terralinkapp/features/chat/data/repositories/chats_repository.dart'
    as _i84;
import 'package:terralinkapp/features/chat/data/use_cases/chat/clear_chat_history_use_case.dart'
    as _i86;
import 'package:terralinkapp/features/chat/data/use_cases/chat/get_all_messages_by_chat_id_use_case.dart'
    as _i87;
import 'package:terralinkapp/features/chat/data/use_cases/chat/get_chat_info_by_id_use_case.dart'
    as _i90;
import 'package:terralinkapp/features/chat/data/use_cases/chat/remove_message_by_id_use_case.dart'
    as _i99;
import 'package:terralinkapp/features/chat/data/use_cases/chat/reset_new_messages_use_case.dart'
    as _i101;
import 'package:terralinkapp/features/chat/data/use_cases/chat/send_chat_message_use_case.dart'
    as _i102;
import 'package:terralinkapp/features/chat/data/use_cases/chat/send_form_chat_message_use_case.dart'
    as _i103;
import 'package:terralinkapp/features/chat/data/use_cases/chat/send_menu_item_chat_message_use_case.dart'
    as _i104;
import 'package:terralinkapp/features/chat/data/use_cases/chats/get_chat_feed_observable_use_case.dart'
    as _i88;
import 'package:terralinkapp/features/chat/data/use_cases/chats/get_chat_feed_use_case.dart'
    as _i89;
import 'package:terralinkapp/features/chat/domain/cubits/chat_cubit.dart'
    as _i108;
import 'package:terralinkapp/features/feedback/data/use_cases/send_feedback_use_case.dart'
    as _i25;
import 'package:terralinkapp/features/holidays/domain/use_cases/init_holidays_directory_use_case.dart'
    as _i14;
import 'package:terralinkapp/features/holidays/domain/use_cases/send_holidays_card_by_email_use_case.dart'
    as _i26;
import 'package:terralinkapp/features/holidays/domain/use_cases/share_holidays_card_use_case.dart'
    as _i30;
import 'package:terralinkapp/features/news/data/data_sources/news_cached_data_source.dart'
    as _i94;
import 'package:terralinkapp/features/news/data/data_sources/news_remote_data_source.dart'
    as _i64;
import 'package:terralinkapp/features/news/data/repositories/news_cached_repository.dart'
    as _i157;
import 'package:terralinkapp/features/news/data/repositories/news_mock_repository.dart'
    as _i156;
import 'package:terralinkapp/features/news/data/repositories/news_repository.dart'
    as _i8;
import 'package:terralinkapp/features/news/data/services/news_api_service.dart'
    as _i63;
import 'package:terralinkapp/features/news/data/use_cases/clear_cache_news_use_case.dart'
    as _i7;
import 'package:terralinkapp/features/news/data/use_cases/get_all_news_use_case.dart'
    as _i91;
import 'package:terralinkapp/features/news/domain/cubits/news_cubit.dart'
    as _i95;
import 'package:terralinkapp/features/profile/data/data_sources/file_storage_data_source.dart'
    as _i47;
import 'package:terralinkapp/features/profile/data/repositories/avatar_storage_repository.dart'
    as _i81;
import 'package:terralinkapp/features/profile/data/use_cases/get_profile_avatar_use_case.dart'
    as _i92;
import 'package:terralinkapp/features/profile/data/use_cases/set_profile_avatar_use_case.dart'
    as _i105;
import 'package:terralinkapp/features/profile_documents/data/data_sources/app_documents_db_data_source.dart'
    as _i38;
import 'package:terralinkapp/features/profile_documents/data/repositories/app_documents_repository.dart'
    as _i39;
import 'package:terralinkapp/features/profile_documents/data/use_cases/add_app_documents_use_case.dart'
    as _i78;
import 'package:terralinkapp/features/profile_documents/data/use_cases/edit_app_documents_use_case.dart'
    as _i46;
import 'package:terralinkapp/features/profile_documents/data/use_cases/get_app_documents_use_case.dart'
    as _i50;
import 'package:terralinkapp/features/profile_documents/data/use_cases/init_case_app_documents_use_case.dart'
    as _i13;
import 'package:terralinkapp/features/profile_documents/data/use_cases/open_app_document_use_case.dart'
    as _i20;
import 'package:terralinkapp/features/profile_documents/data/use_cases/remove_case_app_documents_use_case.dart'
    as _i65;
import 'package:terralinkapp/features/profile_documents/data/use_cases/share_app_documents_use_case.dart'
    as _i29;
import 'package:terralinkapp/features/profile_documents/domain/cubits/profile_documents_cubit.dart'
    as _i96;
import 'package:terralinkapp/features/region/domain/cubits/region_cubit.dart'
    as _i98;
import 'package:terralinkapp/features/settings/data/data_sources/settings_data_source.dart'
    as _i27;
import 'package:terralinkapp/features/settings/data/repositories/settings_repository.dart'
    as _i28;
import 'package:terralinkapp/features/settings/data/use_cases/get_all_api_settings_use_case.dart'
    as _i48;
import 'package:terralinkapp/features/settings/data/use_cases/get_api_settings_presets_use_case.dart'
    as _i12;
import 'package:terralinkapp/features/settings/data/use_cases/get_billing_notification_settings_use_case.dart'
    as _i51;
import 'package:terralinkapp/features/settings/data/use_cases/get_dark_mode_settings_use_case.dart'
    as _i53;
import 'package:terralinkapp/features/settings/data/use_cases/get_news_api_base_url_use_case.dart'
    as _i54;
import 'package:terralinkapp/features/settings/data/use_cases/get_region_settings_use_case.dart'
    as _i55;
import 'package:terralinkapp/features/settings/data/use_cases/get_system_mode_settings_use_case.dart'
    as _i56;
import 'package:terralinkapp/features/settings/data/use_cases/get_tasks_sbs_api_base_url_use_case.dart'
    as _i58;
import 'package:terralinkapp/features/settings/data/use_cases/get_tasks_summary_api_base_url_use_case.dart'
    as _i59;
import 'package:terralinkapp/features/settings/data/use_cases/get_ws_url_use_case.dart'
    as _i61;
import 'package:terralinkapp/features/settings/data/use_cases/set_all_api_settings_use_case.dart'
    as _i70;
import 'package:terralinkapp/features/settings/data/use_cases/set_billing_notification_settings_use_case.dart'
    as _i71;
import 'package:terralinkapp/features/settings/data/use_cases/set_dark_mode_settings_use_case.dart'
    as _i72;
import 'package:terralinkapp/features/settings/data/use_cases/set_region_settings_use_case.dart'
    as _i73;
import 'package:terralinkapp/features/settings/data/use_cases/set_system_mode_settings_use_case.dart'
    as _i74;
import 'package:terralinkapp/features/settings/domain/cubits/settings_cubit.dart'
    as _i150;
import 'package:terralinkapp/features/tasks/common/data/services/tasks_summary_api_service.dart'
    as _i112;
import 'package:terralinkapp/features/tasks/eas/data/data_source/tasks_eas_attachments_db_data_source.dart'
    as _i32;
import 'package:terralinkapp/features/tasks/eas/data/data_source/tasks_eas_cached_data_source.dart'
    as _i138;
import 'package:terralinkapp/features/tasks/eas/data/data_source/tasks_eas_remote_data_source.dart'
    as _i118;
import 'package:terralinkapp/features/tasks/eas/data/repositories/tasks_eas_attachments_repository.dart'
    as _i33;
import 'package:terralinkapp/features/tasks/eas/data/repositories/tasks_eas_repository.dart'
    as _i139;
import 'package:terralinkapp/features/tasks/eas/data/use_cases/attachments/download_task_eas_attachment_use_case.dart'
    as _i132;
import 'package:terralinkapp/features/tasks/eas/data/use_cases/attachments/get_task_eas_attachment_use_case.dart'
    as _i57;
import 'package:terralinkapp/features/tasks/eas/data/use_cases/attachments/init_task_eas_attachments_directory_use_case.dart'
    as _i15;
import 'package:terralinkapp/features/tasks/eas/data/use_cases/attachments/open_task_eas_attachment_use_case.dart'
    as _i21;
import 'package:terralinkapp/features/tasks/eas/data/use_cases/attachments/remove_not_actual_task_eas_attachments_use_case.dart'
    as _i100;
import 'package:terralinkapp/features/tasks/eas/data/use_cases/attachments/remove_task_eas_attachment_use_case.dart'
    as _i67;
import 'package:terralinkapp/features/tasks/eas/data/use_cases/tasks/clear_cache_tasks_eas_use_case.dart'
    as _i147;
import 'package:terralinkapp/features/tasks/eas/data/use_cases/tasks/complete_cached_task_eas_use_case.dart'
    as _i148;
import 'package:terralinkapp/features/tasks/eas/data/use_cases/tasks/complete_task_eas_use_case.dart'
    as _i131;
import 'package:terralinkapp/features/tasks/eas/data/use_cases/tasks/get_tasks_eas_use_case.dart'
    as _i149;
import 'package:terralinkapp/features/tasks/eas/domain/cubits/task_eas_attachment_cubit.dart'
    as _i137;
import 'package:terralinkapp/features/tasks/eas/domain/cubits/tasks_eas_cubit.dart'
    as _i151;
import 'package:terralinkapp/features/tasks/sbs/data/data_sources/tasks_sbs_cached_data_source.dart'
    as _i119;
import 'package:terralinkapp/features/tasks/sbs/data/data_sources/tasks_sbs_remote_data_source.dart'
    as _i111;
import 'package:terralinkapp/features/tasks/sbs/data/repositories/tasks_sbs_repository.dart'
    as _i120;
import 'package:terralinkapp/features/tasks/sbs/data/services/tasks_sbs_api_service.dart'
    as _i110;
import 'package:terralinkapp/features/tasks/sbs_late/data/use_cases/clear_cache_tasks_sbs_late_use_case.dart'
    as _i125;
import 'package:terralinkapp/features/tasks/sbs_late/data/use_cases/complete_cached_tasks_late_sbs_use_case.dart'
    as _i130;
import 'package:terralinkapp/features/tasks/sbs_late/data/use_cases/complete_tasks_sbs_late_use_case.dart'
    as _i117;
import 'package:terralinkapp/features/tasks/sbs_late/data/use_cases/get_tasks_sbs_late_use_case.dart'
    as _i133;
import 'package:terralinkapp/features/tasks/sbs_late/domain/cubits/tasks_sbs_late_cubit.dart'
    as _i140;
import 'package:terralinkapp/features/tasks/sbs_weekly/data/use_cases/clear_cache_tasks_sbs_weekly_use_case.dart'
    as _i126;
import 'package:terralinkapp/features/tasks/sbs_weekly/data/use_cases/complete_cached_task_sbs_weekly_use_case.dart'
    as _i128;
import 'package:terralinkapp/features/tasks/sbs_weekly/data/use_cases/complete_task_sbs_weekly_use_case.dart'
    as _i115;
import 'package:terralinkapp/features/tasks/sbs_weekly/data/use_cases/get_tasks_sbs_weekly_use_case.dart'
    as _i134;
import 'package:terralinkapp/features/tasks/sbs_weekly/domain/cubits/tasks_sbs_weekly_cubit.dart'
    as _i142;
import 'package:terralinkapp/features/tasks/summary/data/data_sources/tasks_summary_cached_data_source.dart'
    as _i121;
import 'package:terralinkapp/features/tasks/summary/data/data_sources/tasks_summary_remote_data_source.dart'
    as _i113;
import 'package:terralinkapp/features/tasks/summary/data/use_cases/get_tasks_summary_use_case.dart'
    as _i135;
import 'package:terralinkapp/features/tasks/summary/domain/cubits/tasks_eas_summary_cubit.dart'
    as _i152;
import 'package:terralinkapp/features/tasks/summary/domain/cubits/tasks_sbs_late_summary_cubit.dart'
    as _i141;
import 'package:terralinkapp/features/tasks/summary/domain/cubits/tasks_sbs_weekly_summary_cubit.dart'
    as _i143;
import 'package:terralinkapp/features/tasks/summary/domain/cubits/tasks_vacation_summary_cubit.dart'
    as _i145;
import 'package:terralinkapp/features/tasks/vacations/data/data_sources/tasks_vacation_cached_data_source.dart'
    as _i122;
import 'package:terralinkapp/features/tasks/vacations/data/data_sources/tasks_vacation_remote_data_source.dart'
    as _i114;
import 'package:terralinkapp/features/tasks/vacations/data/repositories/tasks_vacation_cached_repository.dart'
    as _i124;
import 'package:terralinkapp/features/tasks/vacations/data/repositories/tasks_vacation_repository.dart'
    as _i123;
import 'package:terralinkapp/features/tasks/vacations/data/use_cases/clear_cache_tasks_vacation_use_case.dart'
    as _i127;
import 'package:terralinkapp/features/tasks/vacations/data/use_cases/complete_cached_task_vacation_use_case.dart'
    as _i129;
import 'package:terralinkapp/features/tasks/vacations/data/use_cases/complete_task_vacation_use_case.dart'
    as _i116;
import 'package:terralinkapp/features/tasks/vacations/data/use_cases/get_tasks_vacation_use_case.dart'
    as _i136;
import 'package:terralinkapp/features/tasks/vacations/domain/cubits/tasks_vacation_cubit.dart'
    as _i144;

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
    gh.lazySingleton<_i14.InitHolidaysDirectoryUseCase>(
      () => _i14.InitHolidaysDirectoryUseCaseImpl(),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i15.InitTaskEasAttachmentsDirectoryUseCase>(
      () => _i15.InitTaskEasAttachmentsDirectoryUseCaseImpl(),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i16.LocaleInterceptor>(() => _i16.LocaleInterceptor());
    gh.lazySingleton<_i17.LogService>(
      () => _i17.LogService(),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i18.MessagesDbDataSource>(
      () => _i18.MessagesDbDataSourceImpl(gh<_i10.Database>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i19.NavigatorKeyProvider>(
      () => _i19.NavigatorKeyProvider(),
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
    gh.lazySingleton<_i21.OpenTaskEasAttachmentUseCase>(
      () => _i21.OpenTaskEasAttachmentUseCaseImpl(),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i22.PushNotificationsProvider>(
      () => _i22.PushNotificationsProviderImpl(),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i23.ScopeRepository>(
      () => _i24.DiScopeRepository(),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i25.SendFeedbackUseCase>(
      () => _i25.SendFeedbackUseCaseImpl(),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i26.SendHolidaysCardByEmailUseCase>(
      () => _i26.SendHolidaysCardByEmailUseCaseImpl(),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i27.SettingsDataSource>(
      () => _i27.SettingsDataSourceImpl(),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i28.SettingsRepository>(
      () => _i28.SettingsRepositoryImpl(
          dataSource: gh<_i27.SettingsDataSource>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i29.ShareAppDocumentsUseCase>(
      () => _i29.ShareAppDocumentsUseCaseImpl(),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i30.ShareHolidaysCardUseCase>(
      () => _i30.ShareAppDocumentsUseCaseImpl(),
      registerFor: {
        _dev,
        _prod,
      },
    );
    await gh.factoryAsync<_i31.SharedPreferences>(
      () => appModule.providePrefs,
      preResolve: true,
    );
    gh.lazySingleton<_i32.TasksEasAttachmentsDbDataSource>(
      () => _i32.TasksEasAttachmentsDbDataSourceImpl(gh<_i10.Database>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i33.TasksEasAttachmentsRepository>(
      () => _i33.TasksEasAttachmentsRepositoryImpl(
          dbDataSource: gh<_i32.TasksEasAttachmentsDbDataSource>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i34.TimeZoneService>(
      () => _i34.TimeZoneServiceImpl(),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i35.UserService>(
      () => _i35.UserServiceImpl(),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i36.UuidGenerator>(
      () => _i36.UuidGeneratorImpl(),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i37.ApiSettingsProvider>(() => _i37.ApiSettingsProvider(
          gh<_i27.SettingsDataSource>(),
          gh<_i9.Constants>(),
        ));
    gh.lazySingleton<_i38.AppDocumentsDbDataSource>(
      () => _i38.AppDocumentsDbDataSourceImpl(gh<_i10.Database>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i39.AppDocumentsRepository>(
      () => _i39.AppDocumentsDbRepositoryImpl(
          dataSource: gh<_i38.AppDocumentsDbDataSource>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i40.AppNavigationService>(
      () => _i40.AppNavigationService(gh<_i19.NavigatorKeyProvider>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i41.AuthInterceptor>(
        () => _i41.AuthInterceptor(gh<_i35.UserService>()));
    gh.lazySingleton<_i42.BusinessCardDbDataSource>(
      () => _i42.BusinessCardDbDataSourceImpl(gh<_i10.Database>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i43.BusinessCardRepository>(
      () => _i43.BusinessCardRepositoryImpl(
          dataSource: gh<_i42.BusinessCardDbDataSource>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.factory<_i44.BusinessCardToVCardConverter>(
        () => _i44.BusinessCardToVCardConverter(gh<_i9.Constants>()));
    gh.lazySingleton<_i45.ChatsDbDataSource>(
      () => _i45.ChatsDbDataSourceImpl(gh<_i10.Database>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i46.EditAppDocumentUseCase>(
      () => _i46.EditAppDocumentUseCaseImpl(gh<_i39.AppDocumentsRepository>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i47.FileStorageDataSource>(
      () => _i47.FileStorageDataSourceImpl(logService: gh<_i17.LogService>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.factory<_i48.GetAllApiSettingsUseCase>(
        () => _i48.GetAllApiSettingsUseCase(gh<_i37.ApiSettingsProvider>()));
    gh.lazySingleton<_i49.GetAllBusinessCardsUseCase>(
      () => _i49.GetAllBusinessCardsUseCaseImpl(
          gh<_i43.BusinessCardRepository>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i50.GetAppDocumentsUseCase>(
      () => _i50.GetAppDocumentsUseCaseImpl(gh<_i39.AppDocumentsRepository>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i51.GetBillingNotificationSettingsUseCase>(
      () => _i51.GetBillingNotificationSettingsUseCaseImpl(
          gh<_i27.SettingsDataSource>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i52.GetBusinessCardByIdUseCase>(
      () => _i52.GetBusinessCardByIdUseCaseImpl(
          gh<_i43.BusinessCardRepository>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i53.GetDarkModeSettingsUseCase>(
      () => _i53.GetDarkModeSettingsUseCaseImpl(gh<_i27.SettingsDataSource>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.factory<_i54.GetNewsApiBaseUrlUseCase>(
        () => _i54.GetNewsApiBaseUrlUseCase(gh<_i37.ApiSettingsProvider>()));
    gh.lazySingleton<_i55.GetRegionSettingsUseCase>(
      () => _i55.GetRegionSettingsUseCaseImpl(gh<_i27.SettingsDataSource>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i56.GetSystemModeSettingsUseCase>(
      () =>
          _i56.GetSystemModeSettingsUseCaseImpl(gh<_i27.SettingsDataSource>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i57.GetTaskEasAttachmentUseCase>(
      () => _i57.GetTaskEasAttachmentUseCaseImpl(
          gh<_i33.TasksEasAttachmentsRepository>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.factory<_i58.GetTasksSbsApiBaseUrlUseCase>(() =>
        _i58.GetTasksSbsApiBaseUrlUseCase(gh<_i37.ApiSettingsProvider>()));
    gh.factory<_i59.GetTasksSummaryApiBaseUrlUseCase>(() =>
        _i59.GetTasksSummaryApiBaseUrlUseCase(gh<_i37.ApiSettingsProvider>()));
    gh.factory<_i60.GetVCardFromBusinessCardUseCase>(() =>
        _i60.GetVCardFromBusinessCardUseCase(
            gh<_i44.BusinessCardToVCardConverter>()));
    gh.factory<_i61.GetWsUrlUseCase>(
        () => _i61.GetWsUrlUseCase(gh<_i37.ApiSettingsProvider>()));
    gh.lazySingleton<_i62.LocalNotificationsService>(
      () => _i62.LocalNotificationsServiceImpl(
        gh<_i19.NavigatorKeyProvider>(),
        gh<_i6.AppRemoteMessagesRepository>(),
        gh<_i17.LogService>(),
      ),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i63.NewsApiService>(
      () => _i63.NewsApiService(
        gh<_i11.DioProvider>(),
        gh<_i17.LogService>(),
        gh<_i54.GetNewsApiBaseUrlUseCase>(),
      ),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i64.NewsRemoteDataSource>(
      () => _i64.NewsRemoteDataSourceImpl(gh<_i63.NewsApiService>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i65.RemoveAppDocumentUseCase>(
      () =>
          _i65.RemoveAppDocumentUseCaseImpl(gh<_i39.AppDocumentsRepository>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i66.RemoveBusinessCardByIdUseCase>(
      () => _i66.RemoveBusinessCardByIdUseCaseImpl(
          gh<_i43.BusinessCardRepository>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i67.RemoveTaskEasAttachmentUseCase>(
      () => _i67.RemoveTaskEasAttachmentUseCaseImpl(
          gh<_i33.TasksEasAttachmentsRepository>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i68.SaveBusinessCardUseCase>(
      () => _i68.SaveBusinessCardUseCaseImpl(gh<_i43.BusinessCardRepository>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.factory<_i69.SaveVCardFileFromBusinessCardUseCase>(() =>
        _i69.SaveVCardFileFromBusinessCardUseCase(
            gh<_i60.GetVCardFromBusinessCardUseCase>()));
    gh.factory<_i70.SetAllApiSettingsUseCase>(
        () => _i70.SetAllApiSettingsUseCase(gh<_i37.ApiSettingsProvider>()));
    gh.lazySingleton<_i71.SetBillingNotificationSettingsUseCase>(
      () => _i71.SetBillingNotificationSettingsUseCaseImpl(
        gh<_i27.SettingsDataSource>(),
        gh<_i62.LocalNotificationsService>(),
      ),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i72.SetDarkModeSettingsUseCase>(
      () => _i72.SetDarkModeSettingsUseCaseImpl(gh<_i27.SettingsDataSource>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i73.SetRegionSettingsUseCase>(
      () => _i73.SetRegionSettingsUseCaseImpl(gh<_i27.SettingsDataSource>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i74.SetSystemModeSettingsUseCase>(
      () =>
          _i74.SetSystemModeSettingsUseCaseImpl(gh<_i27.SettingsDataSource>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.factory<_i75.ShareVCardFromBusinessCardUseCase>(() =>
        _i75.ShareVCardFromBusinessCardUseCase(
            gh<_i69.SaveVCardFileFromBusinessCardUseCase>()));
    gh.lazySingleton<_i76.ThemeCubit>(
      () => _i76.ThemeCubit(
        gh<_i53.GetDarkModeSettingsUseCase>(),
        gh<_i72.SetDarkModeSettingsUseCase>(),
        gh<_i56.GetSystemModeSettingsUseCase>(),
        gh<_i74.SetSystemModeSettingsUseCase>(),
      ),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i77.WebsocketService>(
      () => _i77.WebsocketServiceImpl(
        gh<_i35.UserService>(),
        gh<_i22.PushNotificationsProvider>(),
        gh<_i17.LogService>(),
        gh<_i61.GetWsUrlUseCase>(),
      ),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i78.AddAppDocumentsUseCase>(
      () =>
          _i78.AddAppDocumentsAddUseCaseImpl(gh<_i39.AppDocumentsRepository>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i79.ApiHttpOverrides>(
      () => _i79.ApiHttpOverrides(gh<_i54.GetNewsApiBaseUrlUseCase>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i80.AuthProvider>(
      () => _i80.AuthProvider(
        gh<_i9.Constants>(),
        gh<_i19.NavigatorKeyProvider>(),
        gh<_i48.GetAllApiSettingsUseCase>(),
      ),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i81.AvatarStorageRepository>(
      () => _i81.AvatarStorageRepositoryImpl(
          dataSource: gh<_i47.FileStorageDataSource>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.factoryParam<_i82.BusinessCardShowCubit, int, dynamic>((
      id,
      _,
    ) =>
        _i82.BusinessCardShowCubit(
          id,
          gh<_i52.GetBusinessCardByIdUseCase>(),
          gh<_i17.LogService>(),
          gh<_i75.ShareVCardFromBusinessCardUseCase>(),
          gh<_i60.GetVCardFromBusinessCardUseCase>(),
        ));
    gh.factory<_i83.BusinessCardsListCubit>(() => _i83.BusinessCardsListCubit(
          gh<_i49.GetAllBusinessCardsUseCase>(),
          gh<_i66.RemoveBusinessCardByIdUseCase>(),
          gh<_i75.ShareVCardFromBusinessCardUseCase>(),
          gh<_i17.LogService>(),
        ));
    gh.lazySingleton<_i84.ChatsRepository>(
      () => _i85.ChatsRemoteRepository(
        gh<_i77.WebsocketService>(),
        gh<_i45.ChatsDbDataSource>(),
        gh<_i36.UuidGenerator>(),
        gh<_i35.UserService>(),
        gh<_i18.MessagesDbDataSource>(),
        gh<_i17.LogService>(),
      ),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.factory<_i86.ClearChatHistoryUseCase>(
        () => _i86.ClearChatHistoryUseCase(gh<_i84.ChatsRepository>()));
    gh.lazySingleton<_i87.GetAllMessagesByChatIdUseCase>(
      () => _i87.GetAllMessagesByChatIdUseCaseImpl(gh<_i84.ChatsRepository>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i88.GetChatFeedObservableUseCase>(
      () => _i88.GetChatFeedObservableUseCaseImpl(gh<_i84.ChatsRepository>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i89.GetChatFeedUseCase>(
      () => _i89.GetChatFeedUseCaseImpl(gh<_i84.ChatsRepository>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i90.GetChatInfoByIdUseCase>(
      () => _i90.GetChatInfoByIdUseCaseImpl(gh<_i84.ChatsRepository>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.factory<_i91.GetNewsUseCase>(
      () => _i91.GetNewsUseCaseImpl(
        gh<_i8.NewsRepository>(),
        gh<_i55.GetRegionSettingsUseCase>(),
      ),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i92.GetProfileAvatarUseCase>(
      () => _i92.GetProfileAvatarUseCaseImpl(
        settingsRepository: gh<_i28.SettingsRepository>(),
        avatarStorageRepository: gh<_i81.AvatarStorageRepository>(),
      ),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.factory<_i93.HasCachedAccountUseCase>(
        () => _i93.HasCachedAccountUseCase(gh<_i80.AuthProvider>()));
    gh.lazySingleton<_i94.NewsCachedDataSource>(
      () => _i94.NewsCachedDataSourceImpl(
          newsRepository: gh<_i64.NewsRemoteDataSource>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.factory<_i95.NewsCubit>(() => _i95.NewsCubit(
          gh<_i91.GetNewsUseCase>(),
          gh<_i7.ClearCacheNewsUseCase>(),
          gh<_i17.LogService>(),
        ));
    gh.factory<_i96.ProfileDocumentsCubit>(() => _i96.ProfileDocumentsCubit(
          gh<_i13.InitAppDocumentsUseCase>(),
          gh<_i50.GetAppDocumentsUseCase>(),
          gh<_i78.AddAppDocumentsUseCase>(),
          gh<_i65.RemoveAppDocumentUseCase>(),
          gh<_i46.EditAppDocumentUseCase>(),
          gh<_i29.ShareAppDocumentsUseCase>(),
          gh<_i20.OpenAppDocumentUseCase>(),
        ));
    gh.factory<_i97.RefreshAuthSettingsUseCase>(
        () => _i97.RefreshAuthSettingsUseCase(gh<_i80.AuthProvider>()));
    gh.lazySingleton<_i98.RegionCubit>(
      () => _i98.RegionCubit(
        gh<_i55.GetRegionSettingsUseCase>(),
        gh<_i73.SetRegionSettingsUseCase>(),
      ),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i99.RemoveMessageByIdUseCase>(
      () => _i99.RemoveMessageByIdUseCaseImpl(gh<_i84.ChatsRepository>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i100.RemoveNotActualTaskEasAttachmentsUseCase>(
      () => _i100.RemoveNotActualTaskEasAttachmentsUseCaseImpl(
        gh<_i33.TasksEasAttachmentsRepository>(),
        gh<_i67.RemoveTaskEasAttachmentUseCase>(),
      ),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i101.ResetNewMessagesUseCase>(
      () => _i101.ResetNewMessagesUseCaseImpl(gh<_i84.ChatsRepository>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i102.SendChatMessageUseCase>(
      () => _i102.SendChatMessageUseCaseImpl(gh<_i84.ChatsRepository>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i103.SendFormChatMessageUseCase>(
      () => _i103.SendFormChatMessageUseCaseImpl(gh<_i84.ChatsRepository>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i104.SendMenuItemChatMessageUseCase>(
      () =>
          _i104.SendMenuItemChatMessageUseCaseImpl(gh<_i84.ChatsRepository>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i105.SetProfileAvatarUseCase>(
      () => _i105.SetProfileAvatarUseCaseImpl(
        settingsRepository: gh<_i28.SettingsRepository>(),
        avatarStorageRepository: gh<_i81.AvatarStorageRepository>(),
      ),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.factory<_i106.UserLogInUseCase>(
      () => _i106.UserLogInUseCaseImpl(
        userService: gh<_i35.UserService>(),
        chatsRepository: gh<_i84.ChatsRepository>(),
        settingsRepository: gh<_i28.SettingsRepository>(),
        businessCardRepository: gh<_i43.BusinessCardRepository>(),
        appDocumentsRepository: gh<_i39.AppDocumentsRepository>(),
        removeAllTaskEasAttachmentUseCase:
            gh<_i100.RemoveNotActualTaskEasAttachmentsUseCase>(),
        scopeRepository: gh<_i23.ScopeRepository>(),
        localNotificationsService: gh<_i62.LocalNotificationsService>(),
      ),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.factory<_i107.ApiSettingsCubit>(() => _i107.ApiSettingsCubit(
          gh<_i70.SetAllApiSettingsUseCase>(),
          gh<_i48.GetAllApiSettingsUseCase>(),
          gh<_i97.RefreshAuthSettingsUseCase>(),
          gh<_i86.ClearChatHistoryUseCase>(),
          gh<_i12.GetApiSettingsPresetsUseCase>(),
        ));
    gh.factory<_i108.ChatCubit>(() => _i108.ChatCubit(
          gh<_i88.GetChatFeedObservableUseCase>(),
          gh<_i89.GetChatFeedUseCase>(),
          gh<_i90.GetChatInfoByIdUseCase>(),
          gh<_i87.GetAllMessagesByChatIdUseCase>(),
          gh<_i84.ChatsRepository>(),
          gh<_i35.UserService>(),
          gh<_i102.SendChatMessageUseCase>(),
          gh<_i104.SendMenuItemChatMessageUseCase>(),
          gh<_i101.ResetNewMessagesUseCase>(),
          gh<_i99.RemoveMessageByIdUseCase>(),
          gh<_i103.SendFormChatMessageUseCase>(),
          gh<_i17.LogService>(),
        ));
    gh.factory<_i109.OAuthTryLoginUseCase>(
      () => _i109.OAuthTryLoginUseCaseImpl(
        gh<_i80.AuthProvider>(),
        gh<_i106.UserLogInUseCase>(),
        gh<_i17.LogService>(),
      ),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i110.TasksSbsApiService>(
      () => _i110.TasksSbsApiService(
        gh<_i58.GetTasksSbsApiBaseUrlUseCase>(),
        gh<_i11.DioProvider>(),
        gh<_i17.LogService>(),
        gh<_i16.LocaleInterceptor>(),
        gh<_i41.AuthInterceptor>(),
        gh<_i109.OAuthTryLoginUseCase>(),
        gh<_i19.NavigatorKeyProvider>(),
      ),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i111.TasksSbsRemoteDataSource>(
      () => _i111.TasksSbsRemoteDataSourceImpl(gh<_i110.TasksSbsApiService>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i112.TasksSummaryApiService>(
      () => _i112.TasksSummaryApiService(
        gh<_i59.GetTasksSummaryApiBaseUrlUseCase>(),
        gh<_i11.DioProvider>(),
        gh<_i17.LogService>(),
        gh<_i16.LocaleInterceptor>(),
        gh<_i41.AuthInterceptor>(),
        gh<_i109.OAuthTryLoginUseCase>(),
        gh<_i19.NavigatorKeyProvider>(),
      ),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i113.TasksSummaryRemoteDataSource>(
      () => _i113.TasksSummaryRemoteDataSourceImpl(
          gh<_i112.TasksSummaryApiService>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i114.TasksVacationRemoteDataSource>(
      () => _i114.TasksVacationRemoteDataSourceImpl(
          gh<_i112.TasksSummaryApiService>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i115.CompleteTaskSbsWeeklyUseCase>(
      () => _i115.CompleteTaskSbsWeeklyUseCaseImpl(
          gh<_i111.TasksSbsRemoteDataSource>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i116.CompleteTaskVacationUseCase>(
      () => _i116.CompleteTaskVacationUseCaseImpl(
          gh<_i114.TasksVacationRemoteDataSource>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i117.CompleteTasksSbsLateUseCase>(
      () => _i117.CompleteTaskSbsLateUseCaseImpl(
          gh<_i111.TasksSbsRemoteDataSource>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i118.TasksEasRemoteDataSource>(
      () => _i118.TasksEasRemoteDataSourceImpl(
          gh<_i112.TasksSummaryApiService>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i119.TasksSbsCachedDataSource>(
      () => _i119.TasksSbsCachedDataSourceImpl(
          gh<_i111.TasksSbsRemoteDataSource>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i120.TasksSbsRepository>(
      () => _i120.TasksSbsRepositoryImpl(
          dataSource: gh<_i119.TasksSbsCachedDataSource>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i121.TasksSummaryCachedDataSource>(
      () => _i121.TasksSummaryCachedDataSourceImpl(
          gh<_i113.TasksSummaryRemoteDataSource>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i122.TasksVacationCachedDataSource>(
      () => _i122.TasksEasCachedDataSourceImpl(
          gh<_i114.TasksVacationRemoteDataSource>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i123.TasksVacationRepository>(
      () => _i124.TasksVacationRepositoryImpl(
          dataSource: gh<_i122.TasksVacationCachedDataSource>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i125.ClearCacheTasksSbsLateUseCase>(
      () => _i125.ClearCacheTasksSbsLateUseCaseImpl(
          gh<_i119.TasksSbsCachedDataSource>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i126.ClearCacheTasksSbsWeeklyUseCase>(
      () => _i126.ClearCacheTasksSbsWeeklyUseCaseImpl(
          gh<_i119.TasksSbsCachedDataSource>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i127.ClearCacheTasksVacationUseCase>(
      () => _i127.ClearCacheTasksVacationUseCaseImpl(
          gh<_i122.TasksVacationCachedDataSource>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i128.CompleteCachedTaskSbsWeeklyUseCase>(
      () => _i128.CompleteCachedTaskSbsWeeklyUseCaseImpl(
          gh<_i120.TasksSbsRepository>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i129.CompleteCachedTaskVacationUseCase>(
      () => _i129.CompleteCachedTaskVacationUseCaseImpl(
          gh<_i123.TasksVacationRepository>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i130.CompleteCachedTasksSbsLateUseCase>(
      () => _i130.CompleteCachedTaskSbsLateUseCaseImpl(
          gh<_i120.TasksSbsRepository>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i131.CompleteTaskEasUseCase>(
      () => _i131.CompleteTaskEasUseCaseImpl(
          gh<_i118.TasksEasRemoteDataSource>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i132.DownloadTaskEasAttachmentUseCase>(
      () => _i132.DownloadTaskEasAttachmentUseCaseImpl(
        gh<_i33.TasksEasAttachmentsRepository>(),
        gh<_i118.TasksEasRemoteDataSource>(),
      ),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i133.GetTasksSbsLateUseCase>(
      () => _i133.GetTasksSbsLateUseCaseImpl(
          gh<_i119.TasksSbsCachedDataSource>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i134.GetTasksSbsWeeklyUseCase>(
      () => _i134.GetTasksSbsWeeklyUseCaseImpl(
          gh<_i119.TasksSbsCachedDataSource>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i135.GetTasksSummaryUseCase>(
      () => _i135.GetTasksSummaryUseCaseImpl(
          gh<_i121.TasksSummaryCachedDataSource>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i136.GetTasksVacationUseCase>(
      () => _i136.GetTasksVacationUseCaseImpl(
          gh<_i122.TasksVacationCachedDataSource>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.factory<_i137.TaskEasAttachmentCubit>(() => _i137.TaskEasAttachmentCubit(
          gh<_i15.InitTaskEasAttachmentsDirectoryUseCase>(),
          gh<_i57.GetTaskEasAttachmentUseCase>(),
          gh<_i132.DownloadTaskEasAttachmentUseCase>(),
          gh<_i21.OpenTaskEasAttachmentUseCase>(),
          gh<_i17.LogService>(),
        ));
    gh.lazySingleton<_i138.TasksEasCachedDataSource>(
      () => _i138.TasksEasCachedDataSourceImpl(
        gh<_i118.TasksEasRemoteDataSource>(),
        gh<_i100.RemoveNotActualTaskEasAttachmentsUseCase>(),
      ),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i139.TasksEasRepository>(
      () => _i139.TasksEasRepositoryImpl(
          dataSource: gh<_i138.TasksEasCachedDataSource>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.factory<_i140.TasksSbsLateCubit>(() => _i140.TasksSbsLateCubit(
          gh<_i133.GetTasksSbsLateUseCase>(),
          gh<_i130.CompleteCachedTasksSbsLateUseCase>(),
          gh<_i117.CompleteTasksSbsLateUseCase>(),
          gh<_i125.ClearCacheTasksSbsLateUseCase>(),
          gh<_i17.LogService>(),
        ));
    gh.factory<_i141.TasksSbsLateSummaryCubit>(
        () => _i141.TasksSbsLateSummaryCubit(
              gh<_i133.GetTasksSbsLateUseCase>(),
              gh<_i125.ClearCacheTasksSbsLateUseCase>(),
              gh<_i120.TasksSbsRepository>(),
              gh<_i17.LogService>(),
            ));
    gh.factory<_i142.TasksSbsWeeklyCubit>(() => _i142.TasksSbsWeeklyCubit(
          gh<_i134.GetTasksSbsWeeklyUseCase>(),
          gh<_i126.ClearCacheTasksSbsWeeklyUseCase>(),
          gh<_i128.CompleteCachedTaskSbsWeeklyUseCase>(),
          gh<_i115.CompleteTaskSbsWeeklyUseCase>(),
          gh<_i17.LogService>(),
        ));
    gh.factory<_i143.TasksSbsWeeklySummaryCubit>(
        () => _i143.TasksSbsWeeklySummaryCubit(
              gh<_i134.GetTasksSbsWeeklyUseCase>(),
              gh<_i126.ClearCacheTasksSbsWeeklyUseCase>(),
              gh<_i120.TasksSbsRepository>(),
              gh<_i17.LogService>(),
            ));
    gh.factory<_i144.TasksVacationCubit>(() => _i144.TasksVacationCubit(
          gh<_i136.GetTasksVacationUseCase>(),
          gh<_i129.CompleteCachedTaskVacationUseCase>(),
          gh<_i116.CompleteTaskVacationUseCase>(),
          gh<_i127.ClearCacheTasksVacationUseCase>(),
          gh<_i17.LogService>(),
        ));
    gh.factory<_i145.TasksVacationSummaryCubit>(
        () => _i145.TasksVacationSummaryCubit(
              gh<_i136.GetTasksVacationUseCase>(),
              gh<_i127.ClearCacheTasksVacationUseCase>(),
              gh<_i123.TasksVacationRepository>(),
              gh<_i17.LogService>(),
            ));
    gh.factory<_i146.UserLogOutUseCase>(
      () => _i146.UserLogOutUseCaseImpl(
        gh<_i84.ChatsRepository>(),
        gh<_i94.NewsCachedDataSource>(),
        gh<_i138.TasksEasCachedDataSource>(),
        gh<_i119.TasksSbsCachedDataSource>(),
        gh<_i122.TasksVacationCachedDataSource>(),
        gh<_i35.UserService>(),
        gh<_i80.AuthProvider>(),
        gh<_i23.ScopeRepository>(),
      ),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i147.ClearCacheTasksEasUseCase>(
      () => _i147.ClearCacheTasksEasUseCaseImpl(
          gh<_i138.TasksEasCachedDataSource>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i148.CompleteCachedTaskEasUseCase>(
      () => _i148.CompleteCachedTaskEasUseCaseImpl(
          gh<_i139.TasksEasRepository>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i149.GetTasksEasUseCase>(
      () => _i149.GetTasksEasUseCaseImpl(gh<_i138.TasksEasCachedDataSource>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.factory<_i150.SettingsCubit>(() => _i150.SettingsCubit(
          gh<_i51.GetBillingNotificationSettingsUseCase>(),
          gh<_i53.GetDarkModeSettingsUseCase>(),
          gh<_i56.GetSystemModeSettingsUseCase>(),
          gh<_i55.GetRegionSettingsUseCase>(),
          gh<_i146.UserLogOutUseCase>(),
          gh<_i76.ThemeCubit>(),
          gh<_i98.RegionCubit>(),
        ));
    gh.factory<_i151.TasksEasCubit>(() => _i151.TasksEasCubit(
          gh<_i149.GetTasksEasUseCase>(),
          gh<_i148.CompleteCachedTaskEasUseCase>(),
          gh<_i131.CompleteTaskEasUseCase>(),
          gh<_i147.ClearCacheTasksEasUseCase>(),
          gh<_i17.LogService>(),
        ));
    gh.factory<_i152.TasksEasSummaryCubit>(() => _i152.TasksEasSummaryCubit(
          gh<_i149.GetTasksEasUseCase>(),
          gh<_i147.ClearCacheTasksEasUseCase>(),
          gh<_i139.TasksEasRepository>(),
          gh<_i17.LogService>(),
        ));
    gh.factory<_i153.GetBackgroundDataUseCase>(
        () => _i153.GetBackgroundDataUseCase(
              gh<_i134.GetTasksSbsWeeklyUseCase>(),
              gh<_i133.GetTasksSbsLateUseCase>(),
              gh<_i149.GetTasksEasUseCase>(),
              gh<_i136.GetTasksVacationUseCase>(),
            ));
    gh.factory<_i154.AuthCubit>(() => _i154.AuthCubit(
          gh<_i22.PushNotificationsProvider>(),
          gh<_i93.HasCachedAccountUseCase>(),
          gh<_i109.OAuthTryLoginUseCase>(),
          gh<_i17.LogService>(),
          gh<_i55.GetRegionSettingsUseCase>(),
          gh<_i153.GetBackgroundDataUseCase>(),
        ));
    return this;
  }

// initializes the registration of mockScope-scope dependencies inside of GetIt
  _i1.GetIt initMockScopeScope({_i1.ScopeDisposeFunc? dispose}) {
    return _i2.GetItHelper(this).initScope(
      'mockScope',
      dispose: dispose,
      init: (_i2.GetItHelper gh) {
        gh.lazySingleton<_i84.ChatsRepository>(
          () => _i155.ChatsMockRepository(
            gh<_i36.UuidGenerator>(),
            gh<_i35.UserService>(),
          ),
          registerFor: {
            _dev,
            _prod,
          },
        );
        gh.lazySingleton<_i8.NewsRepository>(
          () => _i156.NewsMockRepository(constants: gh<_i9.Constants>()),
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
          () => _i157.NewsCachedRepository(
            dataSource: gh<_i94.NewsCachedDataSource>(),
            getNewsApiBaseUrlUseCase: gh<_i54.GetNewsApiBaseUrlUseCase>(),
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

class _$AppModule extends _i158.AppModule {}
