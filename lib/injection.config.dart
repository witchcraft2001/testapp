// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:shared_preferences/shared_preferences.dart' as _i35;
import 'package:sqflite/sqflite.dart' as _i10;
import 'package:terralinkapp/core/common/constants.dart' as _i9;
import 'package:terralinkapp/core/http/interceptors/auth_interceptor.dart'
    as _i45;
import 'package:terralinkapp/core/http/interceptors/locale_interceptor.dart'
    as _i16;
import 'package:terralinkapp/core/http/overrides/api_http_overrides.dart'
    as _i88;
import 'package:terralinkapp/core/http/providers/dio_provider.dart' as _i11;
import 'package:terralinkapp/core/navigation/app_navigation_service.dart'
    as _i123;
import 'package:terralinkapp/core/navigation/navigator_key_provider.dart'
    as _i20;
import 'package:terralinkapp/core/notifications/providers/push_notifications_provider.dart'
    as _i25;
import 'package:terralinkapp/core/notifications/repositories/app_remote_messages_repository.dart'
    as _i6;
import 'package:terralinkapp/core/notifications/services/local_notifications_service.dart'
    as _i107;
import 'package:terralinkapp/core/notifications/services/timezone_service.dart'
    as _i38;
import 'package:terralinkapp/core/repositories/di_scope_repository.dart'
    as _i27;
import 'package:terralinkapp/core/repositories/scope_repository.dart' as _i26;
import 'package:terralinkapp/core/services/admin_panel_api_service.dart'
    as _i87;
import 'package:terralinkapp/core/services/app_parsing_tags_service.dart'
    as _i5;
import 'package:terralinkapp/core/services/converters/businesscard_to_vcard_converter.dart'
    as _i48;
import 'package:terralinkapp/core/services/features_guard_service.dart' as _i95;
import 'package:terralinkapp/core/services/log_service.dart' as _i70;
import 'package:terralinkapp/core/services/user_service/user_service.dart'
    as _i39;
import 'package:terralinkapp/core/services/websocket_service.dart' as _i84;
import 'package:terralinkapp/core/theme/domain/cubits/theme_cubit.dart' as _i83;
import 'package:terralinkapp/di/modules/app_module.dart' as _i191;
import 'package:terralinkapp/features/api_settings/data/data_sources/api_settings_presets_data_source.dart'
    as _i3;
import 'package:terralinkapp/features/api_settings/data/providers/api_settings_provider.dart'
    as _i42;
import 'package:terralinkapp/features/api_settings/data/repositories/api_settings_presets_repository.dart'
    as _i4;
import 'package:terralinkapp/features/api_settings/domain/cubits/api_settings_cubit.dart'
    as _i122;
import 'package:terralinkapp/features/auth/data/providers/auth_provider.dart'
    as _i89;
import 'package:terralinkapp/features/auth/domain/auth_cubit.dart' as _i187;
import 'package:terralinkapp/features/auth/domain/use_cases/get_background_data_use_case.dart'
    as _i186;
import 'package:terralinkapp/features/auth/domain/use_cases/has_cached_account_use_case.dart'
    as _i103;
import 'package:terralinkapp/features/auth/domain/use_cases/oauth_try_login_use_case.dart'
    as _i145;
import 'package:terralinkapp/features/auth/domain/use_cases/refresh_auth_settings_use_case.dart'
    as _i111;
import 'package:terralinkapp/features/auth/domain/use_cases/user_log_in_use_case.dart'
    as _i143;
import 'package:terralinkapp/features/auth/domain/use_cases/user_log_out_use_case.dart'
    as _i179;
import 'package:terralinkapp/features/business_cards/data/data_sources/business_card_db_data_source.dart'
    as _i46;
import 'package:terralinkapp/features/business_cards/data/repositories/business_card_repository.dart'
    as _i47;
import 'package:terralinkapp/features/business_cards/domain/cubits/business_card_show_cubit.dart'
    as _i90;
import 'package:terralinkapp/features/business_cards/domain/cubits/business_cards_list_cubit.dart'
    as _i91;
import 'package:terralinkapp/features/business_cards/domain/use_cases/get_all_business_cards_use_case.dart'
    as _i53;
import 'package:terralinkapp/features/business_cards/domain/use_cases/get_business_card_by_id_use_case.dart'
    as _i56;
import 'package:terralinkapp/features/business_cards/domain/use_cases/get_vcard_from_business_card_use_case.dart'
    as _i67;
import 'package:terralinkapp/features/business_cards/domain/use_cases/remove_business_card_by_id_use_case.dart'
    as _i73;
import 'package:terralinkapp/features/business_cards/domain/use_cases/save_business_card_use_case.dart'
    as _i75;
import 'package:terralinkapp/features/business_cards/domain/use_cases/save_vcard_file_from_business_card_use_case.dart'
    as _i76;
import 'package:terralinkapp/features/business_cards/domain/use_cases/share_vcard_from_bussiness_card_use_case.dart'
    as _i82;
import 'package:terralinkapp/features/chat/data/data_sources/chats_db_data_source.dart'
    as _i49;
import 'package:terralinkapp/features/chat/data/data_sources/messages_db_data_source.dart'
    as _i19;
import 'package:terralinkapp/features/chat/data/providers/uuid_generator.dart'
    as _i40;
import 'package:terralinkapp/features/chat/data/repositories/chats_mock_repository.dart'
    as _i188;
import 'package:terralinkapp/features/chat/data/repositories/chats_remote_repository.dart'
    as _i93;
import 'package:terralinkapp/features/chat/data/repositories/chats_repository.dart'
    as _i92;
import 'package:terralinkapp/features/chat/domain/cubits/chat_cubit.dart'
    as _i125;
import 'package:terralinkapp/features/chat/domain/use_cases/chat/clear_chat_history_use_case.dart'
    as _i94;
import 'package:terralinkapp/features/chat/domain/use_cases/chat/get_all_messages_by_chat_id_use_case.dart'
    as _i97;
import 'package:terralinkapp/features/chat/domain/use_cases/chat/get_chat_info_by_id_use_case.dart'
    as _i100;
import 'package:terralinkapp/features/chat/domain/use_cases/chat/remove_message_by_id_use_case.dart'
    as _i113;
import 'package:terralinkapp/features/chat/domain/use_cases/chat/reset_new_messages_use_case.dart'
    as _i115;
import 'package:terralinkapp/features/chat/domain/use_cases/chat/send_chat_message_use_case.dart'
    as _i116;
import 'package:terralinkapp/features/chat/domain/use_cases/chat/send_form_chat_message_use_case.dart'
    as _i117;
import 'package:terralinkapp/features/chat/domain/use_cases/chat/send_menu_item_chat_message_use_case.dart'
    as _i119;
import 'package:terralinkapp/features/chat/domain/use_cases/chats/get_chat_feed_observable_use_case.dart'
    as _i98;
import 'package:terralinkapp/features/chat/domain/use_cases/chats/get_chat_feed_use_case.dart'
    as _i99;
import 'package:terralinkapp/features/feedback/domain/use_cases/send_feedback_use_case.dart'
    as _i29;
import 'package:terralinkapp/features/greeting_cards/data/data_sources/greeting_cards_cached_data_source.dart'
    as _i130;
import 'package:terralinkapp/features/greeting_cards/data/data_sources/greeting_cards_remote_data_source.dart'
    as _i102;
import 'package:terralinkapp/features/greeting_cards/data/repositories/greeting_cards_repository.dart'
    as _i131;
import 'package:terralinkapp/features/greeting_cards/domain/use_cases/clear_cache_greeting_templates_use_case.dart'
    as _i138;
