// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:shared_preferences/shared_preferences.dart' as _i30;
import 'package:sqflite/sqflite.dart' as _i10;
import 'package:terralinkapp/core/common/constants.dart' as _i9;
import 'package:terralinkapp/core/http/interceptors/auth_interceptor.dart'
    as _i40;
import 'package:terralinkapp/core/http/interceptors/locale_interceptor.dart'
    as _i16;
import 'package:terralinkapp/core/http/overrides/api_http_overrides.dart'
    as _i75;
import 'package:terralinkapp/core/http/providers/dio_provider.dart' as _i11;
import 'package:terralinkapp/core/navigation/app_navigation_service.dart'
    as _i39;
import 'package:terralinkapp/core/navigation/navigator_key_provider.dart'
    as _i18;
import 'package:terralinkapp/core/notifications/providers/push_notifications_provider.dart'
    as _i21;
import 'package:terralinkapp/core/notifications/repositories/app_remote_messages_repository.dart'
    as _i6;
import 'package:terralinkapp/core/notifications/services/local_notifications_service.dart'
    as _i92;
import 'package:terralinkapp/core/notifications/services/timezone_service.dart'
    as _i33;
import 'package:terralinkapp/core/repositories/di_scope_repository.dart'
    as _i23;
import 'package:terralinkapp/core/repositories/scope_repository.dart' as _i22;
import 'package:terralinkapp/core/services/admin_panel_api_service.dart'
    as _i74;
import 'package:terralinkapp/core/services/app_parsing_tags_service.dart'
    as _i5;
import 'package:terralinkapp/core/services/converters/businesscard_to_vcard_converter.dart'
    as _i43;
import 'package:terralinkapp/core/services/log_service.dart' as _i60;
import 'package:terralinkapp/core/services/user_service/user_service.dart'
    as _i34;
import 'package:terralinkapp/core/services/websocket_service.dart' as _i72;
import 'package:terralinkapp/core/theme/domain/cubits/theme_cubit.dart' as _i71;
import 'package:terralinkapp/di/modules/app_module.dart' as _i171;
import 'package:terralinkapp/features/api_settings/data/data_sources/api_settings_presets_data_source.dart'
    as _i3;
import 'package:terralinkapp/features/api_settings/data/providers/api_settings_provider.dart'
    as _i36;
import 'package:terralinkapp/features/api_settings/data/repositories/api_settings_presets_repository.dart'
    as _i4;
import 'package:terralinkapp/features/api_settings/domain/cubits/api_settings_cubit.dart'
    as _i107;
import 'package:terralinkapp/features/auth/data/providers/auth_provider.dart'
    as _i76;
import 'package:terralinkapp/features/auth/domain/auth_cubit.dart' as _i167;
import 'package:terralinkapp/features/auth/domain/use_cases/get_background_data_use_case.dart'
    as _i166;
import 'package:terralinkapp/features/auth/domain/use_cases/has_cached_account_use_case.dart'
    as _i88;
import 'package:terralinkapp/features/auth/domain/use_cases/oauth_try_login_use_case.dart'
    as _i125;
import 'package:terralinkapp/features/auth/domain/use_cases/refresh_auth_settings_use_case.dart'
    as _i96;
import 'package:terralinkapp/features/auth/domain/use_cases/user_log_in_use_case.dart'
    as _i123;
import 'package:terralinkapp/features/auth/domain/use_cases/user_log_out_use_case.dart'
    as _i159;
import 'package:terralinkapp/features/business_cards/data/data_sources/business_card_db_data_source.dart'
    as _i41;
import 'package:terralinkapp/features/business_cards/data/repositories/business_card_repository.dart'
    as _i42;
import 'package:terralinkapp/features/business_cards/domain/cubits/business_card_show_cubit.dart'
    as _i77;
import 'package:terralinkapp/features/business_cards/domain/cubits/business_cards_list_cubit.dart'
    as _i78;
import 'package:terralinkapp/features/business_cards/domain/use_cases/get_all_business_cards_use_case.dart'
    as _i48;
import 'package:terralinkapp/features/business_cards/domain/use_cases/get_business_card_by_id_use_case.dart'
    as _i51;
import 'package:terralinkapp/features/business_cards/domain/use_cases/get_vcard_from_business_card_use_case.dart'
    as _i58;
import 'package:terralinkapp/features/business_cards/domain/use_cases/remove_business_card_by_id_use_case.dart'
    as _i62;
import 'package:terralinkapp/features/business_cards/domain/use_cases/save_business_card_use_case.dart'
    as _i64;
import 'package:terralinkapp/features/business_cards/domain/use_cases/save_vcard_file_from_business_card_use_case.dart'
    as _i65;
import 'package:terralinkapp/features/business_cards/domain/use_cases/share_vcard_from_bussiness_card_use_case.dart'
    as _i70;
import 'package:terralinkapp/features/chat/data/data_sources/chats_db_data_source.dart'
    as _i44;
import 'package:terralinkapp/features/chat/data/data_sources/messages_db_data_source.dart'
    as _i17;
import 'package:terralinkapp/features/chat/data/providers/uuid_generator.dart'
    as _i35;
import 'package:terralinkapp/features/chat/data/repositories/chats_mock_repository.dart'
    as _i168;
import 'package:terralinkapp/features/chat/data/repositories/chats_remote_repository.dart'
    as _i80;
import 'package:terralinkapp/features/chat/data/repositories/chats_repository.dart'
    as _i79;
import 'package:terralinkapp/features/chat/domain/cubits/chat_cubit.dart'
    as _i109;
import 'package:terralinkapp/features/chat/domain/use_cases/chat/clear_chat_history_use_case.dart'
    as _i81;
import 'package:terralinkapp/features/chat/domain/use_cases/chat/get_all_messages_by_chat_id_use_case.dart'
    as _i83;
import 'package:terralinkapp/features/chat/domain/use_cases/chat/get_chat_info_by_id_use_case.dart'
    as _i86;
import 'package:terralinkapp/features/chat/domain/use_cases/chat/remove_message_by_id_use_case.dart'
    as _i98;
import 'package:terralinkapp/features/chat/domain/use_cases/chat/reset_new_messages_use_case.dart'
    as _i100;
import 'package:terralinkapp/features/chat/domain/use_cases/chat/send_chat_message_use_case.dart'
    as _i101;
import 'package:terralinkapp/features/chat/domain/use_cases/chat/send_form_chat_message_use_case.dart'
    as _i102;
import 'package:terralinkapp/features/chat/domain/use_cases/chat/send_menu_item_chat_message_use_case.dart'
    as _i104;
