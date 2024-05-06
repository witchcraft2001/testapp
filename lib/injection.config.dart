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
    as _i46;
import 'package:terralinkapp/core/http/interceptors/locale_interceptor.dart'
    as _i17;
import 'package:terralinkapp/core/http/overrides/api_http_overrides.dart'
    as _i88;
import 'package:terralinkapp/core/http/providers/dio_provider.dart' as _i11;
import 'package:terralinkapp/core/navigation/app_navigation_service.dart'
    as _i193;
import 'package:terralinkapp/core/navigation/navigator_key_provider.dart'
    as _i18;
import 'package:terralinkapp/core/notifications/providers/push_notifications_provider.dart'
    as _i24;
import 'package:terralinkapp/core/notifications/repositories/app_remote_messages_repository.dart'
    as _i6;
import 'package:terralinkapp/core/notifications/services/local_notifications_service.dart'
    as _i107;
import 'package:terralinkapp/core/notifications/services/timezone_service.dart'
    as _i38;
import 'package:terralinkapp/core/repositories/di_scope_repository.dart'
    as _i26;
import 'package:terralinkapp/core/repositories/scope_repository.dart' as _i25;
import 'package:terralinkapp/core/services/admin_panel_api_service.dart'
    as _i87;
import 'package:terralinkapp/core/services/app_parsing_tags_service.dart'
    as _i5;
import 'package:terralinkapp/core/services/converters/businesscard_to_vcard_converter.dart'
    as _i49;
import 'package:terralinkapp/core/services/features_guard_service.dart'
    as _i180;
import 'package:terralinkapp/core/services/log_service.dart' as _i70;
import 'package:terralinkapp/core/services/user_service/user_service.dart'
    as _i39;
import 'package:terralinkapp/core/services/websocket_service.dart' as _i84;
import 'package:terralinkapp/core/theme/domain/cubits/theme_cubit.dart' as _i83;
import 'package:terralinkapp/di/modules/app_module.dart' as _i208;
import 'package:terralinkapp/features/about/domain/use_cases/get_app_info_use_case.dart'
    as _i13;
import 'package:terralinkapp/features/about/presentation/cubits/about_cubit.dart'
    as _i42;
import 'package:terralinkapp/features/api_settings/data/data_sources/api_settings_presets_data_source.dart'
    as _i3;
import 'package:terralinkapp/features/api_settings/data/providers/api_settings_provider.dart'
    as _i43;
import 'package:terralinkapp/features/api_settings/data/repositories/api_settings_presets_repository.dart'
    as _i4;
import 'package:terralinkapp/features/auth/data/providers/auth_provider.dart'
    as _i89;
import 'package:terralinkapp/features/auth/domain/use_cases/clear_data_admin_panel_use_case.dart'
    as _i148;
import 'package:terralinkapp/features/auth/domain/use_cases/clear_data_internal_systems_use_case.dart'
    as _i195;
import 'package:terralinkapp/features/auth/domain/use_cases/get_background_data_use_case.dart'
    as _i202;
import 'package:terralinkapp/features/auth/domain/use_cases/has_cached_account_use_case.dart'
    as _i103;
import 'package:terralinkapp/features/auth/domain/use_cases/login_user_use_case.dart'
    as _i155;
import 'package:terralinkapp/features/auth/domain/use_cases/logout_user_use_case.dart'
    as _i198;
import 'package:terralinkapp/features/auth/domain/use_cases/oauth_try_login_use_case.dart'
    as _i156;
import 'package:terralinkapp/features/auth/domain/use_cases/refresh_auth_settings_use_case.dart'
    as _i112;
import 'package:terralinkapp/features/auth/presentation/cubits/auth_cubit.dart'
    as _i204;
import 'package:terralinkapp/features/business_cards/data/data_sources/business_card_db_data_source.dart'
    as _i47;
import 'package:terralinkapp/features/business_cards/data/repositories/business_card_repository.dart'
    as _i48;
import 'package:terralinkapp/features/business_cards/domain/use_cases/get_all_business_cards_use_case.dart'
    as _i55;
import 'package:terralinkapp/features/business_cards/domain/use_cases/get_business_card_by_id_use_case.dart'
    as _i58;
import 'package:terralinkapp/features/business_cards/domain/use_cases/get_vcard_from_business_card_use_case.dart'
    as _i68;
import 'package:terralinkapp/features/business_cards/domain/use_cases/remove_business_card_by_id_use_case.dart'
    as _i73;
import 'package:terralinkapp/features/business_cards/domain/use_cases/save_business_card_use_case.dart'
    as _i75;
import 'package:terralinkapp/features/business_cards/domain/use_cases/save_vcard_file_from_business_card_use_case.dart'
    as _i76;
import 'package:terralinkapp/features/business_cards/domain/use_cases/share_vcard_from_bussiness_card_use_case.dart'
    as _i82;
import 'package:terralinkapp/features/business_cards/presentation/list/cubits/business_cards_list_cubit.dart'
    as _i91;
import 'package:terralinkapp/features/business_cards/presentation/show/cubits/business_card_show_cubit.dart'
    as _i90;
import 'package:terralinkapp/features/chats/data/data_sources/chat_messages_db_data_source.dart'
    as _i50;
import 'package:terralinkapp/features/chats/data/data_sources/chat_messages_remote_data_source.dart'
    as _i92;
import 'package:terralinkapp/features/chats/data/data_sources/chats_db_data_source.dart'
    as _i51;
import 'package:terralinkapp/features/chats/data/providers/uuid_generator.dart'
    as _i40;
import 'package:terralinkapp/features/chats/data/repositories/chats_mock_repository.dart'
    as _i205;
import 'package:terralinkapp/features/chats/data/repositories/chats_remote_repository.dart'
    as _i94;
import 'package:terralinkapp/features/chats/data/repositories/chats_repository.dart'
    as _i93;
import 'package:terralinkapp/features/chats/domain/use_cases/chat/clear_chat_history_use_case.dart'
    as _i95;
import 'package:terralinkapp/features/chats/domain/use_cases/chat/get_all_messages_by_chat_id_use_case.dart'
    as _i97;
import 'package:terralinkapp/features/chats/domain/use_cases/chat/get_chat_info_by_id_use_case.dart'
    as _i100;
import 'package:terralinkapp/features/chats/domain/use_cases/chat/remove_message_by_id_use_case.dart'
    as _i114;
import 'package:terralinkapp/features/chats/domain/use_cases/chat/reset_new_messages_use_case.dart'
    as _i117;
import 'package:terralinkapp/features/chats/domain/use_cases/chat/send_chat_message_use_case.dart'
    as _i118;
import 'package:terralinkapp/features/chats/domain/use_cases/chat/send_form_chat_message_use_case.dart'
    as _i119;
import 'package:terralinkapp/features/chats/domain/use_cases/chat/send_menu_item_chat_message_use_case.dart'
    as _i121;
import 'package:terralinkapp/features/chats/domain/use_cases/chat/vote_chat_message_use_case.dart'
    as _i125;
import 'package:terralinkapp/features/chats/domain/use_cases/chats/get_chat_feed_observable_use_case.dart'
    as _i98;
import 'package:terralinkapp/features/chats/domain/use_cases/chats/get_chat_feed_use_case.dart'
    as _i99;
import 'package:terralinkapp/features/chats/domain/use_cases/chats/request_chats_use_case.dart'
    as _i116;
import 'package:terralinkapp/features/chats/presentation/chat/cubits/chat_cubit.dart'
    as _i127;
import 'package:terralinkapp/features/chats/presentation/chats/cubits/chats_cubit.dart'
    as _i128;