import 'package:terralinkapp/features/greeting_cards/domain/use_cases/get_greeting_templates_use_case.dart'
    as _i141;
import 'package:terralinkapp/features/greeting_cards/domain/use_cases/init_greetings_card_directory_use_case.dart'
    as _i14;
import 'package:terralinkapp/features/greeting_cards/domain/use_cases/send_greeting_card_by_email_use_case.dart'
    as _i30;
import 'package:terralinkapp/features/greeting_cards/domain/use_cases/share_greeting_card_use_case.dart'
    as _i34;
import 'package:terralinkapp/features/likes/common/data/data_sources/likes_db_data_source.dart'
    as _i104;
import 'package:terralinkapp/features/likes/common/data/data_sources/likes_remote_data_source.dart'
    as _i105;
import 'package:terralinkapp/features/likes/common/data/repositories/likes_repository.dart'
    as _i106;
import 'package:terralinkapp/features/likes/common/domain/use_cases/clear_cache_likes_use_case.dart'
    as _i126;
import 'package:terralinkapp/features/likes/common/domain/use_cases/get_likes_stat_use_case.dart'
    as _i127;
import 'package:terralinkapp/features/likes/common/domain/use_cases/get_likes_use_case.dart'
    as _i128;
import 'package:terralinkapp/features/likes/common/domain/use_cases/send_like_use_case.dart'
    as _i118;
import 'package:terralinkapp/features/likes/my/presentation/cubits/likes_my_cubit.dart'
    as _i132;
import 'package:terralinkapp/features/likes/new/presentation/cubits/likes_new_cubit.dart'
    as _i133;
import 'package:terralinkapp/features/media_content/data/services/media_content_parsing_tags_service.dart'
    as _i18;
import 'package:terralinkapp/features/media_content/domain/use_cases/send_email_use_case.dart'
    as _i28;
import 'package:terralinkapp/features/media_content/presentation/cubits/media_content_cubit.dart'
    as _i17;
import 'package:terralinkapp/features/news/data/data_sources/news_cached_data_source.dart'
    as _i134;
import 'package:terralinkapp/features/news/data/data_sources/news_remote_data_source.dart'
    as _i109;
import 'package:terralinkapp/features/news/data/repositories/news_cached_repository.dart'
    as _i190;
import 'package:terralinkapp/features/news/data/repositories/news_mock_repository.dart'
    as _i189;
import 'package:terralinkapp/features/news/data/repositories/news_repository.dart'
    as _i8;
import 'package:terralinkapp/features/news/domain/cubits/news_cubit.dart'
    as _i108;
import 'package:terralinkapp/features/news/domain/use_cases/clear_cache_news_use_case.dart'
    as _i7;
import 'package:terralinkapp/features/news/domain/use_cases/get_all_news_use_case.dart'
    as _i101;
import 'package:terralinkapp/features/onboarding/data/repositories/onboarding_mock_repository.dart'
    as _i22;
import 'package:terralinkapp/features/onboarding/domain/repositories/onboarding_repository.dart'
    as _i21;
import 'package:terralinkapp/features/onboarding/domain/use_cases/get_onboarding_available_status_use_case.dart'
    as _i58;
import 'package:terralinkapp/features/onboarding/domain/use_cases/get_onboarding_special_sections_use_case.dart'
    as _i59;
import 'package:terralinkapp/features/onboarding/domain/use_cases/get_onboarding_stages_sections_use_case.dart'
    as _i60;
import 'package:terralinkapp/features/onboarding/domain/use_cases/get_onboarding_usefull_materials_use_case.dart'
    as _i61;
import 'package:terralinkapp/features/onboarding/presentation/cubits/onboarding_cubit.dart'
    as _i71;
import 'package:terralinkapp/features/profile/data/data_sources/file_storage_data_source.dart'
    as _i96;
import 'package:terralinkapp/features/profile/data/repositories/avatar_storage_repository.dart'
    as _i124;
import 'package:terralinkapp/features/profile/domain/use_cases/delete_profile_avatar_use_case.dart'
    as _i140;
import 'package:terralinkapp/features/profile/domain/use_cases/get_profile_avatar_use_case.dart'
    as _i129;
import 'package:terralinkapp/features/profile/domain/use_cases/set_profile_avatar_use_case.dart'
    as _i135;
import 'package:terralinkapp/features/profile_documents/data/data_sources/app_documents_db_data_source.dart'
    as _i43;
import 'package:terralinkapp/features/profile_documents/data/repositories/app_documents_repository.dart'
    as _i44;
import 'package:terralinkapp/features/profile_documents/domain/cubits/profile_documents_cubit.dart'
    as _i110;
import 'package:terralinkapp/features/profile_documents/domain/use_cases/add_app_documents_use_case.dart'
    as _i86;
import 'package:terralinkapp/features/profile_documents/domain/use_cases/edit_app_documents_use_case.dart'
    as _i50;
import 'package:terralinkapp/features/profile_documents/domain/use_cases/get_app_documents_use_case.dart'
    as _i54;
import 'package:terralinkapp/features/profile_documents/domain/use_cases/init_case_app_documents_use_case.dart'
    as _i13;
import 'package:terralinkapp/features/profile_documents/domain/use_cases/open_app_document_use_case.dart'
    as _i23;
import 'package:terralinkapp/features/profile_documents/domain/use_cases/remove_case_app_documents_use_case.dart'
    as _i72;
import 'package:terralinkapp/features/profile_documents/domain/use_cases/share_app_documents_use_case.dart'
    as _i33;
import 'package:terralinkapp/features/region/domain/cubits/region_cubit.dart'
    as _i112;
import 'package:terralinkapp/features/settings/data/data_sources/settings_data_source.dart'
    as _i31;
import 'package:terralinkapp/features/settings/data/repositories/settings_repository.dart'
    as _i32;
import 'package:terralinkapp/features/settings/domain/cubits/settings_cubit.dart'
    as _i183;
import 'package:terralinkapp/features/settings/domain/use_cases/get_admin_panel_api_base_url_use_case.dart'
    as _i51;
import 'package:terralinkapp/features/settings/domain/use_cases/get_all_api_settings_use_case.dart'
    as _i52;
import 'package:terralinkapp/features/settings/domain/use_cases/get_api_settings_presets_use_case.dart'
    as _i12;
import 'package:terralinkapp/features/settings/domain/use_cases/get_billing_notification_settings_use_case.dart'
    as _i55;
import 'package:terralinkapp/features/settings/domain/use_cases/get_dark_mode_settings_use_case.dart'
    as _i57;
import 'package:terralinkapp/features/settings/domain/use_cases/get_region_settings_use_case.dart'
    as _i62;
import 'package:terralinkapp/features/settings/domain/use_cases/get_system_mode_settings_use_case.dart'
    as _i63;
import 'package:terralinkapp/features/settings/domain/use_cases/get_tasks_sbs_api_base_url_use_case.dart'
    as _i65;
import 'package:terralinkapp/features/settings/domain/use_cases/get_tasks_summary_api_base_url_use_case.dart'
    as _i66;
import 'package:terralinkapp/features/settings/domain/use_cases/get_ws_url_use_case.dart'
    as _i69;
import 'package:terralinkapp/features/settings/domain/use_cases/set_all_api_settings_use_case.dart'
    as _i77;
import 'package:terralinkapp/features/settings/domain/use_cases/set_billing_notification_settings_use_case.dart'
    as _i120;
import 'package:terralinkapp/features/settings/domain/use_cases/set_dark_mode_settings_use_case.dart'
    as _i78;
import 'package:terralinkapp/features/settings/domain/use_cases/set_region_settings_use_case.dart'
    as _i79;
import 'package:terralinkapp/features/settings/domain/use_cases/set_system_mode_settings_use_case.dart'
    as _i80;