import 'package:terralinkapp/features/chat/domain/use_cases/chats/get_chat_feed_observable_use_case.dart'
    as _i84;
import 'package:terralinkapp/features/chat/domain/use_cases/chats/get_chat_feed_use_case.dart'
    as _i85;
import 'package:terralinkapp/features/feedback/domain/use_cases/send_feedback_use_case.dart'
    as _i24;
import 'package:terralinkapp/features/greeting_cards/domain/use_cases/init_greetings_card_directory_use_case.dart'
    as _i14;
import 'package:terralinkapp/features/greeting_cards/domain/use_cases/send_greeting_card_by_email_use_case.dart'
    as _i25;
import 'package:terralinkapp/features/greeting_cards/domain/use_cases/share_greeting_card_use_case.dart'
    as _i29;
import 'package:terralinkapp/features/likes/common/data/data_sources/likes_db_data_source.dart'
    as _i89;
import 'package:terralinkapp/features/likes/common/data/data_sources/likes_remote_data_source.dart'
    as _i90;
import 'package:terralinkapp/features/likes/common/data/repositories/likes_repository.dart'
    as _i91;
import 'package:terralinkapp/features/likes/common/domain/use_cases/clear_cache_likes_use_case.dart'
    as _i110;
import 'package:terralinkapp/features/likes/common/domain/use_cases/get_likes_stat_use_case.dart'
    as _i111;
import 'package:terralinkapp/features/likes/common/domain/use_cases/get_likes_use_case.dart'
    as _i112;
import 'package:terralinkapp/features/likes/common/domain/use_cases/send_like_use_case.dart'
    as _i103;
import 'package:terralinkapp/features/likes/my/presentation/cubits/likes_my_cubit.dart'
    as _i114;
import 'package:terralinkapp/features/likes/new/presentation/cubits/likes_new_cubit.dart'
    as _i115;
import 'package:terralinkapp/features/news/data/data_sources/news_cached_data_source.dart'
    as _i116;
import 'package:terralinkapp/features/news/data/data_sources/news_remote_data_source.dart'
    as _i94;
import 'package:terralinkapp/features/news/data/repositories/news_cached_repository.dart'
    as _i170;
import 'package:terralinkapp/features/news/data/repositories/news_mock_repository.dart'
    as _i169;
import 'package:terralinkapp/features/news/data/repositories/news_repository.dart'
    as _i8;
import 'package:terralinkapp/features/news/domain/cubits/news_cubit.dart'
    as _i93;
import 'package:terralinkapp/features/news/domain/use_cases/clear_cache_news_use_case.dart'
    as _i7;
import 'package:terralinkapp/features/news/domain/use_cases/get_all_news_use_case.dart'
    as _i87;
import 'package:terralinkapp/features/profile/data/data_sources/file_storage_data_source.dart'
    as _i82;
import 'package:terralinkapp/features/profile/data/repositories/avatar_storage_repository.dart'
    as _i108;
import 'package:terralinkapp/features/profile/domain/use_cases/delete_profile_avatar_use_case.dart'
    as _i121;
import 'package:terralinkapp/features/profile/domain/use_cases/get_profile_avatar_use_case.dart'
    as _i113;
import 'package:terralinkapp/features/profile/domain/use_cases/set_profile_avatar_use_case.dart'
    as _i117;
import 'package:terralinkapp/features/profile_documents/data/data_sources/app_documents_db_data_source.dart'
    as _i37;
import 'package:terralinkapp/features/profile_documents/data/repositories/app_documents_repository.dart'
    as _i38;
import 'package:terralinkapp/features/profile_documents/domain/cubits/profile_documents_cubit.dart'
    as _i95;
import 'package:terralinkapp/features/profile_documents/domain/use_cases/add_app_documents_use_case.dart'
    as _i73;
import 'package:terralinkapp/features/profile_documents/domain/use_cases/edit_app_documents_use_case.dart'
    as _i45;
import 'package:terralinkapp/features/profile_documents/domain/use_cases/get_app_documents_use_case.dart'
    as _i49;
import 'package:terralinkapp/features/profile_documents/domain/use_cases/init_case_app_documents_use_case.dart'
    as _i13;
import 'package:terralinkapp/features/profile_documents/domain/use_cases/open_app_document_use_case.dart'
    as _i19;
import 'package:terralinkapp/features/profile_documents/domain/use_cases/remove_case_app_documents_use_case.dart'
    as _i61;
import 'package:terralinkapp/features/profile_documents/domain/use_cases/share_app_documents_use_case.dart'
    as _i28;
import 'package:terralinkapp/features/region/domain/cubits/region_cubit.dart'
    as _i97;
import 'package:terralinkapp/features/settings/data/data_sources/settings_data_source.dart'
    as _i26;
import 'package:terralinkapp/features/settings/data/repositories/settings_repository.dart'
    as _i27;
import 'package:terralinkapp/features/settings/domain/cubits/settings_cubit.dart'
    as _i163;
import 'package:terralinkapp/features/settings/domain/use_cases/get_admin_panel_api_base_url_use_case.dart'
    as _i46;
import 'package:terralinkapp/features/settings/domain/use_cases/get_all_api_settings_use_case.dart'
    as _i47;
import 'package:terralinkapp/features/settings/domain/use_cases/get_api_settings_presets_use_case.dart'
    as _i12;
import 'package:terralinkapp/features/settings/domain/use_cases/get_billing_notification_settings_use_case.dart'
    as _i50;
import 'package:terralinkapp/features/settings/domain/use_cases/get_dark_mode_settings_use_case.dart'
    as _i52;
import 'package:terralinkapp/features/settings/domain/use_cases/get_region_settings_use_case.dart'
    as _i53;
import 'package:terralinkapp/features/settings/domain/use_cases/get_system_mode_settings_use_case.dart'
    as _i54;
import 'package:terralinkapp/features/settings/domain/use_cases/get_tasks_sbs_api_base_url_use_case.dart'
    as _i56;
import 'package:terralinkapp/features/settings/domain/use_cases/get_tasks_summary_api_base_url_use_case.dart'
    as _i57;
import 'package:terralinkapp/features/settings/domain/use_cases/get_ws_url_use_case.dart'
    as _i59;
import 'package:terralinkapp/features/settings/domain/use_cases/set_all_api_settings_use_case.dart'
    as _i66;
import 'package:terralinkapp/features/settings/domain/use_cases/set_billing_notification_settings_use_case.dart'
    as _i105;
import 'package:terralinkapp/features/settings/domain/use_cases/set_dark_mode_settings_use_case.dart'
    as _i67;