import 'package:terralinkapp/features/feedback/domain/use_cases/send_feedback_use_case.dart'
    as _i29;
import 'package:terralinkapp/features/greeting_cards/data/data_sources/greeting_cards_cached_data_source.dart'
    as _i133;
import 'package:terralinkapp/features/greeting_cards/data/data_sources/greeting_cards_remote_data_source.dart'
    as _i102;
import 'package:terralinkapp/features/greeting_cards/data/repositories/greeting_cards_repository.dart'
    as _i134;
import 'package:terralinkapp/features/greeting_cards/domain/use_cases/clear_cache_greeting_templates_use_case.dart'
    as _i145;
import 'package:terralinkapp/features/greeting_cards/domain/use_cases/get_greeting_templates_use_case.dart'
    as _i150;
import 'package:terralinkapp/features/greeting_cards/domain/use_cases/init_greetings_card_directory_use_case.dart'
    as _i15;
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
    as _i129;
import 'package:terralinkapp/features/likes/common/domain/use_cases/get_likes_stat_use_case.dart'
    as _i130;
import 'package:terralinkapp/features/likes/common/domain/use_cases/get_likes_use_case.dart'
    as _i131;
import 'package:terralinkapp/features/likes/common/domain/use_cases/send_like_use_case.dart'
    as _i120;
import 'package:terralinkapp/features/likes/my/presentation/cubits/likes_my_cubit.dart'
    as _i135;
import 'package:terralinkapp/features/likes/new/presentation/cubits/likes_new_cubit.dart'
    as _i136;
import 'package:terralinkapp/features/media_content/domain/use_cases/send_email_use_case.dart'
    as _i28;
import 'package:terralinkapp/features/news/data/data_sources/news_cached_data_source.dart'
    as _i137;
import 'package:terralinkapp/features/news/data/data_sources/news_remote_data_source.dart'
    as _i109;
import 'package:terralinkapp/features/news/data/repositories/news_cached_repository.dart'
    as _i207;
import 'package:terralinkapp/features/news/data/repositories/news_mock_repository.dart'
    as _i206;
import 'package:terralinkapp/features/news/data/repositories/news_repository.dart'
    as _i8;
import 'package:terralinkapp/features/news/domain/use_cases/clear_cache_news_use_case.dart'
    as _i7;
import 'package:terralinkapp/features/news/domain/use_cases/get_all_news_use_case.dart'
    as _i101;
import 'package:terralinkapp/features/news/presentation/cubits/news_cubit.dart'
    as _i108;
import 'package:terralinkapp/features/onboarding/data/repositories/onboarding_mock_repository.dart'
    as _i21;
import 'package:terralinkapp/features/onboarding/domain/repositories/onboarding_repository.dart'
    as _i20;
import 'package:terralinkapp/features/onboarding/domain/use_cases/get_onboarding_available_status_use_case.dart'
    as _i165;
import 'package:terralinkapp/features/onboarding/domain/use_cases/get_onboarding_special_sections_use_case.dart'
    as _i60;
import 'package:terralinkapp/features/onboarding/domain/use_cases/get_onboarding_stages_sections_use_case.dart'
    as _i61;
import 'package:terralinkapp/features/onboarding/domain/use_cases/get_onboarding_usefull_materials_use_case.dart'
    as _i62;
import 'package:terralinkapp/features/onboarding/presentation/cubits/onboarding_cubit.dart'
    as _i71;
import 'package:terralinkapp/features/onboarding_stories_content/data/services/onboarding_content_parsing_tags_service.dart'
    as _i19;
import 'package:terralinkapp/features/onboarding_stories_content/domain/use_cases/send_email_use_case.dart'
    as _i27;
import 'package:terralinkapp/features/profile/data/data_sources/file_storage_data_source.dart'
    as _i96;
import 'package:terralinkapp/features/profile/data/data_sources/profile_cached_data_source.dart'
    as _i138;
import 'package:terralinkapp/features/profile/data/data_sources/profile_remote_data_source.dart'
    as _i111;
import 'package:terralinkapp/features/profile/data/repositories/avatar_storage_repository.dart'
    as _i126;
import 'package:terralinkapp/features/profile/data/repositories/profile_repository.dart'
    as _i139;
import 'package:terralinkapp/features/profile/domain/use_cases/clear_cache_profile_use_case.dart'
    as _i146;
import 'package:terralinkapp/features/profile/domain/use_cases/delete_profile_avatar_use_case.dart'
    as _i149;
import 'package:terralinkapp/features/profile/domain/use_cases/get_profile_avatar_use_case.dart'
    as _i132;
import 'package:terralinkapp/features/profile/domain/use_cases/get_profile_use_case.dart'
    as _i151;
import 'package:terralinkapp/features/profile/domain/use_cases/set_profile_avatar_use_case.dart'
    as _i140;
import 'package:terralinkapp/features/profile_documents/data/data_sources/app_documents_db_data_source.dart'
    as _i44;
import 'package:terralinkapp/features/profile_documents/data/repositories/app_documents_repository.dart'
    as _i45;
import 'package:terralinkapp/features/profile_documents/domain/use_cases/add_app_documents_use_case.dart'
    as _i86;
import 'package:terralinkapp/features/profile_documents/domain/use_cases/edit_app_documents_use_case.dart'
    as _i52;
import 'package:terralinkapp/features/profile_documents/domain/use_cases/get_app_documents_use_case.dart'
    as _i56;
import 'package:terralinkapp/features/profile_documents/domain/use_cases/init_case_app_documents_use_case.dart'
    as _i14;
import 'package:terralinkapp/features/profile_documents/domain/use_cases/open_app_document_use_case.dart'
    as _i22;
import 'package:terralinkapp/features/profile_documents/domain/use_cases/remove_case_app_documents_use_case.dart'
    as _i72;
import 'package:terralinkapp/features/profile_documents/domain/use_cases/share_app_documents_use_case.dart'
    as _i33;
import 'package:terralinkapp/features/profile_documents/presentation/cubits/profile_documents_cubit.dart'
    as _i110;
import 'package:terralinkapp/features/region/presentation/cubits/region_cubit.dart'
    as _i113;
import 'package:terralinkapp/features/settings/data/data_sources/settings_data_source.dart'
    as _i31;
import 'package:terralinkapp/features/settings/data/repositories/settings_repository.dart'
    as _i32;
import 'package:terralinkapp/features/settings/domain/use_cases/get_admin_panel_api_base_url_use_case.dart'
    as _i53;
import 'package:terralinkapp/features/settings/domain/use_cases/get_all_api_settings_use_case.dart'
    as _i54;
import 'package:terralinkapp/features/settings/domain/use_cases/get_api_settings_presets_use_case.dart'
    as _i12;
import 'package:terralinkapp/features/settings/domain/use_cases/get_billing_notification_settings_use_case.dart'
    as _i57;
import 'package:terralinkapp/features/settings/domain/use_cases/get_dark_mode_settings_use_case.dart'
    as _i59;
import 'package:terralinkapp/features/settings/domain/use_cases/get_region_settings_use_case.dart'
    as _i63;
import 'package:terralinkapp/features/settings/domain/use_cases/get_system_mode_settings_use_case.dart'
    as _i64;
import 'package:terralinkapp/features/settings/domain/use_cases/get_tasks_sbs_api_base_url_use_case.dart'
    as _i66;
import 'package:terralinkapp/features/settings/domain/use_cases/get_tasks_summary_api_base_url_use_case.dart'
    as _i67;
import 'package:terralinkapp/features/settings/domain/use_cases/get_ws_url_use_case.dart'
    as _i69;