import 'package:terralinkapp/features/tasks/common/data/services/tasks_summary_api_service.dart'
    as _i148;
import 'package:terralinkapp/features/tasks/eas/data/data_source/tasks_eas_attachments_db_data_source.dart'
    as _i36;
import 'package:terralinkapp/features/tasks/eas/data/data_source/tasks_eas_cached_data_source.dart'
    as _i171;
import 'package:terralinkapp/features/tasks/eas/data/data_source/tasks_eas_remote_data_source.dart'
    as _i153;
import 'package:terralinkapp/features/tasks/eas/data/repositories/tasks_eas_attachments_repository.dart'
    as _i37;
import 'package:terralinkapp/features/tasks/eas/data/repositories/tasks_eas_repository.dart'
    as _i172;
import 'package:terralinkapp/features/tasks/eas/domain/cubits/task_eas_attachment_cubit.dart'
    as _i170;
import 'package:terralinkapp/features/tasks/eas/domain/cubits/tasks_eas_cubit.dart'
    as _i184;
import 'package:terralinkapp/features/tasks/eas/domain/use_cases/attachments/download_task_eas_attachment_use_case.dart'
    as _i166;
import 'package:terralinkapp/features/tasks/eas/domain/use_cases/attachments/get_task_eas_attachment_use_case.dart'
    as _i64;
import 'package:terralinkapp/features/tasks/eas/domain/use_cases/attachments/init_task_eas_attachments_directory_use_case.dart'
    as _i15;
import 'package:terralinkapp/features/tasks/eas/domain/use_cases/attachments/open_task_eas_attachment_use_case.dart'
    as _i24;
import 'package:terralinkapp/features/tasks/eas/domain/use_cases/attachments/remove_not_actual_task_eas_attachments_use_case.dart'
    as _i114;
import 'package:terralinkapp/features/tasks/eas/domain/use_cases/attachments/remove_task_eas_attachment_use_case.dart'
    as _i74;
import 'package:terralinkapp/features/tasks/eas/domain/use_cases/tasks/clear_cache_tasks_eas_use_case.dart'
    as _i180;
import 'package:terralinkapp/features/tasks/eas/domain/use_cases/tasks/complete_cached_task_eas_use_case.dart'
    as _i181;
import 'package:terralinkapp/features/tasks/eas/domain/use_cases/tasks/complete_task_eas_use_case.dart'
    as _i165;
import 'package:terralinkapp/features/tasks/eas/domain/use_cases/tasks/get_tasks_eas_use_case.dart'
    as _i182;
import 'package:terralinkapp/features/tasks/sbs/data/data_sources/tasks_sbs_cached_data_source.dart'
    as _i154;
import 'package:terralinkapp/features/tasks/sbs/data/data_sources/tasks_sbs_remote_data_source.dart'
    as _i147;
import 'package:terralinkapp/features/tasks/sbs/data/repositories/tasks_sbs_repository.dart'
    as _i155;
import 'package:terralinkapp/features/tasks/sbs/data/services/tasks_sbs_api_service.dart'
    as _i146;
import 'package:terralinkapp/features/tasks/sbs_late/domain/cubits/tasks_sbs_late_cubit.dart'
    as _i173;
import 'package:terralinkapp/features/tasks/sbs_late/domain/use_cases/clear_cache_tasks_sbs_late_use_case.dart'
    as _i159;
import 'package:terralinkapp/features/tasks/sbs_late/domain/use_cases/complete_cached_tasks_late_sbs_use_case.dart'
    as _i164;
import 'package:terralinkapp/features/tasks/sbs_late/domain/use_cases/complete_tasks_sbs_late_use_case.dart'
    as _i152;
import 'package:terralinkapp/features/tasks/sbs_late/domain/use_cases/get_tasks_sbs_late_use_case.dart'
    as _i167;
import 'package:terralinkapp/features/tasks/sbs_weekly/domain/cubits/tasks_sbs_weekly_cubit.dart'
    as _i175;
import 'package:terralinkapp/features/tasks/sbs_weekly/domain/use_cases/clear_cache_tasks_sbs_weekly_use_case.dart'
    as _i160;
import 'package:terralinkapp/features/tasks/sbs_weekly/domain/use_cases/complete_cached_task_sbs_weekly_use_case.dart'
    as _i162;
import 'package:terralinkapp/features/tasks/sbs_weekly/domain/use_cases/complete_task_sbs_weekly_use_case.dart'
    as _i150;
import 'package:terralinkapp/features/tasks/sbs_weekly/domain/use_cases/get_tasks_sbs_weekly_use_case.dart'
    as _i168;
import 'package:terralinkapp/features/tasks/summary/domain/cubits/tasks_eas_summary_cubit.dart'
    as _i185;
import 'package:terralinkapp/features/tasks/summary/domain/cubits/tasks_sbs_late_summary_cubit.dart'
    as _i174;
import 'package:terralinkapp/features/tasks/summary/domain/cubits/tasks_sbs_weekly_summary_cubit.dart'
    as _i176;
import 'package:terralinkapp/features/tasks/summary/domain/cubits/tasks_vacation_summary_cubit.dart'
    as _i178;
import 'package:terralinkapp/features/tasks/vacations/data/data_sources/tasks_vacation_cached_data_source.dart'
    as _i156;
import 'package:terralinkapp/features/tasks/vacations/data/data_sources/tasks_vacation_remote_data_source.dart'
    as _i149;
import 'package:terralinkapp/features/tasks/vacations/data/repositories/tasks_vacation_cached_repository.dart'
    as _i158;
import 'package:terralinkapp/features/tasks/vacations/data/repositories/tasks_vacation_repository.dart'
    as _i157;
import 'package:terralinkapp/features/tasks/vacations/domain/cubits/tasks_vacation_cubit.dart'
    as _i177;
import 'package:terralinkapp/features/tasks/vacations/domain/use_cases/clear_cache_tasks_vacation_use_case.dart'
    as _i161;
import 'package:terralinkapp/features/tasks/vacations/domain/use_cases/complete_cached_task_vacation_use_case.dart'
    as _i163;
import 'package:terralinkapp/features/tasks/vacations/domain/use_cases/complete_task_vacation_use_case.dart'
    as _i151;
import 'package:terralinkapp/features/tasks/vacations/domain/use_cases/get_tasks_vacation_use_case.dart'
    as _i169;
import 'package:terralinkapp/features/users/data/data_sources/users_cached_data_source.dart'
    as _i136;
import 'package:terralinkapp/features/users/data/data_sources/users_remote_data_source.dart'
    as _i121;
import 'package:terralinkapp/features/users/data/repositories/users_repository.dart'
    as _i137;
import 'package:terralinkapp/features/users/domain/use_cases/clear_cache_users_use_case.dart'
    as _i139;
import 'package:terralinkapp/features/users/domain/use_cases/get_users_use_case.dart'
    as _i142;
import 'package:terralinkapp/features/users/presentation/cubits/users_cubit.dart'
    as _i144;
import 'package:terralinkapp/features/welcome/data/data_source/local_welcome_data_source.dart'
    as _i41;
import 'package:terralinkapp/features/welcome/domain/use_cases/get_welcome_available_status_use_case.dart'
    as _i68;
import 'package:terralinkapp/features/welcome/domain/use_cases/set_welcome_as_passed_use_case.dart'
    as _i81;