import 'package:terralinkapp/features/settings/domain/use_cases/set_region_settings_use_case.dart'
    as _i68;
import 'package:terralinkapp/features/settings/domain/use_cases/set_system_mode_settings_use_case.dart'
    as _i69;
import 'package:terralinkapp/features/tasks/common/data/services/tasks_summary_api_service.dart'
    as _i128;
import 'package:terralinkapp/features/tasks/eas/data/data_source/tasks_eas_attachments_db_data_source.dart'
    as _i31;
import 'package:terralinkapp/features/tasks/eas/data/data_source/tasks_eas_cached_data_source.dart'
    as _i151;
import 'package:terralinkapp/features/tasks/eas/data/data_source/tasks_eas_remote_data_source.dart'
    as _i133;
import 'package:terralinkapp/features/tasks/eas/data/repositories/tasks_eas_attachments_repository.dart'
    as _i32;
import 'package:terralinkapp/features/tasks/eas/data/repositories/tasks_eas_repository.dart'
    as _i152;
import 'package:terralinkapp/features/tasks/eas/domain/cubits/task_eas_attachment_cubit.dart'
    as _i150;
import 'package:terralinkapp/features/tasks/eas/domain/cubits/tasks_eas_cubit.dart'
    as _i164;
import 'package:terralinkapp/features/tasks/eas/domain/use_cases/attachments/download_task_eas_attachment_use_case.dart'
    as _i146;
import 'package:terralinkapp/features/tasks/eas/domain/use_cases/attachments/get_task_eas_attachment_use_case.dart'
    as _i55;
import 'package:terralinkapp/features/tasks/eas/domain/use_cases/attachments/init_task_eas_attachments_directory_use_case.dart'
    as _i15;
import 'package:terralinkapp/features/tasks/eas/domain/use_cases/attachments/open_task_eas_attachment_use_case.dart'
    as _i20;
import 'package:terralinkapp/features/tasks/eas/domain/use_cases/attachments/remove_not_actual_task_eas_attachments_use_case.dart'
    as _i99;
import 'package:terralinkapp/features/tasks/eas/domain/use_cases/attachments/remove_task_eas_attachment_use_case.dart'
    as _i63;
import 'package:terralinkapp/features/tasks/eas/domain/use_cases/tasks/clear_cache_tasks_eas_use_case.dart'
    as _i160;
import 'package:terralinkapp/features/tasks/eas/domain/use_cases/tasks/complete_cached_task_eas_use_case.dart'
    as _i161;
import 'package:terralinkapp/features/tasks/eas/domain/use_cases/tasks/complete_task_eas_use_case.dart'
    as _i145;
import 'package:terralinkapp/features/tasks/eas/domain/use_cases/tasks/get_tasks_eas_use_case.dart'
    as _i162;
import 'package:terralinkapp/features/tasks/sbs/data/data_sources/tasks_sbs_cached_data_source.dart'
    as _i134;
import 'package:terralinkapp/features/tasks/sbs/data/data_sources/tasks_sbs_remote_data_source.dart'
    as _i127;
import 'package:terralinkapp/features/tasks/sbs/data/repositories/tasks_sbs_repository.dart'
    as _i135;
import 'package:terralinkapp/features/tasks/sbs/data/services/tasks_sbs_api_service.dart'
    as _i126;
import 'package:terralinkapp/features/tasks/sbs_late/domain/cubits/tasks_sbs_late_cubit.dart'
    as _i153;
import 'package:terralinkapp/features/tasks/sbs_late/domain/use_cases/clear_cache_tasks_sbs_late_use_case.dart'
    as _i139;
import 'package:terralinkapp/features/tasks/sbs_late/domain/use_cases/complete_cached_tasks_late_sbs_use_case.dart'
    as _i144;
import 'package:terralinkapp/features/tasks/sbs_late/domain/use_cases/complete_tasks_sbs_late_use_case.dart'
    as _i132;
import 'package:terralinkapp/features/tasks/sbs_late/domain/use_cases/get_tasks_sbs_late_use_case.dart'
    as _i147;
import 'package:terralinkapp/features/tasks/sbs_weekly/domain/cubits/tasks_sbs_weekly_cubit.dart'
    as _i155;
import 'package:terralinkapp/features/tasks/sbs_weekly/domain/use_cases/clear_cache_tasks_sbs_weekly_use_case.dart'
    as _i140;
import 'package:terralinkapp/features/tasks/sbs_weekly/domain/use_cases/complete_cached_task_sbs_weekly_use_case.dart'
    as _i142;
import 'package:terralinkapp/features/tasks/sbs_weekly/domain/use_cases/complete_task_sbs_weekly_use_case.dart'
    as _i130;
import 'package:terralinkapp/features/tasks/sbs_weekly/domain/use_cases/get_tasks_sbs_weekly_use_case.dart'
    as _i148;
import 'package:terralinkapp/features/tasks/summary/domain/cubits/tasks_eas_summary_cubit.dart'
    as _i165;
import 'package:terralinkapp/features/tasks/summary/domain/cubits/tasks_sbs_late_summary_cubit.dart'
    as _i154;
import 'package:terralinkapp/features/tasks/summary/domain/cubits/tasks_sbs_weekly_summary_cubit.dart'
    as _i156;
import 'package:terralinkapp/features/tasks/summary/domain/cubits/tasks_vacation_summary_cubit.dart'
    as _i158;
import 'package:terralinkapp/features/tasks/vacations/data/data_sources/tasks_vacation_cached_data_source.dart'
    as _i136;
import 'package:terralinkapp/features/tasks/vacations/data/data_sources/tasks_vacation_remote_data_source.dart'
    as _i129;
import 'package:terralinkapp/features/tasks/vacations/data/repositories/tasks_vacation_cached_repository.dart'
    as _i138;
import 'package:terralinkapp/features/tasks/vacations/data/repositories/tasks_vacation_repository.dart'
    as _i137;
import 'package:terralinkapp/features/tasks/vacations/domain/cubits/tasks_vacation_cubit.dart'
    as _i157;
import 'package:terralinkapp/features/tasks/vacations/domain/use_cases/clear_cache_tasks_vacation_use_case.dart'
    as _i141;
import 'package:terralinkapp/features/tasks/vacations/domain/use_cases/complete_cached_task_vacation_use_case.dart'
    as _i143;
import 'package:terralinkapp/features/tasks/vacations/domain/use_cases/complete_task_vacation_use_case.dart'
    as _i131;
import 'package:terralinkapp/features/tasks/vacations/domain/use_cases/get_tasks_vacation_use_case.dart'
    as _i149;