import 'package:terralinkapp/features/settings/domain/use_cases/set_all_api_settings_use_case.dart'
    as _i77;
import 'package:terralinkapp/features/settings/domain/use_cases/set_billing_notification_settings_use_case.dart'
    as _i122;
import 'package:terralinkapp/features/settings/domain/use_cases/set_dark_mode_settings_use_case.dart'
    as _i78;
import 'package:terralinkapp/features/settings/domain/use_cases/set_region_settings_use_case.dart'
    as _i79;
import 'package:terralinkapp/features/settings/domain/use_cases/set_system_mode_settings_use_case.dart'
    as _i80;
import 'package:terralinkapp/features/settings/presentaion/cubits/settings_cubit.dart'
    as _i199;
import 'package:terralinkapp/features/system_settings/data/data_sources/system_settings_cached_data_source.dart'
    as _i141;
import 'package:terralinkapp/features/system_settings/data/data_sources/system_settings_remote_data_source.dart'
    as _i123;
import 'package:terralinkapp/features/system_settings/data/repositories/system_settings_repository.dart'
    as _i142;
import 'package:terralinkapp/features/system_settings/domain/use_cases/get_system_settings_use_case.dart'
    as _i152;
import 'package:terralinkapp/features/system_settings/presentation/cubits/update_cubit.dart'
    as _i203;
import 'package:terralinkapp/features/tasks/common/data/services/tasks_summary_api_service.dart'
    as _i159;
import 'package:terralinkapp/features/tasks/eas/data/data_source/tasks_eas_attachments_db_data_source.dart'
    as _i36;
import 'package:terralinkapp/features/tasks/eas/data/data_source/tasks_eas_cached_data_source.dart'
    as _i185;
import 'package:terralinkapp/features/tasks/eas/data/data_source/tasks_eas_remote_data_source.dart'
    as _i166;
import 'package:terralinkapp/features/tasks/eas/data/repositories/tasks_eas_attachments_repository.dart'
    as _i37;
import 'package:terralinkapp/features/tasks/eas/data/repositories/tasks_eas_repository.dart'
    as _i186;
import 'package:terralinkapp/features/tasks/eas/domain/use_cases/attachments/download_task_eas_attachment_use_case.dart'
    as _i179;
import 'package:terralinkapp/features/tasks/eas/domain/use_cases/attachments/get_task_eas_attachment_use_case.dart'
    as _i65;
import 'package:terralinkapp/features/tasks/eas/domain/use_cases/attachments/init_task_eas_attachments_directory_use_case.dart'
    as _i16;
import 'package:terralinkapp/features/tasks/eas/domain/use_cases/attachments/open_task_eas_attachment_use_case.dart'
    as _i23;
import 'package:terralinkapp/features/tasks/eas/domain/use_cases/attachments/remove_not_actual_task_eas_attachments_use_case.dart'
    as _i115;
import 'package:terralinkapp/features/tasks/eas/domain/use_cases/attachments/remove_task_eas_attachment_use_case.dart'
    as _i74;
import 'package:terralinkapp/features/tasks/eas/domain/use_cases/tasks/clear_cache_tasks_eas_use_case.dart'
    as _i194;
import 'package:terralinkapp/features/tasks/eas/domain/use_cases/tasks/complete_cached_task_eas_use_case.dart'
    as _i196;
import 'package:terralinkapp/features/tasks/eas/domain/use_cases/tasks/complete_task_eas_use_case.dart'
    as _i178;
import 'package:terralinkapp/features/tasks/eas/domain/use_cases/tasks/get_tasks_eas_use_case.dart'
    as _i197;
import 'package:terralinkapp/features/tasks/eas/presentation/cubits/attachment/task_eas_attachment_cubit.dart'
    as _i184;
import 'package:terralinkapp/features/tasks/eas/presentation/cubits/tasks_eas_cubit.dart'
    as _i200;
import 'package:terralinkapp/features/tasks/sbs/data/data_sources/tasks_sbs_cached_data_source.dart'
    as _i167;
import 'package:terralinkapp/features/tasks/sbs/data/data_sources/tasks_sbs_remote_data_source.dart'
    as _i158;
import 'package:terralinkapp/features/tasks/sbs/data/repositories/tasks_sbs_repository.dart'
    as _i168;
import 'package:terralinkapp/features/tasks/sbs/data/services/tasks_sbs_api_service.dart'
    as _i157;
import 'package:terralinkapp/features/tasks/sbs_late/domain/use_cases/clear_cache_tasks_sbs_late_use_case.dart'
    as _i172;
import 'package:terralinkapp/features/tasks/sbs_late/domain/use_cases/complete_cached_tasks_late_sbs_use_case.dart'
    as _i177;
import 'package:terralinkapp/features/tasks/sbs_late/domain/use_cases/complete_tasks_sbs_late_use_case.dart'
    as _i164;
import 'package:terralinkapp/features/tasks/sbs_late/domain/use_cases/get_tasks_sbs_late_use_case.dart'
    as _i181;
import 'package:terralinkapp/features/tasks/sbs_late/presentaion/cubits/tasks_sbs_late_cubit.dart'
    as _i187;
import 'package:terralinkapp/features/tasks/sbs_weekly/domain/use_cases/clear_cache_tasks_sbs_weekly_use_case.dart'
    as _i173;
import 'package:terralinkapp/features/tasks/sbs_weekly/domain/use_cases/complete_cached_task_sbs_weekly_use_case.dart'
    as _i175;
import 'package:terralinkapp/features/tasks/sbs_weekly/domain/use_cases/complete_task_sbs_weekly_use_case.dart'
    as _i162;
import 'package:terralinkapp/features/tasks/sbs_weekly/domain/use_cases/get_tasks_sbs_weekly_use_case.dart'
    as _i182;
import 'package:terralinkapp/features/tasks/sbs_weekly/presentation/cubits/tasks_sbs_weekly_cubit.dart'
    as _i189;
import 'package:terralinkapp/features/tasks/summary/presentation/cubits/tasks_eas_summary_cubit.dart'
    as _i201;
import 'package:terralinkapp/features/tasks/summary/presentation/cubits/tasks_sbs_late_summary_cubit.dart'
    as _i188;
import 'package:terralinkapp/features/tasks/summary/presentation/cubits/tasks_sbs_weekly_summary_cubit.dart'
    as _i190;
import 'package:terralinkapp/features/tasks/summary/presentation/cubits/tasks_vacation_summary_cubit.dart'
    as _i192;
import 'package:terralinkapp/features/tasks/vacations/data/data_sources/tasks_vacation_cached_data_source.dart'
    as _i169;
import 'package:terralinkapp/features/tasks/vacations/data/data_sources/tasks_vacation_remote_data_source.dart'
    as _i160;
import 'package:terralinkapp/features/tasks/vacations/data/repositories/tasks_vacation_cached_repository.dart'
    as _i171;
import 'package:terralinkapp/features/tasks/vacations/data/repositories/tasks_vacation_repository.dart'
    as _i170;
import 'package:terralinkapp/features/tasks/vacations/domain/use_cases/clear_cache_tasks_vacation_use_case.dart'
    as _i174;
import 'package:terralinkapp/features/tasks/vacations/domain/use_cases/complete_cached_task_vacation_use_case.dart'
    as _i176;
import 'package:terralinkapp/features/tasks/vacations/domain/use_cases/complete_task_vacation_use_case.dart'
    as _i163;
import 'package:terralinkapp/features/tasks/vacations/domain/use_cases/get_tasks_vacation_use_case.dart'
    as _i183;