import 'package:terralinkapp/features/welcome/presentation/cubit/welcome_cubit.dart'
    as _i85;

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
    gh.factory<_i17.MediaContentCubit>(() => _i17.MediaContentCubit());
    gh.lazySingleton<_i18.MediaContentParsingTagsService>(
      () => _i18.MediaContentParsingTagsService(),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i19.MessagesDbDataSource>(
      () => _i19.MessagesDbDataSourceImpl(gh<_i10.Database>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i20.NavigatorKeyProvider>(
      () => _i20.NavigatorKeyProvider(),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i21.OnboardingRepository>(
      () => _i22.OnboardingMockRepository(
          service: gh<_i18.MediaContentParsingTagsService>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i23.OpenAppDocumentUseCase>(
      () => _i23.OpenAppDocumentUseCaseImpl(),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i24.OpenTaskEasAttachmentUseCase>(
      () => _i24.OpenTaskEasAttachmentUseCaseImpl(),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i25.PushNotificationsProvider>(
      () => _i25.PushNotificationsProviderImpl(),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i26.ScopeRepository>(
      () => _i27.DiScopeRepository(),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i28.SendEmailUseCase>(
      () => _i28.SendEmailUseCaseImpl(),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i29.SendFeedbackUseCase>(
      () => _i29.SendFeedbackUseCaseImpl(),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i30.SendGreetingCardByEmailUseCase>(
      () => _i30.SendGreetingCardByEmailUseCaseImpl(),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i31.SettingsDataSource>(
      () => _i31.SettingsDataSourceImpl(),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i32.SettingsRepository>(
      () => _i32.SettingsRepositoryImpl(
          dataSource: gh<_i31.SettingsDataSource>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i33.ShareAppDocumentsUseCase>(
      () => _i33.ShareAppDocumentsUseCaseImpl(),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i34.ShareGreetingCardUseCase>(
      () => _i34.ShareGreetingCardUseCaseImpl(),
      registerFor: {
        _dev,
        _prod,
      },
    );
    await gh.factoryAsync<_i35.SharedPreferences>(
      () => appModule.providePrefs,
      preResolve: true,
    );
    gh.lazySingleton<_i36.TasksEasAttachmentsDbDataSource>(
      () => _i36.TasksEasAttachmentsDbDataSourceImpl(gh<_i10.Database>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i37.TasksEasAttachmentsRepository>(
      () => _i37.TasksEasAttachmentsRepositoryImpl(
          dbDataSource: gh<_i36.TasksEasAttachmentsDbDataSource>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i38.TimeZoneService>(
      () => _i38.TimeZoneServiceImpl(),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i39.UserService>(
      () => _i39.UserServiceImpl(),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i40.UuidGenerator>(
      () => _i40.UuidGeneratorImpl(),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i41.WelcomeDataSource>(
      () => _i41.WelcomeDataSourceLocalImpl(),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i42.ApiSettingsProvider>(() => _i42.ApiSettingsProvider(
          gh<_i31.SettingsDataSource>(),
          gh<_i9.Constants>(),
        ));
    gh.lazySingleton<_i43.AppDocumentsDbDataSource>(
      () => _i43.AppDocumentsDbDataSourceImpl(gh<_i10.Database>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i44.AppDocumentsRepository>(
      () => _i44.AppDocumentsDbRepositoryImpl(
          dataSource: gh<_i43.AppDocumentsDbDataSource>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i45.AuthInterceptor>(
        () => _i45.AuthInterceptor(gh<_i39.UserService>()));
    gh.lazySingleton<_i46.BusinessCardDbDataSource>(
      () => _i46.BusinessCardDbDataSourceImpl(gh<_i10.Database>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i47.BusinessCardRepository>(
      () => _i47.BusinessCardRepositoryImpl(
          dataSource: gh<_i46.BusinessCardDbDataSource>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.factory<_i48.BusinessCardToVCardConverter>(
        () => _i48.BusinessCardToVCardConverter(gh<_i9.Constants>()));
    gh.lazySingleton<_i49.ChatsDbDataSource>(
      () => _i49.ChatsDbDataSourceImpl(gh<_i10.Database>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i50.EditAppDocumentUseCase>(
      () => _i50.EditAppDocumentUseCaseImpl(gh<_i44.AppDocumentsRepository>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.factory<_i51.GetAdminPanelApiBaseUrlUseCase>(() =>
        _i51.GetAdminPanelApiBaseUrlUseCase(gh<_i42.ApiSettingsProvider>()));
    gh.factory<_i52.GetAllApiSettingsUseCase>(
        () => _i52.GetAllApiSettingsUseCase(gh<_i42.ApiSettingsProvider>()));
    gh.lazySingleton<_i53.GetAllBusinessCardsUseCase>(
      () => _i53.GetAllBusinessCardsUseCaseImpl(
          gh<_i47.BusinessCardRepository>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i54.GetAppDocumentsUseCase>(
      () => _i54.GetAppDocumentsUseCaseImpl(gh<_i44.AppDocumentsRepository>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i55.GetBillingNotificationSettingsUseCase>(
      () => _i55.GetBillingNotificationSettingsUseCaseImpl(
          gh<_i31.SettingsDataSource>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i56.GetBusinessCardByIdUseCase>(
      () => _i56.GetBusinessCardByIdUseCaseImpl(
          gh<_i47.BusinessCardRepository>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i57.GetDarkModeSettingsUseCase>(
      () => _i57.GetDarkModeSettingsUseCaseImpl(gh<_i31.SettingsDataSource>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.factory<_i58.GetOnboardingAvailableStatusUseCase>(
      () => _i58.GetOnboardingAvailableStatusUseCaseImpl(
          gh<_i32.SettingsRepository>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.factory<_i59.GetOnboardingSpecialSelectionsUseCase>(
      () => _i59.GetOnboardingSpecialSelectionsUseCaseImpl(
          onboardingRepository: gh<_i21.OnboardingRepository>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.factory<_i60.GetOnboardingStagesSelectionsUseCase>(
      () => _i60.GetOnboardingStagesSelectionsUseCaseImpl(
          onboardingRepository: gh<_i21.OnboardingRepository>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.factory<_i61.GetOnboardingUsefullMaterialsUseCase>(
      () => _i61.GetOnboardingUsefullMaterialsUseCaseImpl(
          onboardingRepository: gh<_i21.OnboardingRepository>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i62.GetRegionSettingsUseCase>(
      () => _i62.GetRegionSettingsUseCaseImpl(gh<_i31.SettingsDataSource>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i63.GetSystemModeSettingsUseCase>(
      () =>
          _i63.GetSystemModeSettingsUseCaseImpl(gh<_i31.SettingsDataSource>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i64.GetTaskEasAttachmentUseCase>(
      () => _i64.GetTaskEasAttachmentUseCaseImpl(
          gh<_i37.TasksEasAttachmentsRepository>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.factory<_i65.GetTasksSbsApiBaseUrlUseCase>(() =>
        _i65.GetTasksSbsApiBaseUrlUseCase(gh<_i42.ApiSettingsProvider>()));
    gh.factory<_i66.GetTasksSummaryApiBaseUrlUseCase>(() =>
        _i66.GetTasksSummaryApiBaseUrlUseCase(gh<_i42.ApiSettingsProvider>()));
    gh.factory<_i67.GetVCardFromBusinessCardUseCase>(() =>
        _i67.GetVCardFromBusinessCardUseCase(
            gh<_i48.BusinessCardToVCardConverter>()));
    gh.factory<_i68.GetWelcomeAvailableStatusUseCase>(
      () => _i68.GetWelcomeAvailableUseCaseLocalImpl(
        gh<_i41.WelcomeDataSource>(),
        gh<_i32.SettingsRepository>(),
      ),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.factory<_i69.GetWsUrlUseCase>(
        () => _i69.GetWsUrlUseCase(gh<_i42.ApiSettingsProvider>()));
    gh.lazySingleton<_i70.LogService>(
      () => _i70.LogService(gh<_i39.UserService>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.factory<_i71.OnboardingCubit>(() => _i71.OnboardingCubit(
          gh<_i59.GetOnboardingSpecialSelectionsUseCase>(),
          gh<_i60.GetOnboardingStagesSelectionsUseCase>(),
          gh<_i61.GetOnboardingUsefullMaterialsUseCase>(),
        ));
    gh.lazySingleton<_i72.RemoveAppDocumentUseCase>(
      () =>
          _i72.RemoveAppDocumentUseCaseImpl(gh<_i44.AppDocumentsRepository>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i73.RemoveBusinessCardByIdUseCase>(
      () => _i73.RemoveBusinessCardByIdUseCaseImpl(
          gh<_i47.BusinessCardRepository>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i74.RemoveTaskEasAttachmentUseCase>(
      () => _i74.RemoveTaskEasAttachmentUseCaseImpl(
          gh<_i37.TasksEasAttachmentsRepository>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i75.SaveBusinessCardUseCase>(
      () => _i75.SaveBusinessCardUseCaseImpl(gh<_i47.BusinessCardRepository>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.factory<_i76.SaveVCardFileFromBusinessCardUseCase>(() =>
        _i76.SaveVCardFileFromBusinessCardUseCase(
            gh<_i67.GetVCardFromBusinessCardUseCase>()));
    gh.factory<_i77.SetAllApiSettingsUseCase>(
        () => _i77.SetAllApiSettingsUseCase(gh<_i42.ApiSettingsProvider>()));
    gh.lazySingleton<_i78.SetDarkModeSettingsUseCase>(
      () => _i78.SetDarkModeSettingsUseCaseImpl(gh<_i31.SettingsDataSource>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i79.SetRegionSettingsUseCase>(
      () => _i79.SetRegionSettingsUseCaseImpl(gh<_i31.SettingsDataSource>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i80.SetSystemModeSettingsUseCase>(
      () =>
          _i80.SetSystemModeSettingsUseCaseImpl(gh<_i31.SettingsDataSource>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.factory<_i81.SetWelcomeAsPassedUseCase>(
      () => _i81.SetWelcomeAsPassedUseCaseLocalImpl(
        gh<_i41.WelcomeDataSource>(),
        gh<_i32.SettingsRepository>(),
      ),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.factory<_i82.ShareVCardFromBusinessCardUseCase>(() =>
        _i82.ShareVCardFromBusinessCardUseCase(
            gh<_i76.SaveVCardFileFromBusinessCardUseCase>()));
    gh.lazySingleton<_i83.ThemeCubit>(
      () => _i83.ThemeCubit(
        gh<_i57.GetDarkModeSettingsUseCase>(),
        gh<_i78.SetDarkModeSettingsUseCase>(),
        gh<_i63.GetSystemModeSettingsUseCase>(),
        gh<_i80.SetSystemModeSettingsUseCase>(),
      ),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i84.WebsocketService>(
      () => _i84.WebsocketServiceImpl(
        gh<_i39.UserService>(),
        gh<_i25.PushNotificationsProvider>(),
        gh<_i70.LogService>(),
        gh<_i69.GetWsUrlUseCase>(),
      ),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.factory<_i85.WelcomeCubit>(
        () => _i85.WelcomeCubit(gh<_i81.SetWelcomeAsPassedUseCase>()));
    gh.lazySingleton<_i86.AddAppDocumentsUseCase>(
      () =>
          _i86.AddAppDocumentsAddUseCaseImpl(gh<_i44.AppDocumentsRepository>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i87.AdminPanelApiService>(
      () => _i87.AdminPanelApiService(
        gh<_i11.DioProvider>(),
        gh<_i70.LogService>(),
        gh<_i51.GetAdminPanelApiBaseUrlUseCase>(),
      ),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i88.ApiHttpOverrides>(
      () => _i88.ApiHttpOverrides(gh<_i51.GetAdminPanelApiBaseUrlUseCase>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i89.AuthProvider>(
      () => _i89.AuthProvider(
        gh<_i9.Constants>(),
        gh<_i20.NavigatorKeyProvider>(),
        gh<_i52.GetAllApiSettingsUseCase>(),
      ),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.factoryParam<_i90.BusinessCardShowCubit, int, dynamic>((
      id,
      _,
    ) =>
        _i90.BusinessCardShowCubit(
          id,
          gh<_i56.GetBusinessCardByIdUseCase>(),
          gh<_i70.LogService>(),
          gh<_i82.ShareVCardFromBusinessCardUseCase>(),
          gh<_i67.GetVCardFromBusinessCardUseCase>(),
        ));
    gh.factory<_i91.BusinessCardsListCubit>(() => _i91.BusinessCardsListCubit(
          gh<_i53.GetAllBusinessCardsUseCase>(),
          gh<_i73.RemoveBusinessCardByIdUseCase>(),
          gh<_i82.ShareVCardFromBusinessCardUseCase>(),
          gh<_i70.LogService>(),
        ));
    gh.lazySingleton<_i92.ChatsRepository>(
      () => _i93.ChatsRemoteRepository(
        gh<_i84.WebsocketService>(),
        gh<_i49.ChatsDbDataSource>(),
        gh<_i40.UuidGenerator>(),
        gh<_i39.UserService>(),
        gh<_i19.MessagesDbDataSource>(),
        gh<_i70.LogService>(),
      ),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.factory<_i94.ClearChatHistoryUseCase>(
        () => _i94.ClearChatHistoryUseCase(gh<_i92.ChatsRepository>()));
    gh.lazySingleton<_i95.FeaturesGuardService>(
      () => _i95.FeaturesGuardServiceImpl(
        getOnboardingAvailableStatusUseCase:
            gh<_i58.GetOnboardingAvailableStatusUseCase>(),
        getOnboardingStatusUseCase: gh<_i68.GetWelcomeAvailableStatusUseCase>(),
      ),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i96.FileStorageDataSource>(
      () => _i96.FileStorageDataSourceImpl(logService: gh<_i70.LogService>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i97.GetAllMessagesByChatIdUseCase>(
      () => _i97.GetAllMessagesByChatIdUseCaseImpl(gh<_i92.ChatsRepository>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i98.GetChatFeedObservableUseCase>(
      () => _i98.GetChatFeedObservableUseCaseImpl(gh<_i92.ChatsRepository>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i99.GetChatFeedUseCase>(
      () => _i99.GetChatFeedUseCaseImpl(gh<_i92.ChatsRepository>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i100.GetChatInfoByIdUseCase>(
      () => _i100.GetChatInfoByIdUseCaseImpl(gh<_i92.ChatsRepository>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.factory<_i101.GetNewsUseCase>(
      () => _i101.GetNewsUseCaseImpl(
        gh<_i8.NewsRepository>(),
        gh<_i62.GetRegionSettingsUseCase>(),
      ),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i102.GreetingCardsRemoteDataSource>(
      () => _i102.GreetingCardsRemoteDataSourceImpl(
        gh<_i87.AdminPanelApiService>(),
        gh<_i70.LogService>(),
      ),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.factory<_i103.HasCachedAccountUseCase>(
        () => _i103.HasCachedAccountUseCase(gh<_i89.AuthProvider>()));
    gh.lazySingleton<_i104.LikesDbDataSource>(
      () => _i104.LikesDbDataSourceImpl(
        gh<_i10.Database>(),
        gh<_i70.LogService>(),
      ),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i105.LikesRemoteDataSource>(
      () => _i105.LikesRemoteDataSourceImpl(
        gh<_i87.AdminPanelApiService>(),
        gh<_i39.UserService>(),
        gh<_i70.LogService>(),
      ),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i106.LikesRepository>(
      () => _i106.LikesRepositoryImpl(
        gh<_i51.GetAdminPanelApiBaseUrlUseCase>(),
        gh<_i104.LikesDbDataSource>(),
        gh<_i105.LikesRemoteDataSource>(),
      ),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i107.LocalNotificationsService>(
      () => _i107.LocalNotificationsServiceImpl(
        gh<_i20.NavigatorKeyProvider>(),
        gh<_i6.AppRemoteMessagesRepository>(),
        gh<_i70.LogService>(),
      ),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.factory<_i108.NewsCubit>(() => _i108.NewsCubit(
          gh<_i101.GetNewsUseCase>(),
          gh<_i7.ClearCacheNewsUseCase>(),
        ));
    gh.lazySingleton<_i109.NewsRemoteDataSource>(
      () => _i109.NewsRemoteDataSourceImpl(
        gh<_i87.AdminPanelApiService>(),
        gh<_i70.LogService>(),
      ),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.factory<_i110.ProfileDocumentsCubit>(() => _i110.ProfileDocumentsCubit(
          gh<_i13.InitAppDocumentsUseCase>(),
          gh<_i54.GetAppDocumentsUseCase>(),
          gh<_i86.AddAppDocumentsUseCase>(),
          gh<_i72.RemoveAppDocumentUseCase>(),
          gh<_i50.EditAppDocumentUseCase>(),
          gh<_i33.ShareAppDocumentsUseCase>(),
          gh<_i23.OpenAppDocumentUseCase>(),
        ));
    gh.factory<_i111.RefreshAuthSettingsUseCase>(
        () => _i111.RefreshAuthSettingsUseCase(gh<_i89.AuthProvider>()));
    gh.lazySingleton<_i112.RegionCubit>(
      () => _i112.RegionCubit(
        gh<_i62.GetRegionSettingsUseCase>(),
        gh<_i79.SetRegionSettingsUseCase>(),
      ),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i113.RemoveMessageByIdUseCase>(
      () => _i113.RemoveMessageByIdUseCaseImpl(gh<_i92.ChatsRepository>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i114.RemoveNotActualTaskEasAttachmentsUseCase>(
      () => _i114.RemoveNotActualTaskEasAttachmentsUseCaseImpl(
        gh<_i37.TasksEasAttachmentsRepository>(),
        gh<_i74.RemoveTaskEasAttachmentUseCase>(),
      ),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i115.ResetNewMessagesUseCase>(
      () => _i115.ResetNewMessagesUseCaseImpl(gh<_i92.ChatsRepository>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i116.SendChatMessageUseCase>(
      () => _i116.SendChatMessageUseCaseImpl(gh<_i92.ChatsRepository>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i117.SendFormChatMessageUseCase>(
      () => _i117.SendFormChatMessageUseCaseImpl(gh<_i92.ChatsRepository>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i118.SendLikeUseCase>(
      () => _i118.SendLikeUseCaseImpl(gh<_i106.LikesRepository>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i119.SendMenuItemChatMessageUseCase>(
      () =>
          _i119.SendMenuItemChatMessageUseCaseImpl(gh<_i92.ChatsRepository>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i120.SetBillingNotificationSettingsUseCase>(
      () => _i120.SetBillingNotificationSettingsUseCaseImpl(
        gh<_i31.SettingsDataSource>(),
        gh<_i107.LocalNotificationsService>(),
      ),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i121.UsersRemoteDataSource>(
      () => _i121.UsersRemoteDataSourceImpl(
        gh<_i87.AdminPanelApiService>(),
        gh<_i70.LogService>(),
      ),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.factory<_i122.ApiSettingsCubit>(() => _i122.ApiSettingsCubit(
          gh<_i77.SetAllApiSettingsUseCase>(),
          gh<_i52.GetAllApiSettingsUseCase>(),
          gh<_i111.RefreshAuthSettingsUseCase>(),
          gh<_i94.ClearChatHistoryUseCase>(),
          gh<_i12.GetApiSettingsPresetsUseCase>(),
        ));
    gh.lazySingleton<_i123.AppNavigationService>(
      () => _i123.AppNavigationService(
        gh<_i20.NavigatorKeyProvider>(),
        gh<_i95.FeaturesGuardService>(),
      ),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i124.AvatarStorageRepository>(
      () => _i124.AvatarStorageRepositoryImpl(
          dataSource: gh<_i96.FileStorageDataSource>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.factory<_i125.ChatCubit>(() => _i125.ChatCubit(
          gh<_i98.GetChatFeedObservableUseCase>(),
          gh<_i99.GetChatFeedUseCase>(),
          gh<_i100.GetChatInfoByIdUseCase>(),
          gh<_i97.GetAllMessagesByChatIdUseCase>(),
          gh<_i92.ChatsRepository>(),
          gh<_i39.UserService>(),
          gh<_i116.SendChatMessageUseCase>(),
          gh<_i119.SendMenuItemChatMessageUseCase>(),
          gh<_i115.ResetNewMessagesUseCase>(),
          gh<_i113.RemoveMessageByIdUseCase>(),
          gh<_i117.SendFormChatMessageUseCase>(),
          gh<_i70.LogService>(),
        ));
    gh.factory<_i126.ClearCacheLikesUseCase>(
      () => _i126.ClearCacheLikesUseCaseImpl(gh<_i106.LikesRepository>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i127.GetLikesStatUseCase>(
      () => _i127.GetLikesStatUseCaseImpl(gh<_i106.LikesRepository>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.factory<_i128.GetLikesUseCase>(
      () => _i128.GetLikesUseCaseImpl(gh<_i106.LikesRepository>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i129.GetProfileAvatarUseCase>(
      () => _i129.GetProfileAvatarUseCaseImpl(
        settingsRepository: gh<_i32.SettingsRepository>(),
        avatarStorageRepository: gh<_i124.AvatarStorageRepository>(),
      ),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i130.GreetingCardsCachedDataSource>(
      () => _i130.GreetingCardsCachedDataSourceImpl(
        remoteDataSource: gh<_i102.GreetingCardsRemoteDataSource>(),
        userService: gh<_i39.UserService>(),
      ),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.factory<_i131.GreetingCardsRepository>(
      () => _i131.GreetingCardsCachedRepository(
        dataSource: gh<_i130.GreetingCardsCachedDataSource>(),
        getApiBaseUrlUseCase: gh<_i51.GetAdminPanelApiBaseUrlUseCase>(),
        service: gh<_i18.MediaContentParsingTagsService>(),
      ),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.factory<_i132.LikesMyCubit>(() => _i132.LikesMyCubit(
          gh<_i128.GetLikesUseCase>(),
          gh<_i126.ClearCacheLikesUseCase>(),
        ));
    gh.factory<_i133.LikesNewCubit>(
        () => _i133.LikesNewCubit(gh<_i118.SendLikeUseCase>()));
    gh.lazySingleton<_i134.NewsCachedDataSource>(
      () => _i134.NewsCachedDataSourceImpl(
          newsRepository: gh<_i109.NewsRemoteDataSource>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i135.SetProfileAvatarUseCase>(
      () => _i135.SetProfileAvatarUseCaseImpl(
        settingsRepository: gh<_i32.SettingsRepository>(),
        avatarStorageRepository: gh<_i124.AvatarStorageRepository>(),
      ),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i136.UsersCachedDataSource>(
      () => _i136.UsersCachedDataSourceImpl(
        gh<_i121.UsersRemoteDataSource>(),
        gh<_i51.GetAdminPanelApiBaseUrlUseCase>(),
      ),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.factory<_i137.UsersRepository>(
      () => _i137.UsersRepositoryImpl(
          dataSource: gh<_i136.UsersCachedDataSource>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.factory<_i138.ClearCacheGreetingTemplatesUseCase>(
      () => _i138.ClearCacheGreetingTemplatesUseCaseImpl(
          gh<_i131.GreetingCardsRepository>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.factory<_i139.ClearCacheUsersUseCase>(
      () => _i139.ClearCacheUsersUseCaseImpl(gh<_i137.UsersRepository>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i140.DeleteProfileAvatarUseCase>(
      () => _i140.DeleteProfileAvatarUseCaseImpl(
        settingsRepository: gh<_i32.SettingsRepository>(),
        avatarStorageRepository: gh<_i124.AvatarStorageRepository>(),
        getProfileAvatarUseCase: gh<_i129.GetProfileAvatarUseCase>(),
      ),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.factory<_i141.GetGreetingTemplatesUseCase>(
      () => _i141.GetGreetingTemplatesUseCaseImpl(
        gh<_i131.GreetingCardsRepository>(),
        gh<_i62.GetRegionSettingsUseCase>(),
      ),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.factory<_i142.GetUsersUseCase>(
      () => _i142.GetUsersUseCaseImpl(gh<_i137.UsersRepository>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.factory<_i143.UserLogInUseCase>(
      () => _i143.UserLogInUseCaseImpl(
        userService: gh<_i39.UserService>(),
        chatsRepository: gh<_i92.ChatsRepository>(),
        settingsRepository: gh<_i32.SettingsRepository>(),
        businessCardRepository: gh<_i47.BusinessCardRepository>(),
        appDocumentsRepository: gh<_i44.AppDocumentsRepository>(),
        removeAllTaskEasAttachmentUseCase:
            gh<_i114.RemoveNotActualTaskEasAttachmentsUseCase>(),
        scopeRepository: gh<_i26.ScopeRepository>(),
        localNotificationsService: gh<_i107.LocalNotificationsService>(),
        deleteProfileAvatarUseCase: gh<_i140.DeleteProfileAvatarUseCase>(),
        clearCacheLikesUseCase: gh<_i126.ClearCacheLikesUseCase>(),
      ),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.factory<_i144.UsersCubit>(() => _i144.UsersCubit(
          gh<_i142.GetUsersUseCase>(),
          gh<_i139.ClearCacheUsersUseCase>(),
        ));
    gh.factory<_i145.OAuthTryLoginUseCase>(
      () => _i145.OAuthTryLoginUseCaseImpl(
        gh<_i89.AuthProvider>(),
        gh<_i143.UserLogInUseCase>(),
        gh<_i70.LogService>(),
      ),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i146.TasksSbsApiService>(
      () => _i146.TasksSbsApiService(
        gh<_i65.GetTasksSbsApiBaseUrlUseCase>(),
        gh<_i11.DioProvider>(),
        gh<_i70.LogService>(),
        gh<_i16.LocaleInterceptor>(),
        gh<_i45.AuthInterceptor>(),
        gh<_i145.OAuthTryLoginUseCase>(),
        gh<_i20.NavigatorKeyProvider>(),
      ),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i147.TasksSbsRemoteDataSource>(
      () => _i147.TasksSbsRemoteDataSourceImpl(
        gh<_i146.TasksSbsApiService>(),
        gh<_i70.LogService>(),
      ),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i148.TasksSummaryApiService>(
      () => _i148.TasksSummaryApiService(
        gh<_i66.GetTasksSummaryApiBaseUrlUseCase>(),
        gh<_i11.DioProvider>(),
        gh<_i70.LogService>(),
        gh<_i16.LocaleInterceptor>(),
        gh<_i45.AuthInterceptor>(),
        gh<_i145.OAuthTryLoginUseCase>(),
        gh<_i20.NavigatorKeyProvider>(),
      ),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i149.TasksVacationRemoteDataSource>(
      () => _i149.TasksVacationRemoteDataSourceImpl(
        gh<_i148.TasksSummaryApiService>(),
        gh<_i70.LogService>(),
      ),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i150.CompleteTaskSbsWeeklyUseCase>(
      () => _i150.CompleteTaskSbsWeeklyUseCaseImpl(
          gh<_i147.TasksSbsRemoteDataSource>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i151.CompleteTaskVacationUseCase>(
      () => _i151.CompleteTaskVacationUseCaseImpl(
          gh<_i149.TasksVacationRemoteDataSource>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i152.CompleteTasksSbsLateUseCase>(
      () => _i152.CompleteTaskSbsLateUseCaseImpl(
          gh<_i147.TasksSbsRemoteDataSource>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i153.TasksEasRemoteDataSource>(
      () => _i153.TasksEasRemoteDataSourceImpl(
        gh<_i148.TasksSummaryApiService>(),
        gh<_i70.LogService>(),
      ),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i154.TasksSbsCachedDataSource>(
      () => _i154.TasksSbsCachedDataSourceImpl(
          gh<_i147.TasksSbsRemoteDataSource>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i155.TasksSbsRepository>(
      () => _i155.TasksSbsRepositoryImpl(
          dataSource: gh<_i154.TasksSbsCachedDataSource>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i156.TasksVacationCachedDataSource>(
      () => _i156.TasksEasCachedDataSourceImpl(
          gh<_i149.TasksVacationRemoteDataSource>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i157.TasksVacationRepository>(
      () => _i158.TasksVacationRepositoryImpl(
          dataSource: gh<_i156.TasksVacationCachedDataSource>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i159.ClearCacheTasksSbsLateUseCase>(
      () => _i159.ClearCacheTasksSbsLateUseCaseImpl(
          gh<_i154.TasksSbsCachedDataSource>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i160.ClearCacheTasksSbsWeeklyUseCase>(
      () => _i160.ClearCacheTasksSbsWeeklyUseCaseImpl(
          gh<_i154.TasksSbsCachedDataSource>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i161.ClearCacheTasksVacationUseCase>(
      () => _i161.ClearCacheTasksVacationUseCaseImpl(
          gh<_i156.TasksVacationCachedDataSource>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i162.CompleteCachedTaskSbsWeeklyUseCase>(
      () => _i162.CompleteCachedTaskSbsWeeklyUseCaseImpl(
          gh<_i155.TasksSbsRepository>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i163.CompleteCachedTaskVacationUseCase>(
      () => _i163.CompleteCachedTaskVacationUseCaseImpl(
          gh<_i157.TasksVacationRepository>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i164.CompleteCachedTasksSbsLateUseCase>(
      () => _i164.CompleteCachedTaskSbsLateUseCaseImpl(
          gh<_i155.TasksSbsRepository>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i165.CompleteTaskEasUseCase>(
      () => _i165.CompleteTaskEasUseCaseImpl(
          gh<_i153.TasksEasRemoteDataSource>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i166.DownloadTaskEasAttachmentUseCase>(
      () => _i166.DownloadTaskEasAttachmentUseCaseImpl(
        gh<_i37.TasksEasAttachmentsRepository>(),
        gh<_i153.TasksEasRemoteDataSource>(),
      ),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i167.GetTasksSbsLateUseCase>(
      () => _i167.GetTasksSbsLateUseCaseImpl(
          gh<_i154.TasksSbsCachedDataSource>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i168.GetTasksSbsWeeklyUseCase>(
      () => _i168.GetTasksSbsWeeklyUseCaseImpl(
          gh<_i154.TasksSbsCachedDataSource>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i169.GetTasksVacationUseCase>(
      () => _i169.GetTasksVacationUseCaseImpl(
          gh<_i156.TasksVacationCachedDataSource>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.factory<_i170.TaskEasAttachmentCubit>(() => _i170.TaskEasAttachmentCubit(
          gh<_i15.InitTaskEasAttachmentsDirectoryUseCase>(),
          gh<_i64.GetTaskEasAttachmentUseCase>(),
          gh<_i166.DownloadTaskEasAttachmentUseCase>(),
          gh<_i24.OpenTaskEasAttachmentUseCase>(),
        ));
    gh.lazySingleton<_i171.TasksEasCachedDataSource>(
      () => _i171.TasksEasCachedDataSourceImpl(
        gh<_i153.TasksEasRemoteDataSource>(),
        gh<_i114.RemoveNotActualTaskEasAttachmentsUseCase>(),
      ),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i172.TasksEasRepository>(
      () => _i172.TasksEasRepositoryImpl(
          dataSource: gh<_i171.TasksEasCachedDataSource>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.factory<_i173.TasksSbsLateCubit>(() => _i173.TasksSbsLateCubit(
          gh<_i167.GetTasksSbsLateUseCase>(),
          gh<_i164.CompleteCachedTasksSbsLateUseCase>(),
          gh<_i152.CompleteTasksSbsLateUseCase>(),
          gh<_i159.ClearCacheTasksSbsLateUseCase>(),
        ));
    gh.factory<_i174.TasksSbsLateSummaryCubit>(
        () => _i174.TasksSbsLateSummaryCubit(
              gh<_i167.GetTasksSbsLateUseCase>(),
              gh<_i159.ClearCacheTasksSbsLateUseCase>(),
              gh<_i155.TasksSbsRepository>(),
              gh<_i70.LogService>(),
            ));
    gh.factory<_i175.TasksSbsWeeklyCubit>(() => _i175.TasksSbsWeeklyCubit(
          gh<_i168.GetTasksSbsWeeklyUseCase>(),
          gh<_i160.ClearCacheTasksSbsWeeklyUseCase>(),
          gh<_i162.CompleteCachedTaskSbsWeeklyUseCase>(),
          gh<_i150.CompleteTaskSbsWeeklyUseCase>(),
        ));
    gh.factory<_i176.TasksSbsWeeklySummaryCubit>(
        () => _i176.TasksSbsWeeklySummaryCubit(
              gh<_i168.GetTasksSbsWeeklyUseCase>(),
              gh<_i160.ClearCacheTasksSbsWeeklyUseCase>(),
              gh<_i155.TasksSbsRepository>(),
              gh<_i70.LogService>(),
            ));
    gh.factory<_i177.TasksVacationCubit>(() => _i177.TasksVacationCubit(
          gh<_i169.GetTasksVacationUseCase>(),
          gh<_i163.CompleteCachedTaskVacationUseCase>(),
          gh<_i151.CompleteTaskVacationUseCase>(),
          gh<_i161.ClearCacheTasksVacationUseCase>(),
        ));
    gh.factory<_i178.TasksVacationSummaryCubit>(
        () => _i178.TasksVacationSummaryCubit(
              gh<_i169.GetTasksVacationUseCase>(),
              gh<_i161.ClearCacheTasksVacationUseCase>(),
              gh<_i157.TasksVacationRepository>(),
              gh<_i70.LogService>(),
            ));
    gh.factory<_i179.UserLogOutUseCase>(
      () => _i179.UserLogOutUseCaseImpl(
        gh<_i92.ChatsRepository>(),
        gh<_i134.NewsCachedDataSource>(),
        gh<_i171.TasksEasCachedDataSource>(),
        gh<_i154.TasksSbsCachedDataSource>(),
        gh<_i156.TasksVacationCachedDataSource>(),
        gh<_i130.GreetingCardsCachedDataSource>(),
        gh<_i39.UserService>(),
        gh<_i89.AuthProvider>(),
        gh<_i26.ScopeRepository>(),
      ),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i180.ClearCacheTasksEasUseCase>(
      () => _i180.ClearCacheTasksEasUseCaseImpl(
          gh<_i171.TasksEasCachedDataSource>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i181.CompleteCachedTaskEasUseCase>(
      () => _i181.CompleteCachedTaskEasUseCaseImpl(
          gh<_i172.TasksEasRepository>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i182.GetTasksEasUseCase>(
      () => _i182.GetTasksEasUseCaseImpl(gh<_i171.TasksEasCachedDataSource>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.factory<_i183.SettingsCubit>(() => _i183.SettingsCubit(
          gh<_i55.GetBillingNotificationSettingsUseCase>(),
          gh<_i57.GetDarkModeSettingsUseCase>(),
          gh<_i63.GetSystemModeSettingsUseCase>(),
          gh<_i62.GetRegionSettingsUseCase>(),
          gh<_i179.UserLogOutUseCase>(),
          gh<_i120.SetBillingNotificationSettingsUseCase>(),
          gh<_i83.ThemeCubit>(),
          gh<_i112.RegionCubit>(),
        ));
    gh.factory<_i184.TasksEasCubit>(() => _i184.TasksEasCubit(
          gh<_i182.GetTasksEasUseCase>(),
          gh<_i181.CompleteCachedTaskEasUseCase>(),
          gh<_i165.CompleteTaskEasUseCase>(),
          gh<_i180.ClearCacheTasksEasUseCase>(),
        ));
    gh.factory<_i185.TasksEasSummaryCubit>(() => _i185.TasksEasSummaryCubit(
          gh<_i182.GetTasksEasUseCase>(),
          gh<_i180.ClearCacheTasksEasUseCase>(),
          gh<_i172.TasksEasRepository>(),
          gh<_i70.LogService>(),
        ));
    gh.factory<_i186.GetBackgroundDataUseCase>(
        () => _i186.GetBackgroundDataUseCase(
              gh<_i168.GetTasksSbsWeeklyUseCase>(),
              gh<_i167.GetTasksSbsLateUseCase>(),
              gh<_i182.GetTasksEasUseCase>(),
              gh<_i169.GetTasksVacationUseCase>(),
            ));
    gh.factory<_i187.AuthCubit>(() => _i187.AuthCubit(
          gh<_i25.PushNotificationsProvider>(),
          gh<_i103.HasCachedAccountUseCase>(),
          gh<_i145.OAuthTryLoginUseCase>(),
          gh<_i70.LogService>(),
          gh<_i62.GetRegionSettingsUseCase>(),
          gh<_i186.GetBackgroundDataUseCase>(),
        ));
    return this;
  }

// initializes the registration of mockScope-scope dependencies inside of GetIt
  _i1.GetIt initMockScopeScope({_i1.ScopeDisposeFunc? dispose}) {
    return _i2.GetItHelper(this).initScope(
      'mockScope',
      dispose: dispose,
      init: (_i2.GetItHelper gh) {
        gh.lazySingleton<_i92.ChatsRepository>(
          () => _i188.ChatsMockRepository(
            gh<_i40.UuidGenerator>(),
            gh<_i39.UserService>(),
          ),
          registerFor: {
            _dev,
            _prod,
          },
        );
        gh.lazySingleton<_i8.NewsRepository>(
          () => _i189.NewsMockRepository(
            service: gh<_i18.MediaContentParsingTagsService>(),
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

// initializes the registration of authScope-scope dependencies inside of GetIt
  _i1.GetIt initAuthScopeScope({_i1.ScopeDisposeFunc? dispose}) {
    return _i2.GetItHelper(this).initScope(
      'authScope',
      dispose: dispose,
      init: (_i2.GetItHelper gh) {
        gh.factory<_i8.NewsRepository>(
          () => _i190.NewsCachedRepository(
            dataSource: gh<_i134.NewsCachedDataSource>(),
            getApiBaseUrlUseCase: gh<_i51.GetAdminPanelApiBaseUrlUseCase>(),
            service: gh<_i18.MediaContentParsingTagsService>(),
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

class _$AppModule extends _i191.AppModule {}
