// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Terralink`
  String get title {
    return Intl.message(
      'Terralink',
      name: 'title',
      desc: '',
      args: [],
    );
  }

  /// `Retry`
  String get btnRetry {
    return Intl.message(
      'Retry',
      name: 'btnRetry',
      desc: '',
      args: [],
    );
  }

  /// `Main`
  String get mainPage {
    return Intl.message(
      'Main',
      name: 'mainPage',
      desc: '',
      args: [],
    );
  }

  /// `Chats`
  String get chatsPage {
    return Intl.message(
      'Chats',
      name: 'chatsPage',
      desc: '',
      args: [],
    );
  }

  /// `Requests`
  String get requestsPage {
    return Intl.message(
      'Requests',
      name: 'requestsPage',
      desc: '',
      args: [],
    );
  }

  /// `Profile`
  String get profilePage {
    return Intl.message(
      'Profile',
      name: 'profilePage',
      desc: '',
      args: [],
    );
  }

  /// `Meet!`
  String get meetTitle {
    return Intl.message(
      'Meet!',
      name: 'meetTitle',
      desc: '',
      args: [],
    );
  }

  /// `Events`
  String get eventTitle {
    return Intl.message(
      'Events',
      name: 'eventTitle',
      desc: '',
      args: [],
    );
  }

  /// `Polls`
  String get pollsTitle {
    return Intl.message(
      'Polls',
      name: 'pollsTitle',
      desc: '',
      args: [],
    );
  }

  /// `Take the Survey`
  String get takeSurvey {
    return Intl.message(
      'Take the Survey',
      name: 'takeSurvey',
      desc: '',
      args: [],
    );
  }

  /// `New messages`
  String get newMessagesTitle {
    return Intl.message(
      'New messages',
      name: 'newMessagesTitle',
      desc: '',
      args: [],
    );
  }

  /// `Poll`
  String get pollTitle {
    return Intl.message(
      'Poll',
      name: 'pollTitle',
      desc: '',
      args: [],
    );
  }

  /// `Page not found`
  String get unknownRoute {
    return Intl.message(
      'Page not found',
      name: 'unknownRoute',
      desc: '',
      args: [],
    );
  }

  /// `Send`
  String get btnSend {
    return Intl.message(
      'Send',
      name: 'btnSend',
      desc: '',
      args: [],
    );
  }

  /// `Cancel`
  String get btnCancel {
    return Intl.message(
      'Cancel',
      name: 'btnCancel',
      desc: '',
      args: [],
    );
  }

  /// `Done`
  String get btnDone {
    return Intl.message(
      'Done',
      name: 'btnDone',
      desc: '',
      args: [],
    );
  }

  /// `Logout`
  String get btnLogout {
    return Intl.message(
      'Logout',
      name: 'btnLogout',
      desc: '',
      args: [],
    );
  }

  /// `{num} of {count}`
  String counter(Object num, Object count) {
    return Intl.message(
      '$num of $count',
      name: 'counter',
      desc: '',
      args: [num, count],
    );
  }

  /// `Online`
  String get online {
    return Intl.message(
      'Online',
      name: 'online',
      desc: '',
      args: [],
    );
  }

  /// `Offline`
  String get offline {
    return Intl.message(
      'Offline',
      name: 'offline',
      desc: '',
      args: [],
    );
  }

  /// `No active requests`
  String get tasksEmptyList {
    return Intl.message(
      'No active requests',
      name: 'tasksEmptyList',
      desc: '',
      args: [],
    );
  }

  /// `Update`
  String get update {
    return Intl.message(
      'Update',
      name: 'update',
      desc: '',
      args: [],
    );
  }

  /// `Authorization`
  String get authorization {
    return Intl.message(
      'Authorization',
      name: 'authorization',
      desc: '',
      args: [],
    );
  }

  /// `Log in`
  String get btnLogin {
    return Intl.message(
      'Log in',
      name: 'btnLogin',
      desc: '',
      args: [],
    );
  }

  /// `Write your message`
  String get writeMessage {
    return Intl.message(
      'Write your message',
      name: 'writeMessage',
      desc: '',
      args: [],
    );
  }

  /// `Notifications`
  String get notifications {
    return Intl.message(
      'Notifications',
      name: 'notifications',
      desc: '',
      args: [],
    );
  }

  /// `Theme`
  String get theme {
    return Intl.message(
      'Theme',
      name: 'theme',
      desc: '',
      args: [],
    );
  }

  /// `No messages`
  String get noMessages {
    return Intl.message(
      'No messages',
      name: 'noMessages',
      desc: '',
      args: [],
    );
  }

  /// `Hi {name}!`
  String greetings(Object name) {
    return Intl.message(
      'Hi $name!',
      name: 'greetings',
      desc: '',
      args: [name],
    );
  }

  /// `You are authorized in the TerraLink corporate application`
  String get youAuthorizedInCorporateApp {
    return Intl.message(
      'You are authorized in the TerraLink corporate application',
      name: 'youAuthorizedInCorporateApp',
      desc: '',
      args: [],
    );
  }

  /// `Version: {version}`
  String appVersion(Object version) {
    return Intl.message(
      'Version: $version',
      name: 'appVersion',
      desc: '',
      args: [version],
    );
  }

  /// `Search messages, documents`
  String get searchMsgAndDocsHint {
    return Intl.message(
      'Search messages, documents',
      name: 'searchMsgAndDocsHint',
      desc: '',
      args: [],
    );
  }

  /// `Search by ID or initiator`
  String get searchTasksHint {
    return Intl.message(
      'Search by ID or initiator',
      name: 'searchTasksHint',
      desc: '',
      args: [],
    );
  }

  /// `Comment on your decision`
  String get decisionComment {
    return Intl.message(
      'Comment on your decision',
      name: 'decisionComment',
      desc: '',
      args: [],
    );
  }

  /// `Loading error`
  String get loadingError {
    return Intl.message(
      'Loading error',
      name: 'loadingError',
      desc: '',
      args: [],
    );
  }

  /// `Request execution failed, please update the task list and try again later`
  String get taskSendingError {
    return Intl.message(
      'Request execution failed, please update the task list and try again later',
      name: 'taskSendingError',
      desc: '',
      args: [],
    );
  }

  /// `OK`
  String get btnOk {
    return Intl.message(
      'OK',
      name: 'btnOk',
      desc: '',
      args: [],
    );
  }

  /// `Something was wrong...`
  String get somethingWasWrong {
    return Intl.message(
      'Something was wrong...',
      name: 'somethingWasWrong',
      desc: '',
      args: [],
    );
  }

  /// `Application settings`
  String get titleSettings {
    return Intl.message(
      'Application settings',
      name: 'titleSettings',
      desc: '',
      args: [],
    );
  }

  /// `My business card`
  String get titleMyBusinessCards {
    return Intl.message(
      'My business card',
      name: 'titleMyBusinessCards',
      desc: '',
      args: [],
    );
  }

  /// `Ru`
  String get cardLocaleRu {
    return Intl.message(
      'Ru',
      name: 'cardLocaleRu',
      desc: '',
      args: [],
    );
  }

  /// `Global`
  String get cardLocaleGlobal {
    return Intl.message(
      'Global',
      name: 'cardLocaleGlobal',
      desc: '',
      args: [],
    );
  }

  /// `My documents`
  String get profileDocuments {
    return Intl.message(
      'My documents',
      name: 'profileDocuments',
      desc: '',
      args: [],
    );
  }

  /// `Add document`
  String get profileDocumentAdd {
    return Intl.message(
      'Add document',
      name: 'profileDocumentAdd',
      desc: '',
      args: [],
    );
  }

  /// `Title of the document`
  String get profileDocumentEditLabel {
    return Intl.message(
      'Title of the document',
      name: 'profileDocumentEditLabel',
      desc: '',
      args: [],
    );
  }

  /// `You don't have\nbusiness cards yet`
  String get messageNoBusinessCards {
    return Intl.message(
      'You don\'t have\nbusiness cards yet',
      name: 'messageNoBusinessCards',
      desc: '',
      args: [],
    );
  }

  /// `Click on the button`
  String get clickButton {
    return Intl.message(
      'Click on the button',
      name: 'clickButton',
      desc: '',
      args: [],
    );
  }

  /// `Share`
  String get btnShare {
    return Intl.message(
      'Share',
      name: 'btnShare',
      desc: '',
      args: [],
    );
  }

  /// `Remove`
  String get btnRemove {
    return Intl.message(
      'Remove',
      name: 'btnRemove',
      desc: '',
      args: [],
    );
  }

  /// `Edit card`
  String get titleEditCard {
    return Intl.message(
      'Edit card',
      name: 'titleEditCard',
      desc: '',
      args: [],
    );
  }

  /// `Create card`
  String get titleCreateCard {
    return Intl.message(
      'Create card',
      name: 'titleCreateCard',
      desc: '',
      args: [],
    );
  }

  /// `Back`
  String get btnBack {
    return Intl.message(
      'Back',
      name: 'btnBack',
      desc: '',
      args: [],
    );
  }

  /// `Select location`
  String get selectLocation {
    return Intl.message(
      'Select location',
      name: 'selectLocation',
      desc: '',
      args: [],
    );
  }

  /// `First name`
  String get firstname {
    return Intl.message(
      'First name',
      name: 'firstname',
      desc: '',
      args: [],
    );
  }

  /// `Last name`
  String get lastname {
    return Intl.message(
      'Last name',
      name: 'lastname',
      desc: '',
      args: [],
    );
  }

  /// `Company`
  String get company {
    return Intl.message(
      'Company',
      name: 'company',
      desc: '',
      args: [],
    );
  }

  /// `Position`
  String get position {
    return Intl.message(
      'Position',
      name: 'position',
      desc: '',
      args: [],
    );
  }

  /// `Phone`
  String get mobilePhone {
    return Intl.message(
      'Phone',
      name: 'mobilePhone',
      desc: '',
      args: [],
    );
  }

  /// `Email`
  String get email {
    return Intl.message(
      'Email',
      name: 'email',
      desc: '',
      args: [],
    );
  }

  /// `Save`
  String get btnSave {
    return Intl.message(
      'Save',
      name: 'btnSave',
      desc: '',
      args: [],
    );
  }

  /// `Search documents`
  String get searchDocuments {
    return Intl.message(
      'Search documents',
      name: 'searchDocuments',
      desc: '',
      args: [],
    );
  }

  /// `Could not find documents`
  String get searchDocumentsNoResults {
    return Intl.message(
      'Could not find documents',
      name: 'searchDocumentsNoResults',
      desc: '',
      args: [],
    );
  }

  /// `You haven't added \nany documents yet`
  String get messageNoDocuments {
    return Intl.message(
      'You haven\'t added \nany documents yet',
      name: 'messageNoDocuments',
      desc: '',
      args: [],
    );
  }

  /// `Use button below to add`
  String get messageNoDocumentDesc {
    return Intl.message(
      'Use button below to add',
      name: 'messageNoDocumentDesc',
      desc: '',
      args: [],
    );
  }

  /// `Are you sure you want to remove\nthe selected documents?`
  String get dialogRemoveDocuments {
    return Intl.message(
      'Are you sure you want to remove\nthe selected documents?',
      name: 'dialogRemoveDocuments',
      desc: '',
      args: [],
    );
  }

  /// `Confirm`
  String get btnConfirm {
    return Intl.message(
      'Confirm',
      name: 'btnConfirm',
      desc: '',
      args: [],
    );
  }

  /// `Required field`
  String get requiredToFill {
    return Intl.message(
      'Required field',
      name: 'requiredToFill',
      desc: '',
      args: [],
    );
  }

  /// `Add business card`
  String get btnAddBusinessCard {
    return Intl.message(
      'Add business card',
      name: 'btnAddBusinessCard',
      desc: '',
      args: [],
    );
  }

  /// `Are you sure you want to remove\nthe business card?`
  String get dialogRemoveBusinessCard {
    return Intl.message(
      'Are you sure you want to remove\nthe business card?',
      name: 'dialogRemoveBusinessCard',
      desc: '',
      args: [],
    );
  }

  /// `Select all`
  String get btnSelectAll {
    return Intl.message(
      'Select all',
      name: 'btnSelectAll',
      desc: '',
      args: [],
    );
  }

  /// `MB`
  String get megabytes {
    return Intl.message(
      'MB',
      name: 'megabytes',
      desc: '',
      args: [],
    );
  }

  /// `kB`
  String get kilobytes {
    return Intl.message(
      'kB',
      name: 'kilobytes',
      desc: '',
      args: [],
    );
  }

  /// `Close`
  String get btnClose {
    return Intl.message(
      'Close',
      name: 'btnClose',
      desc: '',
      args: [],
    );
  }

  /// `An error occurred while opening the file`
  String get messageDocumentOpenError {
    return Intl.message(
      'An error occurred while opening the file',
      name: 'messageDocumentOpenError',
      desc: '',
      args: [],
    );
  }

  /// `There is no application to open the file`
  String get messageDocumentNoApp {
    return Intl.message(
      'There is no application to open the file',
      name: 'messageDocumentNoApp',
      desc: '',
      args: [],
    );
  }

  /// `Select language`
  String get settingsLocale {
    return Intl.message(
      'Select language',
      name: 'settingsLocale',
      desc: '',
      args: [],
    );
  }

  /// `Theme`
  String get settingsTheme {
    return Intl.message(
      'Theme',
      name: 'settingsTheme',
      desc: '',
      args: [],
    );
  }

  /// `Appearance`
  String get settingsThemeAppearance {
    return Intl.message(
      'Appearance',
      name: 'settingsThemeAppearance',
      desc: '',
      args: [],
    );
  }

  /// `Set as system`
  String get settingsThemeSystem {
    return Intl.message(
      'Set as system',
      name: 'settingsThemeSystem',
      desc: '',
      args: [],
    );
  }

  /// `App skin will change based on device appearance`
  String get settingsThemeSystemDescription {
    return Intl.message(
      'App skin will change based on device appearance',
      name: 'settingsThemeSystemDescription',
      desc: '',
      args: [],
    );
  }

  /// `Popup notifications`
  String get settingsNotification {
    return Intl.message(
      'Popup notifications',
      name: 'settingsNotification',
      desc: '',
      args: [],
    );
  }

  /// `Wednesday billing reminders`
  String get settingsNotificationBilling {
    return Intl.message(
      'Wednesday billing reminders',
      name: 'settingsNotificationBilling',
      desc: '',
      args: [],
    );
  }

  /// `Notification management`
  String get settingsNotificationManage {
    return Intl.message(
      'Notification management',
      name: 'settingsNotificationManage',
      desc: '',
      args: [],
    );
  }

  /// `About App`
  String get settingsAboutApp {
    return Intl.message(
      'About App',
      name: 'settingsAboutApp',
      desc: '',
      args: [],
    );
  }

  /// `Billing reminder`
  String get notificationBilling {
    return Intl.message(
      'Billing reminder',
      name: 'notificationBilling',
      desc: '',
      args: [],
    );
  }

  /// `Don't forget to deposit all hours worked last week before the end of the day`
  String get notificationBillingMessage {
    return Intl.message(
      'Don\'t forget to deposit all hours worked last week before the end of the day',
      name: 'notificationBillingMessage',
      desc: '',
      args: [],
    );
  }

  /// `Go back to main`
  String get btnBackToMain {
    return Intl.message(
      'Go back to main',
      name: 'btnBackToMain',
      desc: '',
      args: [],
    );
  }

  /// `Chat`
  String get chatBot {
    return Intl.message(
      'Chat',
      name: 'chatBot',
      desc: '',
      args: [],
    );
  }

  /// `Approve`
  String get btnApprove {
    return Intl.message(
      'Approve',
      name: 'btnApprove',
      desc: '',
      args: [],
    );
  }

  /// `Reject`
  String get btnReject {
    return Intl.message(
      'Reject',
      name: 'btnReject',
      desc: '',
      args: [],
    );
  }

  /// `Please, enter a comment`
  String get fieldRequiredComment {
    return Intl.message(
      'Please, enter a comment',
      name: 'fieldRequiredComment',
      desc: '',
      args: [],
    );
  }

  /// `Feedback`
  String get feedbackTitle {
    return Intl.message(
      'Feedback',
      name: 'feedbackTitle',
      desc: '',
      args: [],
    );
  }

  /// `Enter a suggestion or comment`
  String get feedbackTextLabel {
    return Intl.message(
      'Enter a suggestion or comment',
      name: 'feedbackTextLabel',
      desc: '',
      args: [],
    );
  }

  /// `There are no email clients configured on the device.\n\nPlease, add settings and try again`
  String get feedbackSendingError {
    return Intl.message(
      'There are no email clients configured on the device.\n\nPlease, add settings and try again',
      name: 'feedbackSendingError',
      desc: '',
      args: [],
    );
  }

  /// `assets/jsons/news_mock_en.json`
  String get mockNewsAssetPath {
    return Intl.message(
      'assets/jsons/news_mock_en.json',
      name: 'mockNewsAssetPath',
      desc: '',
      args: [],
    );
  }

  /// `Region`
  String get settingsRegion {
    return Intl.message(
      'Region',
      name: 'settingsRegion',
      desc: '',
      args: [],
    );
  }

  /// `Select your region to display news`
  String get regionFirst {
    return Intl.message(
      'Select your region to display news',
      name: 'regionFirst',
      desc: '',
      args: [],
    );
  }

  /// `You can always change it later in your profile`
  String get regionSecond {
    return Intl.message(
      'You can always change it later in your profile',
      name: 'regionSecond',
      desc: '',
      args: [],
    );
  }

  /// `News server host`
  String get newsApiBaseUrl {
    return Intl.message(
      'News server host',
      name: 'newsApiBaseUrl',
      desc: '',
      args: [],
    );
  }

  /// `Chat server host`
  String get wsBaseUrl {
    return Intl.message(
      'Chat server host',
      name: 'wsBaseUrl',
      desc: '',
      args: [],
    );
  }

  /// `Tasks server host`
  String get tasksApiBaseUrl {
    return Intl.message(
      'Tasks server host',
      name: 'tasksApiBaseUrl',
      desc: '',
      args: [],
    );
  }

  /// `MSAL tenantId`
  String get msalTenantId {
    return Intl.message(
      'MSAL tenantId',
      name: 'msalTenantId',
      desc: '',
      args: [],
    );
  }

  /// `MSAL clientId`
  String get msalClientId {
    return Intl.message(
      'MSAL clientId',
      name: 'msalClientId',
      desc: '',
      args: [],
    );
  }

  /// `MSAL scope`
  String get msalScope {
    return Intl.message(
      'MSAL scope',
      name: 'msalScope',
      desc: '',
      args: [],
    );
  }

  /// `assets/jsons/chat_mock_en.json`
  String get mockChat {
    return Intl.message(
      'assets/jsons/chat_mock_en.json',
      name: 'mockChat',
      desc: '',
      args: [],
    );
  }

  /// `Chat unavailable`
  String get chatNoShow {
    return Intl.message(
      'Chat unavailable',
      name: 'chatNoShow',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'ru'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