import 'package:terralinkapp/features/tasks/vacations/presentation/cubits/tasks_vacation_cubit.dart'
    as _i191;
import 'package:terralinkapp/features/users/data/data_sources/users_cached_data_source.dart'
    as _i143;
import 'package:terralinkapp/features/users/data/data_sources/users_remote_data_source.dart'
    as _i124;
import 'package:terralinkapp/features/users/data/repositories/users_repository.dart'
    as _i144;
import 'package:terralinkapp/features/users/domain/use_cases/clear_cache_users_use_case.dart'
    as _i147;
import 'package:terralinkapp/features/users/domain/use_cases/get_users_use_case.dart'
    as _i153;
import 'package:terralinkapp/features/users/presentation/cubits/users_cubit.dart'
    as _i161;
import 'package:terralinkapp/features/welcome/data/data_source/local_welcome_data_source.dart'
    as _i41;
import 'package:terralinkapp/features/welcome/domain/use_cases/get_welcome_available_status_use_case.dart'
    as _i154;
import 'package:terralinkapp/features/welcome/domain/use_cases/set_welcome_as_passed_use_case.dart'
    as _i81;
import 'package:terralinkapp/features/welcome/presentation/cubits/welcome_cubit.dart'
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
    gh.factory<_i13.GetAppInfoUseCase>(
      () => _i13.GetAppInfoUseCaseImpl(),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i14.InitAppDocumentsUseCase>(
      () => _i14.InitAppDocumentsInitUseCaseImpl(),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i15.InitGreetingCardsDirectoryUseCase>(
      () => _i15.InitGreetingCardsDirectoryUseCaseImpl(),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i16.InitTaskEasAttachmentsDirectoryUseCase>(
      () => _i16.InitTaskEasAttachmentsDirectoryUseCaseImpl(),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i17.LocaleInterceptor>(() => _i17.LocaleInterceptor());
    gh.lazySingleton<_i18.NavigatorKeyProvider>(
      () => _i18.NavigatorKeyProvider(),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i19.OnboardingContentParsingTagsService>(
      () => _i19.OnboardingContentParsingTagsService(),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i20.OnboardingRepository>(
      () => _i21.OnboardingMockRepository(
          service: gh<_i19.OnboardingContentParsingTagsService>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i22.OpenAppDocumentUseCase>(
      () => _i22.OpenAppDocumentUseCaseImpl(),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i23.OpenTaskEasAttachmentUseCase>(
      () => _i23.OpenTaskEasAttachmentUseCaseImpl(),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i24.PushNotificationsProvider>(
      () => _i24.PushNotificationsProviderImpl(),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i25.ScopeRepository>(
      () => _i26.DiScopeRepository(),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i27.SendEmailUseCase>(
      () => _i27.SendEmailUseCaseImpl(),
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
    gh.factory<_i42.AboutCubit>(
        () => _i42.AboutCubit(gh<_i13.GetAppInfoUseCase>()));
    gh.lazySingleton<_i43.ApiSettingsProvider>(() => _i43.ApiSettingsProvider(
          gh<_i31.SettingsDataSource>(),
          gh<_i9.Constants>(),
        ));
    gh.lazySingleton<_i44.AppDocumentsDbDataSource>(
      () => _i44.AppDocumentsDbDataSourceImpl(gh<_i10.Database>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i45.AppDocumentsRepository>(
      () => _i45.AppDocumentsDbRepositoryImpl(
          dataSource: gh<_i44.AppDocumentsDbDataSource>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i46.AuthInterceptor>(
        () => _i46.AuthInterceptor(gh<_i39.UserService>()));
    gh.lazySingleton<_i47.BusinessCardDbDataSource>(
      () => _i47.BusinessCardDbDataSourceImpl(gh<_i10.Database>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i48.BusinessCardRepository>(
      () => _i48.BusinessCardRepositoryImpl(
          dataSource: gh<_i47.BusinessCardDbDataSource>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.factory<_i49.BusinessCardToVCardConverter>(
        () => _i49.BusinessCardToVCardConverter(gh<_i9.Constants>()));
    gh.lazySingleton<_i50.ChatMessagesDbDataSource>(
      () => _i50.MessagesDbDataSourceImpl(gh<_i10.Database>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i51.ChatsDbDataSource>(
      () => _i51.ChatsDbDataSourceImpl(gh<_i10.Database>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i52.EditAppDocumentUseCase>(
      () => _i52.EditAppDocumentUseCaseImpl(gh<_i45.AppDocumentsRepository>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.factory<_i53.GetAdminPanelApiBaseUrlUseCase>(() =>
        _i53.GetAdminPanelApiBaseUrlUseCase(gh<_i43.ApiSettingsProvider>()));
    gh.factory<_i54.GetAllApiSettingsUseCase>(
        () => _i54.GetAllApiSettingsUseCase(gh<_i43.ApiSettingsProvider>()));
    gh.lazySingleton<_i55.GetAllBusinessCardsUseCase>(
      () => _i55.GetAllBusinessCardsUseCaseImpl(
          gh<_i48.BusinessCardRepository>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i56.GetAppDocumentsUseCase>(
      () => _i56.GetAppDocumentsUseCaseImpl(gh<_i45.AppDocumentsRepository>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i57.GetBillingNotificationSettingsUseCase>(
      () => _i57.GetBillingNotificationSettingsUseCaseImpl(
          gh<_i31.SettingsDataSource>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i58.GetBusinessCardByIdUseCase>(
      () => _i58.GetBusinessCardByIdUseCaseImpl(
          gh<_i48.BusinessCardRepository>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i59.GetDarkModeSettingsUseCase>(
      () => _i59.GetDarkModeSettingsUseCaseImpl(gh<_i31.SettingsDataSource>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.factory<_i60.GetOnboardingSpecialSelectionsUseCase>(
      () => _i60.GetOnboardingSpecialSelectionsUseCaseImpl(
          onboardingRepository: gh<_i20.OnboardingRepository>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.factory<_i61.GetOnboardingStagesSelectionsUseCase>(
      () => _i61.GetOnboardingStagesSelectionsUseCaseImpl(
          onboardingRepository: gh<_i20.OnboardingRepository>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.factory<_i62.GetOnboardingUsefullMaterialsUseCase>(
      () => _i62.GetOnboardingUsefullMaterialsUseCaseImpl(
          onboardingRepository: gh<_i20.OnboardingRepository>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i63.GetRegionSettingsUseCase>(
      () => _i63.GetRegionSettingsUseCaseImpl(gh<_i31.SettingsDataSource>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i64.GetSystemModeSettingsUseCase>(
      () =>
          _i64.GetSystemModeSettingsUseCaseImpl(gh<_i31.SettingsDataSource>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i65.GetTaskEasAttachmentUseCase>(
      () => _i65.GetTaskEasAttachmentUseCaseImpl(
          gh<_i37.TasksEasAttachmentsRepository>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.factory<_i66.GetTasksSbsApiBaseUrlUseCase>(() =>
        _i66.GetTasksSbsApiBaseUrlUseCase(gh<_i43.ApiSettingsProvider>()));
    gh.factory<_i67.GetTasksSummaryApiBaseUrlUseCase>(() =>
        _i67.GetTasksSummaryApiBaseUrlUseCase(gh<_i43.ApiSettingsProvider>()));
    gh.factory<_i68.GetVCardFromBusinessCardUseCase>(() =>
        _i68.GetVCardFromBusinessCardUseCase(
            gh<_i49.BusinessCardToVCardConverter>()));
    gh.factory<_i69.GetWsUrlUseCase>(
        () => _i69.GetWsUrlUseCase(gh<_i43.ApiSettingsProvider>()));
    gh.lazySingleton<_i70.LogService>(
      () => _i70.LogService(gh<_i39.UserService>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.factory<_i71.OnboardingCubit>(() => _i71.OnboardingCubit(
          gh<_i60.GetOnboardingSpecialSelectionsUseCase>(),
          gh<_i61.GetOnboardingStagesSelectionsUseCase>(),
          gh<_i62.GetOnboardingUsefullMaterialsUseCase>(),
        ));
    gh.lazySingleton<_i72.RemoveAppDocumentUseCase>(
      () =>
          _i72.RemoveAppDocumentUseCaseImpl(gh<_i45.AppDocumentsRepository>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i73.RemoveBusinessCardByIdUseCase>(
      () => _i73.RemoveBusinessCardByIdUseCaseImpl(
          gh<_i48.BusinessCardRepository>()),
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
      () => _i75.SaveBusinessCardUseCaseImpl(gh<_i48.BusinessCardRepository>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.factory<_i76.SaveVCardFileFromBusinessCardUseCase>(() =>
        _i76.SaveVCardFileFromBusinessCardUseCase(
            gh<_i68.GetVCardFromBusinessCardUseCase>()));
    gh.factory<_i77.SetAllApiSettingsUseCase>(
        () => _i77.SetAllApiSettingsUseCase(gh<_i43.ApiSettingsProvider>()));
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
        gh<_i59.GetDarkModeSettingsUseCase>(),
        gh<_i78.SetDarkModeSettingsUseCase>(),
        gh<_i64.GetSystemModeSettingsUseCase>(),
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
        gh<_i24.PushNotificationsProvider>(),
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
          _i86.AddAppDocumentsAddUseCaseImpl(gh<_i45.AppDocumentsRepository>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i87.AdminPanelApiService>(
      () => _i87.AdminPanelApiService(
        gh<_i11.DioProvider>(),
        gh<_i70.LogService>(),
        gh<_i53.GetAdminPanelApiBaseUrlUseCase>(),
      ),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i88.ApiHttpOverrides>(
      () => _i88.ApiHttpOverrides(gh<_i53.GetAdminPanelApiBaseUrlUseCase>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i89.AuthProvider>(
      () => _i89.AuthProvider(
        gh<_i9.Constants>(),
        gh<_i18.NavigatorKeyProvider>(),
        gh<_i54.GetAllApiSettingsUseCase>(),
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
          gh<_i58.GetBusinessCardByIdUseCase>(),
          gh<_i70.LogService>(),
          gh<_i82.ShareVCardFromBusinessCardUseCase>(),
          gh<_i68.GetVCardFromBusinessCardUseCase>(),
        ));
    gh.factory<_i91.BusinessCardsListCubit>(() => _i91.BusinessCardsListCubit(
          gh<_i55.GetAllBusinessCardsUseCase>(),
          gh<_i73.RemoveBusinessCardByIdUseCase>(),
          gh<_i82.ShareVCardFromBusinessCardUseCase>(),
          gh<_i70.LogService>(),
        ));
    gh.lazySingleton<_i92.ChatMessagesRemoteDataSource>(
      () => _i92.ChatMessagesRemoteDataSourceImpl(
        gh<_i87.AdminPanelApiService>(),
        gh<_i39.UserService>(),
        gh<_i70.LogService>(),
      ),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i93.ChatsRepository>(
      () => _i94.ChatsRemoteRepository(
        gh<_i84.WebsocketService>(),
        gh<_i51.ChatsDbDataSource>(),
        gh<_i50.ChatMessagesDbDataSource>(),
        gh<_i92.ChatMessagesRemoteDataSource>(),
        gh<_i40.UuidGenerator>(),
        gh<_i39.UserService>(),
        gh<_i70.LogService>(),
      ),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.factory<_i95.ClearChatHistoryUseCase>(
        () => _i95.ClearChatHistoryUseCase(gh<_i93.ChatsRepository>()));
    gh.lazySingleton<_i96.FileStorageDataSource>(
      () => _i96.FileStorageDataSourceImpl(logService: gh<_i70.LogService>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i97.GetAllMessagesByChatIdUseCase>(
      () => _i97.GetAllMessagesByChatIdUseCaseImpl(gh<_i93.ChatsRepository>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i98.GetChatFeedObservableUseCase>(
      () => _i98.GetChatFeedObservableUseCaseImpl(gh<_i93.ChatsRepository>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i99.GetChatFeedUseCase>(
      () => _i99.GetChatFeedUseCaseImpl(gh<_i93.ChatsRepository>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i100.GetChatInfoByIdUseCase>(
      () => _i100.GetChatInfoByIdUseCaseImpl(gh<_i93.ChatsRepository>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.factory<_i101.GetNewsUseCase>(
      () => _i101.GetNewsUseCaseImpl(
        gh<_i8.NewsRepository>(),
        gh<_i63.GetRegionSettingsUseCase>(),
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
        gh<_i53.GetAdminPanelApiBaseUrlUseCase>(),
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
        gh<_i18.NavigatorKeyProvider>(),
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
          gh<_i14.InitAppDocumentsUseCase>(),
          gh<_i56.GetAppDocumentsUseCase>(),
          gh<_i86.AddAppDocumentsUseCase>(),
          gh<_i72.RemoveAppDocumentUseCase>(),
          gh<_i52.EditAppDocumentUseCase>(),
          gh<_i33.ShareAppDocumentsUseCase>(),
          gh<_i22.OpenAppDocumentUseCase>(),
        ));
    gh.lazySingleton<_i111.ProfileRemoteDataSource>(
      () => _i111.ProfileRemoteDataSourceImpl(
        gh<_i87.AdminPanelApiService>(),
        gh<_i39.UserService>(),
        gh<_i70.LogService>(),
      ),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.factory<_i112.RefreshAuthSettingsUseCase>(
        () => _i112.RefreshAuthSettingsUseCase(gh<_i89.AuthProvider>()));
    gh.lazySingleton<_i113.RegionCubit>(
      () => _i113.RegionCubit(
        gh<_i63.GetRegionSettingsUseCase>(),
        gh<_i79.SetRegionSettingsUseCase>(),
      ),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i114.RemoveMessageByIdUseCase>(
      () => _i114.RemoveMessageByIdUseCaseImpl(gh<_i93.ChatsRepository>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i115.RemoveNotActualTaskEasAttachmentsUseCase>(
      () => _i115.RemoveNotActualTaskEasAttachmentsUseCaseImpl(
        gh<_i37.TasksEasAttachmentsRepository>(),
        gh<_i74.RemoveTaskEasAttachmentUseCase>(),
      ),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i116.RequestChatsUseCase>(
      () => _i116.RequestChatsUseCaseImpl(gh<_i93.ChatsRepository>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i117.ResetNewMessagesUseCase>(
      () => _i117.ResetNewMessagesUseCaseImpl(gh<_i93.ChatsRepository>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i118.SendChatMessageUseCase>(
      () => _i118.SendChatMessageUseCaseImpl(gh<_i93.ChatsRepository>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i119.SendFormChatMessageUseCase>(
      () => _i119.SendFormChatMessageUseCaseImpl(gh<_i93.ChatsRepository>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i120.SendLikeUseCase>(
      () => _i120.SendLikeUseCaseImpl(gh<_i106.LikesRepository>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i121.SendMenuItemChatMessageUseCase>(
      () =>
          _i121.SendMenuItemChatMessageUseCaseImpl(gh<_i93.ChatsRepository>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i122.SetBillingNotificationSettingsUseCase>(
      () => _i122.SetBillingNotificationSettingsUseCaseImpl(
        gh<_i31.SettingsDataSource>(),
        gh<_i107.LocalNotificationsService>(),
      ),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i123.SystemSettingsRemoteDataSource>(
      () => _i123.SystemSettingsRemoteDataSourceImpl(
        gh<_i87.AdminPanelApiService>(),
        gh<_i70.LogService>(),
      ),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i124.UsersRemoteDataSource>(
      () => _i124.UsersRemoteDataSourceImpl(
        gh<_i87.AdminPanelApiService>(),
        gh<_i70.LogService>(),
      ),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i125.VoteChatMessageUseCase>(
      () => _i125.VoteChatMessageUseCaseImpl(gh<_i93.ChatsRepository>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i126.AvatarStorageRepository>(
      () => _i126.AvatarStorageRepositoryImpl(
          dataSource: gh<_i96.FileStorageDataSource>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.factory<_i127.ChatCubit>(() => _i127.ChatCubit(
          gh<_i98.GetChatFeedObservableUseCase>(),
          gh<_i99.GetChatFeedUseCase>(),
          gh<_i100.GetChatInfoByIdUseCase>(),
          gh<_i97.GetAllMessagesByChatIdUseCase>(),
          gh<_i93.ChatsRepository>(),
          gh<_i39.UserService>(),
          gh<_i118.SendChatMessageUseCase>(),
          gh<_i121.SendMenuItemChatMessageUseCase>(),
          gh<_i125.VoteChatMessageUseCase>(),
          gh<_i117.ResetNewMessagesUseCase>(),
          gh<_i114.RemoveMessageByIdUseCase>(),
          gh<_i119.SendFormChatMessageUseCase>(),
          gh<_i70.LogService>(),
        ));
    gh.factory<_i128.ChatsCubit>(() => _i128.ChatsCubit(
          gh<_i116.RequestChatsUseCase>(),
          gh<_i98.GetChatFeedObservableUseCase>(),
          gh<_i99.GetChatFeedUseCase>(),
        ));
    gh.factory<_i129.ClearCacheLikesUseCase>(
      () => _i129.ClearCacheLikesUseCaseImpl(gh<_i106.LikesRepository>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i130.GetLikesStatUseCase>(
      () => _i130.GetLikesStatUseCaseImpl(gh<_i106.LikesRepository>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.factory<_i131.GetLikesUseCase>(
      () => _i131.GetLikesUseCaseImpl(gh<_i106.LikesRepository>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i132.GetProfileAvatarUseCase>(
      () => _i132.GetProfileAvatarUseCaseImpl(
        settingsRepository: gh<_i32.SettingsRepository>(),
        avatarStorageRepository: gh<_i126.AvatarStorageRepository>(),
      ),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i133.GreetingCardsCachedDataSource>(
      () => _i133.GreetingCardsCachedDataSourceImpl(
        remoteDataSource: gh<_i102.GreetingCardsRemoteDataSource>(),
        userService: gh<_i39.UserService>(),
      ),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.factory<_i134.GreetingCardsRepository>(
      () => _i134.GreetingCardsCachedRepository(
        dataSource: gh<_i133.GreetingCardsCachedDataSource>(),
        getApiBaseUrlUseCase: gh<_i53.GetAdminPanelApiBaseUrlUseCase>(),
      ),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.factory<_i135.LikesMyCubit>(() => _i135.LikesMyCubit(
          gh<_i131.GetLikesUseCase>(),
          gh<_i129.ClearCacheLikesUseCase>(),
        ));
    gh.factory<_i136.LikesNewCubit>(
        () => _i136.LikesNewCubit(gh<_i120.SendLikeUseCase>()));
    gh.lazySingleton<_i137.NewsCachedDataSource>(
      () => _i137.NewsCachedDataSourceImpl(
          newsRepository: gh<_i109.NewsRemoteDataSource>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i138.ProfileCachedDataSource>(
      () => _i138.ProfileCachedDataSourceImpl(
          gh<_i111.ProfileRemoteDataSource>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i139.ProfileRepository>(
      () => _i139.ProfileRepositoryImpl(
        gh<_i138.ProfileCachedDataSource>(),
        gh<_i53.GetAdminPanelApiBaseUrlUseCase>(),
      ),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i140.SetProfileAvatarUseCase>(
      () => _i140.SetProfileAvatarUseCaseImpl(
        settingsRepository: gh<_i32.SettingsRepository>(),
        avatarStorageRepository: gh<_i126.AvatarStorageRepository>(),
      ),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i141.SystemSettingsCachedDataSource>(
      () => _i141.SystemSettingsCachedDataSourceImpl(
          gh<_i123.SystemSettingsRemoteDataSource>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i142.SystemSettingsRepository>(
      () => _i142.SystemSettingsRepositoryImpl(
          gh<_i141.SystemSettingsCachedDataSource>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i143.UsersCachedDataSource>(
      () => _i143.UsersCachedDataSourceImpl(
        gh<_i124.UsersRemoteDataSource>(),
        gh<_i53.GetAdminPanelApiBaseUrlUseCase>(),
      ),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.factory<_i144.UsersRepository>(
      () => _i144.UsersRepositoryImpl(
          dataSource: gh<_i143.UsersCachedDataSource>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.factory<_i145.ClearCacheGreetingTemplatesUseCase>(
      () => _i145.ClearCacheGreetingTemplatesUseCaseImpl(
          gh<_i134.GreetingCardsRepository>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i146.ClearCacheProfileUseCase>(
      () => _i146.ClearCacheProfileUseCaseImpl(gh<_i139.ProfileRepository>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.factory<_i147.ClearCacheUsersUseCase>(
      () => _i147.ClearCacheUsersUseCaseImpl(gh<_i144.UsersRepository>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.factory<_i148.ClearDataAdminPanelUseCase>(
      () => _i148.ClearDataAdminPanelUseCaseImpl(
        gh<_i7.ClearCacheNewsUseCase>(),
        gh<_i129.ClearCacheLikesUseCase>(),
        gh<_i145.ClearCacheGreetingTemplatesUseCase>(),
        gh<_i146.ClearCacheProfileUseCase>(),
      ),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i149.DeleteProfileAvatarUseCase>(
      () => _i149.DeleteProfileAvatarUseCaseImpl(
        settingsRepository: gh<_i32.SettingsRepository>(),
        avatarStorageRepository: gh<_i126.AvatarStorageRepository>(),
        getProfileAvatarUseCase: gh<_i132.GetProfileAvatarUseCase>(),
      ),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.factory<_i150.GetGreetingTemplatesUseCase>(
      () => _i150.GetGreetingTemplatesUseCaseImpl(
        gh<_i134.GreetingCardsRepository>(),
        gh<_i63.GetRegionSettingsUseCase>(),
      ),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.factory<_i151.GetProfileUseCase>(
      () => _i151.GetProfileUseCaseImpl(gh<_i139.ProfileRepository>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.factory<_i152.GetSystemSettingsUseCase>(
      () => _i152.GetSystemSettingsUseCaseImpl(
          gh<_i142.SystemSettingsRepository>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.factory<_i153.GetUsersUseCase>(
      () => _i153.GetUsersUseCaseImpl(gh<_i144.UsersRepository>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.factory<_i154.GetWelcomeAvailableStatusUseCase>(
      () => _i154.GetWelcomeAvailableUseCaseLocalImpl(
        gh<_i41.WelcomeDataSource>(),
        gh<_i32.SettingsRepository>(),
        gh<_i151.GetProfileUseCase>(),
      ),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.factory<_i155.LoginUserUseCase>(
      () => _i155.LoginUserUseCaseImpl(
        userService: gh<_i39.UserService>(),
        chatsRepository: gh<_i93.ChatsRepository>(),
        settingsRepository: gh<_i32.SettingsRepository>(),
        businessCardRepository: gh<_i48.BusinessCardRepository>(),
        appDocumentsRepository: gh<_i45.AppDocumentsRepository>(),
        removeAllTaskEasAttachmentUseCase:
            gh<_i115.RemoveNotActualTaskEasAttachmentsUseCase>(),
        scopeRepository: gh<_i25.ScopeRepository>(),
        localNotificationsService: gh<_i107.LocalNotificationsService>(),
        deleteProfileAvatarUseCase: gh<_i149.DeleteProfileAvatarUseCase>(),
        clearCacheLikesUseCase: gh<_i129.ClearCacheLikesUseCase>(),
      ),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.factory<_i156.OAuthTryLoginUseCase>(
      () => _i156.OAuthTryLoginUseCaseImpl(
        gh<_i89.AuthProvider>(),
        gh<_i155.LoginUserUseCase>(),
        gh<_i70.LogService>(),
      ),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i157.TasksSbsApiService>(
      () => _i157.TasksSbsApiService(
        gh<_i66.GetTasksSbsApiBaseUrlUseCase>(),
        gh<_i11.DioProvider>(),
        gh<_i70.LogService>(),
        gh<_i17.LocaleInterceptor>(),
        gh<_i46.AuthInterceptor>(),
        gh<_i156.OAuthTryLoginUseCase>(),
        gh<_i18.NavigatorKeyProvider>(),
      ),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i158.TasksSbsRemoteDataSource>(
      () => _i158.TasksSbsRemoteDataSourceImpl(
        gh<_i157.TasksSbsApiService>(),
        gh<_i70.LogService>(),
      ),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i159.TasksSummaryApiService>(
      () => _i159.TasksSummaryApiService(
        gh<_i67.GetTasksSummaryApiBaseUrlUseCase>(),
        gh<_i11.DioProvider>(),
        gh<_i70.LogService>(),
        gh<_i17.LocaleInterceptor>(),
        gh<_i46.AuthInterceptor>(),
        gh<_i156.OAuthTryLoginUseCase>(),
        gh<_i18.NavigatorKeyProvider>(),
      ),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i160.TasksVacationRemoteDataSource>(
      () => _i160.TasksVacationRemoteDataSourceImpl(
        gh<_i159.TasksSummaryApiService>(),
        gh<_i70.LogService>(),
      ),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.factory<_i161.UsersCubit>(() => _i161.UsersCubit(
          gh<_i153.GetUsersUseCase>(),
          gh<_i147.ClearCacheUsersUseCase>(),
        ));
    gh.lazySingleton<_i162.CompleteTaskSbsWeeklyUseCase>(
      () => _i162.CompleteTaskSbsWeeklyUseCaseImpl(
          gh<_i158.TasksSbsRemoteDataSource>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i163.CompleteTaskVacationUseCase>(
      () => _i163.CompleteTaskVacationUseCaseImpl(
          gh<_i160.TasksVacationRemoteDataSource>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i164.CompleteTasksSbsLateUseCase>(
      () => _i164.CompleteTaskSbsLateUseCaseImpl(
          gh<_i158.TasksSbsRemoteDataSource>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.factory<_i165.GetOnboardingAvailableStatusUseCase>(
      () => _i165.GetOnboardingAvailableStatusUseCaseImpl(
        gh<_i32.SettingsRepository>(),
        gh<_i151.GetProfileUseCase>(),
      ),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i166.TasksEasRemoteDataSource>(
      () => _i166.TasksEasRemoteDataSourceImpl(
        gh<_i159.TasksSummaryApiService>(),
        gh<_i70.LogService>(),
      ),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i167.TasksSbsCachedDataSource>(
      () => _i167.TasksSbsCachedDataSourceImpl(
          gh<_i158.TasksSbsRemoteDataSource>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i168.TasksSbsRepository>(
      () => _i168.TasksSbsRepositoryImpl(
          dataSource: gh<_i167.TasksSbsCachedDataSource>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i169.TasksVacationCachedDataSource>(
      () => _i169.TasksEasCachedDataSourceImpl(
          gh<_i160.TasksVacationRemoteDataSource>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i170.TasksVacationRepository>(
      () => _i171.TasksVacationRepositoryImpl(
          dataSource: gh<_i169.TasksVacationCachedDataSource>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i172.ClearCacheTasksSbsLateUseCase>(
      () => _i172.ClearCacheTasksSbsLateUseCaseImpl(
          gh<_i167.TasksSbsCachedDataSource>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i173.ClearCacheTasksSbsWeeklyUseCase>(
      () => _i173.ClearCacheTasksSbsWeeklyUseCaseImpl(
          gh<_i167.TasksSbsCachedDataSource>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i174.ClearCacheTasksVacationUseCase>(
      () => _i174.ClearCacheTasksVacationUseCaseImpl(
          gh<_i169.TasksVacationCachedDataSource>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i175.CompleteCachedTaskSbsWeeklyUseCase>(
      () => _i175.CompleteCachedTaskSbsWeeklyUseCaseImpl(
          gh<_i168.TasksSbsRepository>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i176.CompleteCachedTaskVacationUseCase>(
      () => _i176.CompleteCachedTaskVacationUseCaseImpl(
          gh<_i170.TasksVacationRepository>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i177.CompleteCachedTasksSbsLateUseCase>(
      () => _i177.CompleteCachedTaskSbsLateUseCaseImpl(
          gh<_i168.TasksSbsRepository>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i178.CompleteTaskEasUseCase>(
      () => _i178.CompleteTaskEasUseCaseImpl(
          gh<_i166.TasksEasRemoteDataSource>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i179.DownloadTaskEasAttachmentUseCase>(
      () => _i179.DownloadTaskEasAttachmentUseCaseImpl(
        gh<_i37.TasksEasAttachmentsRepository>(),
        gh<_i166.TasksEasRemoteDataSource>(),
      ),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i180.FeaturesGuardService>(
      () => _i180.FeaturesGuardServiceImpl(
        getOnboardingAvailableStatusUseCase:
            gh<_i165.GetOnboardingAvailableStatusUseCase>(),
        getOnboardingStatusUseCase:
            gh<_i154.GetWelcomeAvailableStatusUseCase>(),
      ),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i181.GetTasksSbsLateUseCase>(
      () => _i181.GetTasksSbsLateUseCaseImpl(
          gh<_i167.TasksSbsCachedDataSource>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i182.GetTasksSbsWeeklyUseCase>(
      () => _i182.GetTasksSbsWeeklyUseCaseImpl(
          gh<_i167.TasksSbsCachedDataSource>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i183.GetTasksVacationUseCase>(
      () => _i183.GetTasksVacationUseCaseImpl(
          gh<_i169.TasksVacationCachedDataSource>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.factory<_i184.TaskEasAttachmentCubit>(() => _i184.TaskEasAttachmentCubit(
          gh<_i16.InitTaskEasAttachmentsDirectoryUseCase>(),
          gh<_i65.GetTaskEasAttachmentUseCase>(),
          gh<_i179.DownloadTaskEasAttachmentUseCase>(),
          gh<_i23.OpenTaskEasAttachmentUseCase>(),
        ));
    gh.lazySingleton<_i185.TasksEasCachedDataSource>(
      () => _i185.TasksEasCachedDataSourceImpl(
        gh<_i166.TasksEasRemoteDataSource>(),
        gh<_i115.RemoveNotActualTaskEasAttachmentsUseCase>(),
      ),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i186.TasksEasRepository>(
      () => _i186.TasksEasRepositoryImpl(
          dataSource: gh<_i185.TasksEasCachedDataSource>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.factory<_i187.TasksSbsLateCubit>(() => _i187.TasksSbsLateCubit(
          gh<_i181.GetTasksSbsLateUseCase>(),
          gh<_i177.CompleteCachedTasksSbsLateUseCase>(),
          gh<_i164.CompleteTasksSbsLateUseCase>(),
          gh<_i172.ClearCacheTasksSbsLateUseCase>(),
        ));
    gh.factory<_i188.TasksSbsLateSummaryCubit>(
        () => _i188.TasksSbsLateSummaryCubit(
              gh<_i181.GetTasksSbsLateUseCase>(),
              gh<_i172.ClearCacheTasksSbsLateUseCase>(),
              gh<_i168.TasksSbsRepository>(),
              gh<_i70.LogService>(),
            ));
    gh.factory<_i189.TasksSbsWeeklyCubit>(() => _i189.TasksSbsWeeklyCubit(
          gh<_i182.GetTasksSbsWeeklyUseCase>(),
          gh<_i173.ClearCacheTasksSbsWeeklyUseCase>(),
          gh<_i175.CompleteCachedTaskSbsWeeklyUseCase>(),
          gh<_i162.CompleteTaskSbsWeeklyUseCase>(),
        ));
    gh.factory<_i190.TasksSbsWeeklySummaryCubit>(
        () => _i190.TasksSbsWeeklySummaryCubit(
              gh<_i182.GetTasksSbsWeeklyUseCase>(),
              gh<_i173.ClearCacheTasksSbsWeeklyUseCase>(),
              gh<_i168.TasksSbsRepository>(),
              gh<_i70.LogService>(),
            ));
    gh.factory<_i191.TasksVacationCubit>(() => _i191.TasksVacationCubit(
          gh<_i183.GetTasksVacationUseCase>(),
          gh<_i176.CompleteCachedTaskVacationUseCase>(),
          gh<_i163.CompleteTaskVacationUseCase>(),
          gh<_i174.ClearCacheTasksVacationUseCase>(),
        ));
    gh.factory<_i192.TasksVacationSummaryCubit>(
        () => _i192.TasksVacationSummaryCubit(
              gh<_i183.GetTasksVacationUseCase>(),
              gh<_i174.ClearCacheTasksVacationUseCase>(),
              gh<_i170.TasksVacationRepository>(),
              gh<_i70.LogService>(),
            ));
    gh.lazySingleton<_i193.AppNavigationService>(
      () => _i193.AppNavigationService(
        gh<_i18.NavigatorKeyProvider>(),
        gh<_i180.FeaturesGuardService>(),
      ),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i194.ClearCacheTasksEasUseCase>(
      () => _i194.ClearCacheTasksEasUseCaseImpl(
          gh<_i185.TasksEasCachedDataSource>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.factory<_i195.ClearDataInternalSystemsUseCase>(
      () => _i195.ClearDataInternalSystemsUseCaseImpl(
        gh<_i194.ClearCacheTasksEasUseCase>(),
        gh<_i173.ClearCacheTasksSbsWeeklyUseCase>(),
        gh<_i172.ClearCacheTasksSbsLateUseCase>(),
        gh<_i174.ClearCacheTasksVacationUseCase>(),
      ),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i196.CompleteCachedTaskEasUseCase>(
      () => _i196.CompleteCachedTaskEasUseCaseImpl(
          gh<_i186.TasksEasRepository>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i197.GetTasksEasUseCase>(
      () => _i197.GetTasksEasUseCaseImpl(gh<_i185.TasksEasCachedDataSource>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.factory<_i198.LogoutUserUseCase>(
      () => _i198.LogoutUserUseCaseImpl(
        gh<_i93.ChatsRepository>(),
        gh<_i39.UserService>(),
        gh<_i89.AuthProvider>(),
        gh<_i148.ClearDataAdminPanelUseCase>(),
        gh<_i195.ClearDataInternalSystemsUseCase>(),
        gh<_i25.ScopeRepository>(),
      ),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.factory<_i199.SettingsCubit>(() => _i199.SettingsCubit(
          gh<_i57.GetBillingNotificationSettingsUseCase>(),
          gh<_i59.GetDarkModeSettingsUseCase>(),
          gh<_i64.GetSystemModeSettingsUseCase>(),
          gh<_i63.GetRegionSettingsUseCase>(),
          gh<_i198.LogoutUserUseCase>(),
          gh<_i122.SetBillingNotificationSettingsUseCase>(),
          gh<_i83.ThemeCubit>(),
          gh<_i113.RegionCubit>(),
        ));
    gh.factory<_i200.TasksEasCubit>(() => _i200.TasksEasCubit(
          gh<_i197.GetTasksEasUseCase>(),
          gh<_i196.CompleteCachedTaskEasUseCase>(),
          gh<_i178.CompleteTaskEasUseCase>(),
          gh<_i194.ClearCacheTasksEasUseCase>(),
        ));
    gh.factory<_i201.TasksEasSummaryCubit>(() => _i201.TasksEasSummaryCubit(
          gh<_i197.GetTasksEasUseCase>(),
          gh<_i194.ClearCacheTasksEasUseCase>(),
          gh<_i186.TasksEasRepository>(),
          gh<_i70.LogService>(),
        ));
    gh.factory<_i202.GetBackgroundDataUseCase>(
        () => _i202.GetBackgroundDataUseCase(
              gh<_i182.GetTasksSbsWeeklyUseCase>(),
              gh<_i181.GetTasksSbsLateUseCase>(),
              gh<_i197.GetTasksEasUseCase>(),
              gh<_i183.GetTasksVacationUseCase>(),
            ));
    gh.factory<_i203.UpdateCubit>(() => _i203.UpdateCubit(
          gh<_i152.GetSystemSettingsUseCase>(),
          gh<_i63.GetRegionSettingsUseCase>(),
          gh<_i202.GetBackgroundDataUseCase>(),
        ));
    gh.factory<_i204.AuthCubit>(() => _i204.AuthCubit(
          gh<_i24.PushNotificationsProvider>(),
          gh<_i103.HasCachedAccountUseCase>(),
          gh<_i156.OAuthTryLoginUseCase>(),
          gh<_i70.LogService>(),
          gh<_i13.GetAppInfoUseCase>(),
          gh<_i152.GetSystemSettingsUseCase>(),
          gh<_i63.GetRegionSettingsUseCase>(),
          gh<_i202.GetBackgroundDataUseCase>(),
        ));
    return this;
  }

// initializes the registration of mockScope-scope dependencies inside of GetIt
  _i1.GetIt initMockScopeScope({_i1.ScopeDisposeFunc? dispose}) {
    return _i2.GetItHelper(this).initScope(
      'mockScope',
      dispose: dispose,
      init: (_i2.GetItHelper gh) {
        gh.lazySingleton<_i93.ChatsRepository>(
          () => _i205.ChatsMockRepository(
            gh<_i40.UuidGenerator>(),
            gh<_i39.UserService>(),
          ),
          registerFor: {
            _dev,
            _prod,
          },
        );
        gh.lazySingleton<_i8.NewsRepository>(
          () => _i206.NewsMockRepository(constants: gh<_i9.Constants>()),
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
          () => _i207.NewsCachedRepository(
            dataSource: gh<_i137.NewsCachedDataSource>(),
            getApiBaseUrlUseCase: gh<_i53.GetAdminPanelApiBaseUrlUseCase>(),
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

class _$AppModule extends _i208.AppModule {}