import 'package:terralinkapp/features/users/data/data_sources/users_cached_data_source.dart'
    as _i118;
import 'package:terralinkapp/features/users/data/data_sources/users_remote_data_source.dart'
    as _i106;
import 'package:terralinkapp/features/users/data/repositories/users_repository.dart'
    as _i119;
import 'package:terralinkapp/features/users/domain/use_cases/clear_cache_users_use_case.dart'
    as _i120;
import 'package:terralinkapp/features/users/domain/use_cases/get_users_use_case.dart'
    as _i122;
import 'package:terralinkapp/features/users/presentation/cubits/users_cubit.dart'
    as _i124;

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
    gh.lazySingleton<_i14.InitGreetingCardsDirectoryUseCase>(
      () => _i14.InitGreetingCardsDirectoryUseCaseImpl(),
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
    gh.lazySingleton<_i25.SendGreetingCardByEmailUseCase>(
      () => _i25.SendGreetingCardByEmailUseCaseImpl(),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i26.SettingsDataSource>(
      () => _i26.SettingsDataSourceImpl(),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i27.SettingsRepository>(
      () => _i27.SettingsRepositoryImpl(
          dataSource: gh<_i26.SettingsDataSource>()),
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
    gh.lazySingleton<_i29.ShareGreetingCardUseCase>(
      () => _i29.ShareGreetingCardUseCaseImpl(),
      registerFor: {
        _dev,
        _prod,
      },
    );
    await gh.factoryAsync<_i30.SharedPreferences>(
      () => appModule.providePrefs,
      preResolve: true,
    );
    gh.lazySingleton<_i31.TasksEasAttachmentsDbDataSource>(
      () => _i31.TasksEasAttachmentsDbDataSourceImpl(gh<_i10.Database>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i32.TasksEasAttachmentsRepository>(
      () => _i32.TasksEasAttachmentsRepositoryImpl(
          dbDataSource: gh<_i31.TasksEasAttachmentsDbDataSource>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i33.TimeZoneService>(
      () => _i33.TimeZoneServiceImpl(),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i34.UserService>(
      () => _i34.UserServiceImpl(),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i35.UuidGenerator>(
      () => _i35.UuidGeneratorImpl(),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i36.ApiSettingsProvider>(() => _i36.ApiSettingsProvider(
          gh<_i26.SettingsDataSource>(),
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
      () => _i38.AppDocumentsDbRepositoryImpl(
          dataSource: gh<_i37.AppDocumentsDbDataSource>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i39.AppNavigationService>(
      () => _i39.AppNavigationService(gh<_i18.NavigatorKeyProvider>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i40.AuthInterceptor>(
        () => _i40.AuthInterceptor(gh<_i34.UserService>()));
    gh.lazySingleton<_i41.BusinessCardDbDataSource>(
      () => _i41.BusinessCardDbDataSourceImpl(gh<_i10.Database>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i42.BusinessCardRepository>(
      () => _i42.BusinessCardRepositoryImpl(
          dataSource: gh<_i41.BusinessCardDbDataSource>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.factory<_i43.BusinessCardToVCardConverter>(
        () => _i43.BusinessCardToVCardConverter(gh<_i9.Constants>()));
    gh.lazySingleton<_i44.ChatsDbDataSource>(
      () => _i44.ChatsDbDataSourceImpl(gh<_i10.Database>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i45.EditAppDocumentUseCase>(
      () => _i45.EditAppDocumentUseCaseImpl(gh<_i38.AppDocumentsRepository>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.factory<_i46.GetAdminPanelApiBaseUrlUseCase>(() =>
        _i46.GetAdminPanelApiBaseUrlUseCase(gh<_i36.ApiSettingsProvider>()));
    gh.factory<_i47.GetAllApiSettingsUseCase>(
        () => _i47.GetAllApiSettingsUseCase(gh<_i36.ApiSettingsProvider>()));
    gh.lazySingleton<_i48.GetAllBusinessCardsUseCase>(
      () => _i48.GetAllBusinessCardsUseCaseImpl(
          gh<_i42.BusinessCardRepository>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i49.GetAppDocumentsUseCase>(
      () => _i49.GetAppDocumentsUseCaseImpl(gh<_i38.AppDocumentsRepository>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i50.GetBillingNotificationSettingsUseCase>(
      () => _i50.GetBillingNotificationSettingsUseCaseImpl(
          gh<_i26.SettingsDataSource>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i51.GetBusinessCardByIdUseCase>(
      () => _i51.GetBusinessCardByIdUseCaseImpl(
          gh<_i42.BusinessCardRepository>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i52.GetDarkModeSettingsUseCase>(
      () => _i52.GetDarkModeSettingsUseCaseImpl(gh<_i26.SettingsDataSource>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i53.GetRegionSettingsUseCase>(
      () => _i53.GetRegionSettingsUseCaseImpl(gh<_i26.SettingsDataSource>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i54.GetSystemModeSettingsUseCase>(
      () =>
          _i54.GetSystemModeSettingsUseCaseImpl(gh<_i26.SettingsDataSource>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i55.GetTaskEasAttachmentUseCase>(
      () => _i55.GetTaskEasAttachmentUseCaseImpl(
          gh<_i32.TasksEasAttachmentsRepository>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.factory<_i56.GetTasksSbsApiBaseUrlUseCase>(() =>
        _i56.GetTasksSbsApiBaseUrlUseCase(gh<_i36.ApiSettingsProvider>()));
    gh.factory<_i57.GetTasksSummaryApiBaseUrlUseCase>(() =>
        _i57.GetTasksSummaryApiBaseUrlUseCase(gh<_i36.ApiSettingsProvider>()));
    gh.factory<_i58.GetVCardFromBusinessCardUseCase>(() =>
        _i58.GetVCardFromBusinessCardUseCase(
            gh<_i43.BusinessCardToVCardConverter>()));
    gh.factory<_i59.GetWsUrlUseCase>(
        () => _i59.GetWsUrlUseCase(gh<_i36.ApiSettingsProvider>()));
    gh.lazySingleton<_i60.LogService>(
      () => _i60.LogService(gh<_i34.UserService>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i61.RemoveAppDocumentUseCase>(
      () =>
          _i61.RemoveAppDocumentUseCaseImpl(gh<_i38.AppDocumentsRepository>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i62.RemoveBusinessCardByIdUseCase>(
      () => _i62.RemoveBusinessCardByIdUseCaseImpl(
          gh<_i42.BusinessCardRepository>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i63.RemoveTaskEasAttachmentUseCase>(
      () => _i63.RemoveTaskEasAttachmentUseCaseImpl(
          gh<_i32.TasksEasAttachmentsRepository>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i64.SaveBusinessCardUseCase>(
      () => _i64.SaveBusinessCardUseCaseImpl(gh<_i42.BusinessCardRepository>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.factory<_i65.SaveVCardFileFromBusinessCardUseCase>(() =>
        _i65.SaveVCardFileFromBusinessCardUseCase(
            gh<_i58.GetVCardFromBusinessCardUseCase>()));
    gh.factory<_i66.SetAllApiSettingsUseCase>(
        () => _i66.SetAllApiSettingsUseCase(gh<_i36.ApiSettingsProvider>()));
    gh.lazySingleton<_i67.SetDarkModeSettingsUseCase>(
      () => _i67.SetDarkModeSettingsUseCaseImpl(gh<_i26.SettingsDataSource>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i68.SetRegionSettingsUseCase>(
      () => _i68.SetRegionSettingsUseCaseImpl(gh<_i26.SettingsDataSource>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i69.SetSystemModeSettingsUseCase>(
      () =>
          _i69.SetSystemModeSettingsUseCaseImpl(gh<_i26.SettingsDataSource>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.factory<_i70.ShareVCardFromBusinessCardUseCase>(() =>
        _i70.ShareVCardFromBusinessCardUseCase(
            gh<_i65.SaveVCardFileFromBusinessCardUseCase>()));
    gh.lazySingleton<_i71.ThemeCubit>(
      () => _i71.ThemeCubit(
        gh<_i52.GetDarkModeSettingsUseCase>(),
        gh<_i67.SetDarkModeSettingsUseCase>(),
        gh<_i54.GetSystemModeSettingsUseCase>(),
        gh<_i69.SetSystemModeSettingsUseCase>(),
      ),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i72.WebsocketService>(
      () => _i72.WebsocketServiceImpl(
        gh<_i34.UserService>(),
        gh<_i21.PushNotificationsProvider>(),
        gh<_i60.LogService>(),
        gh<_i59.GetWsUrlUseCase>(),
      ),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i73.AddAppDocumentsUseCase>(
      () =>
          _i73.AddAppDocumentsAddUseCaseImpl(gh<_i38.AppDocumentsRepository>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i74.AdminPanelApiService>(
      () => _i74.AdminPanelApiService(
        gh<_i11.DioProvider>(),
        gh<_i60.LogService>(),
        gh<_i46.GetAdminPanelApiBaseUrlUseCase>(),
      ),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i75.ApiHttpOverrides>(
      () => _i75.ApiHttpOverrides(gh<_i46.GetAdminPanelApiBaseUrlUseCase>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i76.AuthProvider>(
      () => _i76.AuthProvider(
        gh<_i9.Constants>(),
        gh<_i18.NavigatorKeyProvider>(),
        gh<_i47.GetAllApiSettingsUseCase>(),
      ),
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
          gh<_i51.GetBusinessCardByIdUseCase>(),
          gh<_i60.LogService>(),
          gh<_i70.ShareVCardFromBusinessCardUseCase>(),
          gh<_i58.GetVCardFromBusinessCardUseCase>(),
        ));
    gh.factory<_i78.BusinessCardsListCubit>(() => _i78.BusinessCardsListCubit(
          gh<_i48.GetAllBusinessCardsUseCase>(),
          gh<_i62.RemoveBusinessCardByIdUseCase>(),
          gh<_i70.ShareVCardFromBusinessCardUseCase>(),
          gh<_i60.LogService>(),
        ));
    gh.lazySingleton<_i79.ChatsRepository>(
      () => _i80.ChatsRemoteRepository(
        gh<_i72.WebsocketService>(),
        gh<_i44.ChatsDbDataSource>(),
        gh<_i35.UuidGenerator>(),
        gh<_i34.UserService>(),
        gh<_i17.MessagesDbDataSource>(),
        gh<_i60.LogService>(),
      ),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.factory<_i81.ClearChatHistoryUseCase>(
        () => _i81.ClearChatHistoryUseCase(gh<_i79.ChatsRepository>()));
    gh.lazySingleton<_i82.FileStorageDataSource>(
      () => _i82.FileStorageDataSourceImpl(logService: gh<_i60.LogService>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i83.GetAllMessagesByChatIdUseCase>(
      () => _i83.GetAllMessagesByChatIdUseCaseImpl(gh<_i79.ChatsRepository>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i84.GetChatFeedObservableUseCase>(
      () => _i84.GetChatFeedObservableUseCaseImpl(gh<_i79.ChatsRepository>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i85.GetChatFeedUseCase>(
      () => _i85.GetChatFeedUseCaseImpl(gh<_i79.ChatsRepository>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i86.GetChatInfoByIdUseCase>(
      () => _i86.GetChatInfoByIdUseCaseImpl(gh<_i79.ChatsRepository>()),
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
    gh.factory<_i88.HasCachedAccountUseCase>(
        () => _i88.HasCachedAccountUseCase(gh<_i76.AuthProvider>()));
    gh.lazySingleton<_i89.LikesDbDataSource>(
      () => _i89.LikesDbDataSourceImpl(
        gh<_i10.Database>(),
        gh<_i60.LogService>(),
      ),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i90.LikesRemoteDataSource>(
      () => _i90.LikesRemoteDataSourceImpl(
        gh<_i74.AdminPanelApiService>(),
        gh<_i34.UserService>(),
        gh<_i60.LogService>(),
      ),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i91.LikesRepository>(
      () => _i91.LikesRepositoryImpl(
        gh<_i46.GetAdminPanelApiBaseUrlUseCase>(),
        gh<_i89.LikesDbDataSource>(),
        gh<_i90.LikesRemoteDataSource>(),
      ),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i92.LocalNotificationsService>(
      () => _i92.LocalNotificationsServiceImpl(
        gh<_i18.NavigatorKeyProvider>(),
        gh<_i6.AppRemoteMessagesRepository>(),
        gh<_i60.LogService>(),
      ),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.factory<_i93.NewsCubit>(() => _i93.NewsCubit(
          gh<_i87.GetNewsUseCase>(),
          gh<_i7.ClearCacheNewsUseCase>(),
        ));
    gh.lazySingleton<_i94.NewsRemoteDataSource>(
      () => _i94.NewsRemoteDataSourceImpl(
        gh<_i74.AdminPanelApiService>(),
        gh<_i60.LogService>(),
      ),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.factory<_i95.ProfileDocumentsCubit>(() => _i95.ProfileDocumentsCubit(
          gh<_i13.InitAppDocumentsUseCase>(),
          gh<_i49.GetAppDocumentsUseCase>(),
          gh<_i73.AddAppDocumentsUseCase>(),
          gh<_i61.RemoveAppDocumentUseCase>(),
          gh<_i45.EditAppDocumentUseCase>(),
          gh<_i28.ShareAppDocumentsUseCase>(),
          gh<_i19.OpenAppDocumentUseCase>(),
        ));
    gh.factory<_i96.RefreshAuthSettingsUseCase>(
        () => _i96.RefreshAuthSettingsUseCase(gh<_i76.AuthProvider>()));
    gh.lazySingleton<_i97.RegionCubit>(
      () => _i97.RegionCubit(
        gh<_i53.GetRegionSettingsUseCase>(),
        gh<_i68.SetRegionSettingsUseCase>(),
      ),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i98.RemoveMessageByIdUseCase>(
      () => _i98.RemoveMessageByIdUseCaseImpl(gh<_i79.ChatsRepository>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i99.RemoveNotActualTaskEasAttachmentsUseCase>(
      () => _i99.RemoveNotActualTaskEasAttachmentsUseCaseImpl(
        gh<_i32.TasksEasAttachmentsRepository>(),
        gh<_i63.RemoveTaskEasAttachmentUseCase>(),
      ),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i100.ResetNewMessagesUseCase>(
      () => _i100.ResetNewMessagesUseCaseImpl(gh<_i79.ChatsRepository>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i101.SendChatMessageUseCase>(
      () => _i101.SendChatMessageUseCaseImpl(gh<_i79.ChatsRepository>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i102.SendFormChatMessageUseCase>(
      () => _i102.SendFormChatMessageUseCaseImpl(gh<_i79.ChatsRepository>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i103.SendLikeUseCase>(
      () => _i103.SendLikeUseCaseImpl(gh<_i91.LikesRepository>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i104.SendMenuItemChatMessageUseCase>(
      () =>
          _i104.SendMenuItemChatMessageUseCaseImpl(gh<_i79.ChatsRepository>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i105.SetBillingNotificationSettingsUseCase>(
      () => _i105.SetBillingNotificationSettingsUseCaseImpl(
        gh<_i26.SettingsDataSource>(),
        gh<_i92.LocalNotificationsService>(),
      ),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i106.UsersRemoteDataSource>(
      () => _i106.UsersRemoteDataSourceImpl(
        gh<_i74.AdminPanelApiService>(),
        gh<_i60.LogService>(),
      ),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.factory<_i107.ApiSettingsCubit>(() => _i107.ApiSettingsCubit(
          gh<_i66.SetAllApiSettingsUseCase>(),
          gh<_i47.GetAllApiSettingsUseCase>(),
          gh<_i96.RefreshAuthSettingsUseCase>(),
          gh<_i81.ClearChatHistoryUseCase>(),
          gh<_i12.GetApiSettingsPresetsUseCase>(),
        ));
    gh.lazySingleton<_i108.AvatarStorageRepository>(
      () => _i108.AvatarStorageRepositoryImpl(
          dataSource: gh<_i82.FileStorageDataSource>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.factory<_i109.ChatCubit>(() => _i109.ChatCubit(
          gh<_i84.GetChatFeedObservableUseCase>(),
          gh<_i85.GetChatFeedUseCase>(),
          gh<_i86.GetChatInfoByIdUseCase>(),
          gh<_i83.GetAllMessagesByChatIdUseCase>(),
          gh<_i79.ChatsRepository>(),
          gh<_i34.UserService>(),
          gh<_i101.SendChatMessageUseCase>(),
          gh<_i104.SendMenuItemChatMessageUseCase>(),
          gh<_i100.ResetNewMessagesUseCase>(),
          gh<_i98.RemoveMessageByIdUseCase>(),
          gh<_i102.SendFormChatMessageUseCase>(),
          gh<_i60.LogService>(),
        ));
    gh.factory<_i110.ClearCacheLikesUseCase>(
      () => _i110.ClearCacheLikesUseCaseImpl(gh<_i91.LikesRepository>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i111.GetLikesStatUseCase>(
      () => _i111.GetLikesStatUseCaseImpl(gh<_i91.LikesRepository>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.factory<_i112.GetLikesUseCase>(
      () => _i112.GetLikesUseCaseImpl(gh<_i91.LikesRepository>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i113.GetProfileAvatarUseCase>(
      () => _i113.GetProfileAvatarUseCaseImpl(
        settingsRepository: gh<_i27.SettingsRepository>(),
        avatarStorageRepository: gh<_i108.AvatarStorageRepository>(),
      ),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.factory<_i114.LikesMyCubit>(() => _i114.LikesMyCubit(
          gh<_i112.GetLikesUseCase>(),
          gh<_i110.ClearCacheLikesUseCase>(),
        ));
    gh.factory<_i115.LikesNewCubit>(
        () => _i115.LikesNewCubit(gh<_i103.SendLikeUseCase>()));
    gh.lazySingleton<_i116.NewsCachedDataSource>(
      () => _i116.NewsCachedDataSourceImpl(
          newsRepository: gh<_i94.NewsRemoteDataSource>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i117.SetProfileAvatarUseCase>(
      () => _i117.SetProfileAvatarUseCaseImpl(
        settingsRepository: gh<_i27.SettingsRepository>(),
        avatarStorageRepository: gh<_i108.AvatarStorageRepository>(),
      ),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i118.UsersCachedDataSource>(
      () => _i118.UsersCachedDataSourceImpl(
        gh<_i106.UsersRemoteDataSource>(),
        gh<_i46.GetAdminPanelApiBaseUrlUseCase>(),
      ),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.factory<_i119.UsersRepository>(
      () => _i119.UsersRepositoryImpl(
          dataSource: gh<_i118.UsersCachedDataSource>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.factory<_i120.ClearCacheUsersUseCase>(
      () => _i120.ClearCacheUsersUseCaseImpl(gh<_i119.UsersRepository>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i121.DeleteProfileAvatarUseCase>(
      () => _i121.DeleteProfileAvatarUseCaseImpl(
        settingsRepository: gh<_i27.SettingsRepository>(),
        avatarStorageRepository: gh<_i108.AvatarStorageRepository>(),
        getProfileAvatarUseCase: gh<_i113.GetProfileAvatarUseCase>(),
      ),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.factory<_i122.GetUsersUseCase>(
      () => _i122.GetUsersUseCaseImpl(gh<_i119.UsersRepository>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.factory<_i123.UserLogInUseCase>(
      () => _i123.UserLogInUseCaseImpl(
        userService: gh<_i34.UserService>(),
        chatsRepository: gh<_i79.ChatsRepository>(),
        settingsRepository: gh<_i27.SettingsRepository>(),
        businessCardRepository: gh<_i42.BusinessCardRepository>(),
        appDocumentsRepository: gh<_i38.AppDocumentsRepository>(),
        removeAllTaskEasAttachmentUseCase:
            gh<_i99.RemoveNotActualTaskEasAttachmentsUseCase>(),
        scopeRepository: gh<_i22.ScopeRepository>(),
        localNotificationsService: gh<_i92.LocalNotificationsService>(),
        deleteProfileAvatarUseCase: gh<_i121.DeleteProfileAvatarUseCase>(),
        clearCacheLikesUseCase: gh<_i110.ClearCacheLikesUseCase>(),
      ),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.factory<_i124.UsersCubit>(() => _i124.UsersCubit(
          gh<_i122.GetUsersUseCase>(),
          gh<_i120.ClearCacheUsersUseCase>(),
        ));
    gh.factory<_i125.OAuthTryLoginUseCase>(
      () => _i125.OAuthTryLoginUseCaseImpl(
        gh<_i76.AuthProvider>(),
        gh<_i123.UserLogInUseCase>(),
        gh<_i60.LogService>(),
      ),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i126.TasksSbsApiService>(
      () => _i126.TasksSbsApiService(
        gh<_i56.GetTasksSbsApiBaseUrlUseCase>(),
        gh<_i11.DioProvider>(),
        gh<_i60.LogService>(),
        gh<_i16.LocaleInterceptor>(),
        gh<_i40.AuthInterceptor>(),
        gh<_i125.OAuthTryLoginUseCase>(),
        gh<_i18.NavigatorKeyProvider>(),
      ),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i127.TasksSbsRemoteDataSource>(
      () => _i127.TasksSbsRemoteDataSourceImpl(
        gh<_i126.TasksSbsApiService>(),
        gh<_i60.LogService>(),
      ),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i128.TasksSummaryApiService>(
      () => _i128.TasksSummaryApiService(
        gh<_i57.GetTasksSummaryApiBaseUrlUseCase>(),
        gh<_i11.DioProvider>(),
        gh<_i60.LogService>(),
        gh<_i16.LocaleInterceptor>(),
        gh<_i40.AuthInterceptor>(),
        gh<_i125.OAuthTryLoginUseCase>(),
        gh<_i18.NavigatorKeyProvider>(),
      ),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i129.TasksVacationRemoteDataSource>(
      () => _i129.TasksVacationRemoteDataSourceImpl(
        gh<_i128.TasksSummaryApiService>(),
        gh<_i60.LogService>(),
      ),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i130.CompleteTaskSbsWeeklyUseCase>(
      () => _i130.CompleteTaskSbsWeeklyUseCaseImpl(
          gh<_i127.TasksSbsRemoteDataSource>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i131.CompleteTaskVacationUseCase>(
      () => _i131.CompleteTaskVacationUseCaseImpl(
          gh<_i129.TasksVacationRemoteDataSource>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i132.CompleteTasksSbsLateUseCase>(
      () => _i132.CompleteTaskSbsLateUseCaseImpl(
          gh<_i127.TasksSbsRemoteDataSource>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i133.TasksEasRemoteDataSource>(
      () => _i133.TasksEasRemoteDataSourceImpl(
        gh<_i128.TasksSummaryApiService>(),
        gh<_i60.LogService>(),
      ),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i134.TasksSbsCachedDataSource>(
      () => _i134.TasksSbsCachedDataSourceImpl(
          gh<_i127.TasksSbsRemoteDataSource>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i135.TasksSbsRepository>(
      () => _i135.TasksSbsRepositoryImpl(
          dataSource: gh<_i134.TasksSbsCachedDataSource>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i136.TasksVacationCachedDataSource>(
      () => _i136.TasksEasCachedDataSourceImpl(
          gh<_i129.TasksVacationRemoteDataSource>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i137.TasksVacationRepository>(
      () => _i138.TasksVacationRepositoryImpl(
          dataSource: gh<_i136.TasksVacationCachedDataSource>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i139.ClearCacheTasksSbsLateUseCase>(
      () => _i139.ClearCacheTasksSbsLateUseCaseImpl(
          gh<_i134.TasksSbsCachedDataSource>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i140.ClearCacheTasksSbsWeeklyUseCase>(
      () => _i140.ClearCacheTasksSbsWeeklyUseCaseImpl(
          gh<_i134.TasksSbsCachedDataSource>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i141.ClearCacheTasksVacationUseCase>(
      () => _i141.ClearCacheTasksVacationUseCaseImpl(
          gh<_i136.TasksVacationCachedDataSource>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i142.CompleteCachedTaskSbsWeeklyUseCase>(
      () => _i142.CompleteCachedTaskSbsWeeklyUseCaseImpl(
          gh<_i135.TasksSbsRepository>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i143.CompleteCachedTaskVacationUseCase>(
      () => _i143.CompleteCachedTaskVacationUseCaseImpl(
          gh<_i137.TasksVacationRepository>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i144.CompleteCachedTasksSbsLateUseCase>(
      () => _i144.CompleteCachedTaskSbsLateUseCaseImpl(
          gh<_i135.TasksSbsRepository>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i145.CompleteTaskEasUseCase>(
      () => _i145.CompleteTaskEasUseCaseImpl(
          gh<_i133.TasksEasRemoteDataSource>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i146.DownloadTaskEasAttachmentUseCase>(
      () => _i146.DownloadTaskEasAttachmentUseCaseImpl(
        gh<_i32.TasksEasAttachmentsRepository>(),
        gh<_i133.TasksEasRemoteDataSource>(),
      ),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i147.GetTasksSbsLateUseCase>(
      () => _i147.GetTasksSbsLateUseCaseImpl(
          gh<_i134.TasksSbsCachedDataSource>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i148.GetTasksSbsWeeklyUseCase>(
      () => _i148.GetTasksSbsWeeklyUseCaseImpl(
          gh<_i134.TasksSbsCachedDataSource>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i149.GetTasksVacationUseCase>(
      () => _i149.GetTasksVacationUseCaseImpl(
          gh<_i136.TasksVacationCachedDataSource>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.factory<_i150.TaskEasAttachmentCubit>(() => _i150.TaskEasAttachmentCubit(
          gh<_i15.InitTaskEasAttachmentsDirectoryUseCase>(),
          gh<_i55.GetTaskEasAttachmentUseCase>(),
          gh<_i146.DownloadTaskEasAttachmentUseCase>(),
          gh<_i20.OpenTaskEasAttachmentUseCase>(),
        ));
    gh.lazySingleton<_i151.TasksEasCachedDataSource>(
      () => _i151.TasksEasCachedDataSourceImpl(
        gh<_i133.TasksEasRemoteDataSource>(),
        gh<_i99.RemoveNotActualTaskEasAttachmentsUseCase>(),
      ),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i152.TasksEasRepository>(
      () => _i152.TasksEasRepositoryImpl(
          dataSource: gh<_i151.TasksEasCachedDataSource>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.factory<_i153.TasksSbsLateCubit>(() => _i153.TasksSbsLateCubit(
          gh<_i147.GetTasksSbsLateUseCase>(),
          gh<_i144.CompleteCachedTasksSbsLateUseCase>(),
          gh<_i132.CompleteTasksSbsLateUseCase>(),
          gh<_i139.ClearCacheTasksSbsLateUseCase>(),
        ));
    gh.factory<_i154.TasksSbsLateSummaryCubit>(
        () => _i154.TasksSbsLateSummaryCubit(
              gh<_i147.GetTasksSbsLateUseCase>(),
              gh<_i139.ClearCacheTasksSbsLateUseCase>(),
              gh<_i135.TasksSbsRepository>(),
              gh<_i60.LogService>(),
            ));
    gh.factory<_i155.TasksSbsWeeklyCubit>(() => _i155.TasksSbsWeeklyCubit(
          gh<_i148.GetTasksSbsWeeklyUseCase>(),
          gh<_i140.ClearCacheTasksSbsWeeklyUseCase>(),
          gh<_i142.CompleteCachedTaskSbsWeeklyUseCase>(),
          gh<_i130.CompleteTaskSbsWeeklyUseCase>(),
        ));
    gh.factory<_i156.TasksSbsWeeklySummaryCubit>(
        () => _i156.TasksSbsWeeklySummaryCubit(
              gh<_i148.GetTasksSbsWeeklyUseCase>(),
              gh<_i140.ClearCacheTasksSbsWeeklyUseCase>(),
              gh<_i135.TasksSbsRepository>(),
              gh<_i60.LogService>(),
            ));
    gh.factory<_i157.TasksVacationCubit>(() => _i157.TasksVacationCubit(
          gh<_i149.GetTasksVacationUseCase>(),
          gh<_i143.CompleteCachedTaskVacationUseCase>(),
          gh<_i131.CompleteTaskVacationUseCase>(),
          gh<_i141.ClearCacheTasksVacationUseCase>(),
        ));
    gh.factory<_i158.TasksVacationSummaryCubit>(
        () => _i158.TasksVacationSummaryCubit(
              gh<_i149.GetTasksVacationUseCase>(),
              gh<_i141.ClearCacheTasksVacationUseCase>(),
              gh<_i137.TasksVacationRepository>(),
              gh<_i60.LogService>(),
            ));
    gh.factory<_i159.UserLogOutUseCase>(
      () => _i159.UserLogOutUseCaseImpl(
        gh<_i79.ChatsRepository>(),
        gh<_i116.NewsCachedDataSource>(),
        gh<_i151.TasksEasCachedDataSource>(),
        gh<_i134.TasksSbsCachedDataSource>(),
        gh<_i136.TasksVacationCachedDataSource>(),
        gh<_i34.UserService>(),
        gh<_i76.AuthProvider>(),
        gh<_i22.ScopeRepository>(),
      ),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i160.ClearCacheTasksEasUseCase>(
      () => _i160.ClearCacheTasksEasUseCaseImpl(
          gh<_i151.TasksEasCachedDataSource>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i161.CompleteCachedTaskEasUseCase>(
      () => _i161.CompleteCachedTaskEasUseCaseImpl(
          gh<_i152.TasksEasRepository>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i162.GetTasksEasUseCase>(
      () => _i162.GetTasksEasUseCaseImpl(gh<_i151.TasksEasCachedDataSource>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.factory<_i163.SettingsCubit>(() => _i163.SettingsCubit(
          gh<_i50.GetBillingNotificationSettingsUseCase>(),
          gh<_i52.GetDarkModeSettingsUseCase>(),
          gh<_i54.GetSystemModeSettingsUseCase>(),
          gh<_i53.GetRegionSettingsUseCase>(),
          gh<_i159.UserLogOutUseCase>(),
          gh<_i105.SetBillingNotificationSettingsUseCase>(),
          gh<_i71.ThemeCubit>(),
          gh<_i97.RegionCubit>(),
        ));
    gh.factory<_i164.TasksEasCubit>(() => _i164.TasksEasCubit(
          gh<_i162.GetTasksEasUseCase>(),
          gh<_i161.CompleteCachedTaskEasUseCase>(),
          gh<_i145.CompleteTaskEasUseCase>(),
          gh<_i160.ClearCacheTasksEasUseCase>(),
        ));
    gh.factory<_i165.TasksEasSummaryCubit>(() => _i165.TasksEasSummaryCubit(
          gh<_i162.GetTasksEasUseCase>(),
          gh<_i160.ClearCacheTasksEasUseCase>(),
          gh<_i152.TasksEasRepository>(),
          gh<_i60.LogService>(),
        ));
    gh.factory<_i166.GetBackgroundDataUseCase>(
        () => _i166.GetBackgroundDataUseCase(
              gh<_i148.GetTasksSbsWeeklyUseCase>(),
              gh<_i147.GetTasksSbsLateUseCase>(),
              gh<_i162.GetTasksEasUseCase>(),
              gh<_i149.GetTasksVacationUseCase>(),
            ));
    gh.factory<_i167.AuthCubit>(() => _i167.AuthCubit(
          gh<_i21.PushNotificationsProvider>(),
          gh<_i88.HasCachedAccountUseCase>(),
          gh<_i125.OAuthTryLoginUseCase>(),
          gh<_i60.LogService>(),
          gh<_i53.GetRegionSettingsUseCase>(),
          gh<_i166.GetBackgroundDataUseCase>(),
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
          () => _i168.ChatsMockRepository(
            gh<_i35.UuidGenerator>(),
            gh<_i34.UserService>(),
          ),
          registerFor: {
            _dev,
            _prod,
          },
        );
        gh.lazySingleton<_i8.NewsRepository>(
          () => _i169.NewsMockRepository(constants: gh<_i9.Constants>()),
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
          () => _i170.NewsCachedRepository(
            dataSource: gh<_i116.NewsCachedDataSource>(),
            getApiBaseUrlUseCase: gh<_i46.GetAdminPanelApiBaseUrlUseCase>(),
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

class _$AppModule extends _i171.AppModule {}
