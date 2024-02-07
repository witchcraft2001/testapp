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

  /// `Approve`
  String get btnApprove {
    return Intl.message(
      'Approve',
      name: 'btnApprove',
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

  /// `Go back to main`
  String get btnBackToMain {
    return Intl.message(
      'Go back to main',
      name: 'btnBackToMain',
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

  /// `Close`
  String get btnClose {
    return Intl.message(
      'Close',
      name: 'btnClose',
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

  /// `Done`
  String get btnDone {
    return Intl.message(
      'Done',
      name: 'btnDone',
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

  /// `Logout`
  String get btnLogout {
    return Intl.message(
      'Logout',
      name: 'btnLogout',
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

  /// `Refresh`
  String get btnRefresh {
    return Intl.message(
      'Refresh',
      name: 'btnRefresh',
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

  /// `Remove`
  String get btnRemove {
    return Intl.message(
      'Remove',
      name: 'btnRemove',
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

  /// `Save`
  String get btnSave {
    return Intl.message(
      'Save',
      name: 'btnSave',
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

  /// `Send`
  String get btnSend {
    return Intl.message(
      'Send',
      name: 'btnSend',
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

  /// `s`
  String get timerSeconds {
    return Intl.message(
      's',
      name: 'timerSeconds',
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

  /// `Location`
  String get location {
    return Intl.message(
      'Location',
      name: 'location',
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

  /// `Required field`
  String get validationRequired {
    return Intl.message(
      'Required field',
      name: 'validationRequired',
      desc: '',
      args: [],
    );
  }

  /// `Please, enter a comment`
  String get validationRequiredComment {
    return Intl.message(
      'Please, enter a comment',
      name: 'validationRequiredComment',
      desc: '',
      args: [],
    );
  }

  /// `Main`
  String get main {
    return Intl.message(
      'Main',
      name: 'main',
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

  /// `Chat`
  String get chatBot {
    return Intl.message(
      'Chat',
      name: 'chatBot',
      desc: '',
      args: [],
    );
  }

  /// `Online`
  String get chatStatusOnline {
    return Intl.message(
      'Online',
      name: 'chatStatusOnline',
      desc: '',
      args: [],
    );
  }

  /// `Offline`
  String get chatStatusOffline {
    return Intl.message(
      'Offline',
      name: 'chatStatusOffline',
      desc: '',
      args: [],
    );
  }

  /// `Write your message`
  String get chatNewMessage {
    return Intl.message(
      'Write your message',
      name: 'chatNewMessage',
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

  /// `Tasks`
  String get tasks {
    return Intl.message(
      'Tasks',
      name: 'tasks',
      desc: '',
      args: [],
    );
  }

  /// `Payment requests`
  String get tasksEas {
    return Intl.message(
      'Payment requests',
      name: 'tasksEas',
      desc: '',
      args: [],
    );
  }

  /// `Search by ID or initiator`
  String get tasksEasSearch {
    return Intl.message(
      'Search by ID or initiator',
      name: 'tasksEasSearch',
      desc: '',
      args: [],
    );
  }

  /// `SBS billing (PM)`
  String get tasksSbsWeekly {
    return Intl.message(
      'SBS billing (PM)',
      name: 'tasksSbsWeekly',
      desc: '',
      args: [],
    );
  }

  /// `SBS billing (Thrift-box)`
  String get tasksSbsLate {
    return Intl.message(
      'SBS billing (Thrift-box)',
      name: 'tasksSbsLate',
      desc: '',
      args: [],
    );
  }

  /// `Company`
  String get tasksSbsCompany {
    return Intl.message(
      'Company',
      name: 'tasksSbsCompany',
      desc: '',
      args: [],
    );
  }

  /// `AM`
  String get tasksSbsAM {
    return Intl.message(
      'AM',
      name: 'tasksSbsAM',
      desc: '',
      args: [],
    );
  }

  /// `PM`
  String get tasksSbsPM {
    return Intl.message(
      'PM',
      name: 'tasksSbsPM',
      desc: '',
      args: [],
    );
  }

  /// `About the project`
  String get tasksSbsProject {
    return Intl.message(
      'About the project',
      name: 'tasksSbsProject',
      desc: '',
      args: [],
    );
  }

  /// `Confirm decisions based on employee entered hours?`
  String get tasksSbsConfirmMessage {
    return Intl.message(
      'Confirm decisions based on employee entered hours?',
      name: 'tasksSbsConfirmMessage',
      desc: '',
      args: [],
    );
  }

  /// `Unpaid`
  String get tasksSbsHoursUnpaid {
    return Intl.message(
      'Unpaid',
      name: 'tasksSbsHoursUnpaid',
      desc: '',
      args: [],
    );
  }

  /// `Paid`
  String get tasksSbsHoursPaid {
    return Intl.message(
      'Paid',
      name: 'tasksSbsHoursPaid',
      desc: '',
      args: [],
    );
  }

  /// `OVT`
  String get tasksSbsHoursOVT {
    return Intl.message(
      'OVT',
      name: 'tasksSbsHoursOVT',
      desc: '',
      args: [],
    );
  }

  /// `OVT 1.5`
  String get tasksSbsHoursOVTAndHalf {
    return Intl.message(
      'OVT 1.5',
      name: 'tasksSbsHoursOVTAndHalf',
      desc: '',
      args: [],
    );
  }

  /// `Search by project ID`
  String get tasksSbsSearch {
    return Intl.message(
      'Search by project ID',
      name: 'tasksSbsSearch',
      desc: '',
      args: [],
    );
  }

  /// `Delegated`
  String get tasksSbsDelegated {
    return Intl.message(
      'Delegated',
      name: 'tasksSbsDelegated',
      desc: '',
      args: [],
    );
  }

  /// `Vacation requests`
  String get tasksVacation {
    return Intl.message(
      'Vacation requests',
      name: 'tasksVacation',
      desc: '',
      args: [],
    );
  }

  /// `Search by employee`
  String get tasksVacationSearch {
    return Intl.message(
      'Search by employee',
      name: 'tasksVacationSearch',
      desc: '',
      args: [],
    );
  }

  /// `Sick leave requests`
  String get tasksSickLeaves {
    return Intl.message(
      'Sick leave requests',
      name: 'tasksSickLeaves',
      desc: '',
      args: [],
    );
  }

  /// `Approved`
  String get taskStatusApproved {
    return Intl.message(
      'Approved',
      name: 'taskStatusApproved',
      desc: '',
      args: [],
    );
  }

  /// `Rejected`
  String get taskStatusRejected {
    return Intl.message(
      'Rejected',
      name: 'taskStatusRejected',
      desc: '',
      args: [],
    );
  }

  /// `Waiting`
  String get taskStatusWaiting {
    return Intl.message(
      'Waiting',
      name: 'taskStatusWaiting',
      desc: '',
      args: [],
    );
  }

  /// `Comment on your decision`
  String get tasksDecisionComment {
    return Intl.message(
      'Comment on your decision',
      name: 'tasksDecisionComment',
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

  /// `No active tasks`
  String get tasksEmptyList {
    return Intl.message(
      'No active tasks',
      name: 'tasksEmptyList',
      desc: '',
      args: [],
    );
  }

  /// `There are no tasks matching the search parameters`
  String get tasksEmptyListBySearch {
    return Intl.message(
      'There are no tasks matching the search parameters',
      name: 'tasksEmptyListBySearch',
      desc: '',
      args: [],
    );
  }

  /// `Profile`
  String get profile {
    return Intl.message(
      'Profile',
      name: 'profile',
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

  /// `You haven't added \nany documents yet`
  String get profileDocumentsEmptyList {
    return Intl.message(
      'You haven\'t added \nany documents yet',
      name: 'profileDocumentsEmptyList',
      desc: '',
      args: [],
    );
  }

  /// `Add document`
  String get profileDocumentsBtnAdd {
    return Intl.message(
      'Add document',
      name: 'profileDocumentsBtnAdd',
      desc: '',
      args: [],
    );
  }

  /// `Title of the document`
  String get profileDocumentsFieldLabelEdit {
    return Intl.message(
      'Title of the document',
      name: 'profileDocumentsFieldLabelEdit',
      desc: '',
      args: [],
    );
  }

  /// `Search documents`
  String get profileDocumentsSearch {
    return Intl.message(
      'Search documents',
      name: 'profileDocumentsSearch',
      desc: '',
      args: [],
    );
  }

  /// `Could not find documents`
  String get profileDocumentsSearchNoResults {
    return Intl.message(
      'Could not find documents',
      name: 'profileDocumentsSearchNoResults',
      desc: '',
      args: [],
    );
  }

  /// `An error occurred while opening the file`
  String get profileDocumentsErrorOpen {
    return Intl.message(
      'An error occurred while opening the file',
      name: 'profileDocumentsErrorOpen',
      desc: '',
      args: [],
    );
  }

  /// `There is no application to open the file`
  String get profileDocumentsErrorNoApp {
    return Intl.message(
      'There is no application to open the file',
      name: 'profileDocumentsErrorNoApp',
      desc: '',
      args: [],
    );
  }

  /// `Are you sure you want to remove\nthe selected documents?`
  String get profileDocumentsDialogRemove {
    return Intl.message(
      'Are you sure you want to remove\nthe selected documents?',
      name: 'profileDocumentsDialogRemove',
      desc: '',
      args: [],
    );
  }

  /// `My business card`
  String get businessCards {
    return Intl.message(
      'My business card',
      name: 'businessCards',
      desc: '',
      args: [],
    );
  }

  /// `Add business card`
  String get businessCardsBtnAdd {
    return Intl.message(
      'Add business card',
      name: 'businessCardsBtnAdd',
      desc: '',
      args: [],
    );
  }

  /// `Ru`
  String get businessCardsLocaleRu {
    return Intl.message(
      'Ru',
      name: 'businessCardsLocaleRu',
      desc: '',
      args: [],
    );
  }

  /// `Global`
  String get businessCardsLocaleGlobal {
    return Intl.message(
      'Global',
      name: 'businessCardsLocaleGlobal',
      desc: '',
      args: [],
    );
  }

  /// `You don't have\nbusiness cards yet`
  String get businessCardsEmptyList {
    return Intl.message(
      'You don\'t have\nbusiness cards yet',
      name: 'businessCardsEmptyList',
      desc: '',
      args: [],
    );
  }

  /// `Create card`
  String get businessCardsCreate {
    return Intl.message(
      'Create card',
      name: 'businessCardsCreate',
      desc: '',
      args: [],
    );
  }

  /// `Edit card`
  String get businessCardsEdit {
    return Intl.message(
      'Edit card',
      name: 'businessCardsEdit',
      desc: '',
      args: [],
    );
  }

  /// `Are you sure you want to remove\nthe business card?`
  String get businessCardsDialogRemove {
    return Intl.message(
      'Are you sure you want to remove\nthe business card?',
      name: 'businessCardsDialogRemove',
      desc: '',
      args: [],
    );
  }

  /// `Greeting cards`
  String get greetingCards {
    return Intl.message(
      'Greeting cards',
      name: 'greetingCards',
      desc: '',
      args: [],
    );
  }

  /// `Filling`
  String get greetingCardsFilling {
    return Intl.message(
      'Filling',
      name: 'greetingCardsFilling',
      desc: '',
      args: [],
    );
  }

  /// `Preview`
  String get greetingCardsPreview {
    return Intl.message(
      'Preview',
      name: 'greetingCardsPreview',
      desc: '',
      args: [],
    );
  }

  /// `Subject`
  String get greetingCardsSubject {
    return Intl.message(
      'Subject',
      name: 'greetingCardsSubject',
      desc: '',
      args: [],
    );
  }

  /// `Optional field, e-mail subject`
  String get greetingCardsSubjectHint {
    return Intl.message(
      'Optional field, e-mail subject',
      name: 'greetingCardsSubjectHint',
      desc: '',
      args: [],
    );
  }

  /// `Appeal`
  String get greetingCardsAppeal {
    return Intl.message(
      'Appeal',
      name: 'greetingCardsAppeal',
      desc: '',
      args: [],
    );
  }

  /// `There are no greeting cards available yet`
  String get greetingCardsEmptyList {
    return Intl.message(
      'There are no greeting cards available yet',
      name: 'greetingCardsEmptyList',
      desc: '',
      args: [],
    );
  }

  /// `Application settings`
  String get settings {
    return Intl.message(
      'Application settings',
      name: 'settings',
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

  /// `Version: {version}`
  String aboutAppVersion(Object version) {
    return Intl.message(
      'Version: $version',
      name: 'aboutAppVersion',
      desc: '',
      args: [version],
    );
  }

  /// `Give like`
  String get likesNew {
    return Intl.message(
      'Give like',
      name: 'likesNew',
      desc: '',
      args: [],
    );
  }

  /// `My likes`
  String get likesMy {
    return Intl.message(
      'My likes',
      name: 'likesMy',
      desc: '',
      args: [],
    );
  }

  /// `Thank a colleague for their help, advice, or collaboration on a project`
  String get likesNewMessage {
    return Intl.message(
      'Thank a colleague for their help, advice, or collaboration on a project',
      name: 'likesNewMessage',
      desc: '',
      args: [],
    );
  }

  /// `Only the person you sent it to will see your comment`
  String get likesNewDescription {
    return Intl.message(
      'Only the person you sent it to will see your comment',
      name: 'likesNewDescription',
      desc: '',
      args: [],
    );
  }

  /// `Comment`
  String get likesNewComment {
    return Intl.message(
      'Comment',
      name: 'likesNewComment',
      desc: '',
      args: [],
    );
  }

  /// `Like sent`
  String get likesNewSendingSuccess {
    return Intl.message(
      'Like sent',
      name: 'likesNewSendingSuccess',
      desc: '',
      args: [],
    );
  }

  /// `Like can't be sent to yourself`
  String get likesNewSendingErrorYourself {
    return Intl.message(
      'Like can\'t be sent to yourself',
      name: 'likesNewSendingErrorYourself',
      desc: '',
      args: [],
    );
  }

  /// `It's still empty here`
  String get likesMyEmptyList {
    return Intl.message(
      'It\'s still empty here',
      name: 'likesMyEmptyList',
      desc: '',
      args: [],
    );
  }

  /// `Don't worry, be happy!`
  String get likesMyEmptyListDescription {
    return Intl.message(
      'Don\'t worry, be happy!',
      name: 'likesMyEmptyListDescription',
      desc: '',
      args: [],
    );
  }

  /// `Select an employee`
  String get usersSelect {
    return Intl.message(
      'Select an employee',
      name: 'usersSelect',
      desc: '',
      args: [],
    );
  }

  /// `Search by name`
  String get usersSearch {
    return Intl.message(
      'Search by name',
      name: 'usersSearch',
      desc: '',
      args: [],
    );
  }

  /// `Employees unavailable`
  String get usersNotReady {
    return Intl.message(
      'Employees unavailable',
      name: 'usersNotReady',
      desc: '',
      args: [],
    );
  }

  /// `No matching employees found`
  String get usersSearchNoResults {
    return Intl.message(
      'No matching employees found',
      name: 'usersSearchNoResults',
      desc: '',
      args: [],
    );
  }

  /// `Try changing search query`
  String get usersSearchNoResultsDesc {
    return Intl.message(
      'Try changing search query',
      name: 'usersSearchNoResultsDesc',
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

  /// `Presets`
  String get presets {
    return Intl.message(
      'Presets',
      name: 'presets',
      desc: '',
      args: [],
    );
  }

  /// `Admin panel server host`
  String get presetsAdminPanelApiBaseUrl {
    return Intl.message(
      'Admin panel server host',
      name: 'presetsAdminPanelApiBaseUrl',
      desc: '',
      args: [],
    );
  }

  /// `Chat server host`
  String get presetsWsBaseUrl {
    return Intl.message(
      'Chat server host',
      name: 'presetsWsBaseUrl',
      desc: '',
      args: [],
    );
  }

  /// `Tasks Summary, EAS, Vacations server host`
  String get presetsTasksSummaryApiBaseUrl {
    return Intl.message(
      'Tasks Summary, EAS, Vacations server host',
      name: 'presetsTasksSummaryApiBaseUrl',
      desc: '',
      args: [],
    );
  }

  /// `Tasks SBS server host`
  String get presetsTasksSbsApiBaseUrl {
    return Intl.message(
      'Tasks SBS server host',
      name: 'presetsTasksSbsApiBaseUrl',
      desc: '',
      args: [],
    );
  }

  /// `MSAL tenantId`
  String get presetsMsalTenantId {
    return Intl.message(
      'MSAL tenantId',
      name: 'presetsMsalTenantId',
      desc: '',
      args: [],
    );
  }

  /// `MSAL clientId`
  String get presetsMsalClientId {
    return Intl.message(
      'MSAL clientId',
      name: 'presetsMsalClientId',
      desc: '',
      args: [],
    );
  }

  /// `MSAL scope`
  String get presetsMsalScope {
    return Intl.message(
      'MSAL scope',
      name: 'presetsMsalScope',
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

  /// `assets/jsons/news_mock_en.json`
  String get mockNewsAssetPath {
    return Intl.message(
      'assets/jsons/news_mock_en.json',
      name: 'mockNewsAssetPath',
      desc: '',
      args: [],
    );
  }

  /// `Authorization error`
  String get exceptionUnauthorized {
    return Intl.message(
      'Authorization error',
      name: 'exceptionUnauthorized',
      desc: '',
      args: [],
    );
  }

  /// `Access denied or authentication canceled`
  String get exceptionUnauthorizedDesc {
    return Intl.message(
      'Access denied or authentication canceled',
      name: 'exceptionUnauthorizedDesc',
      desc: '',
      args: [],
    );
  }

  /// `No internet connection`
  String get exceptionConnection {
    return Intl.message(
      'No internet connection',
      name: 'exceptionConnection',
      desc: '',
      args: [],
    );
  }

  /// `Service is not available`
  String get exceptionExternalServer {
    return Intl.message(
      'Service is not available',
      name: 'exceptionExternalServer',
      desc: '',
      args: [],
    );
  }

  /// `No implementation of the http-method`
  String get exceptionHttpMethod {
    return Intl.message(
      'No implementation of the http-method',
      name: 'exceptionHttpMethod',
      desc: '',
      args: [],
    );
  }

  /// `Unknown field type`
  String get exceptionRepoUnknownField {
    return Intl.message(
      'Unknown field type',
      name: 'exceptionRepoUnknownField',
      desc: '',
      args: [],
    );
  }

  /// `Failed to load`
  String get exceptionRepoLoading {
    return Intl.message(
      'Failed to load',
      name: 'exceptionRepoLoading',
      desc: '',
      args: [],
    );
  }

  /// `Error adding new entry`
  String get exceptionRepoDbInsert {
    return Intl.message(
      'Error adding new entry',
      name: 'exceptionRepoDbInsert',
      desc: '',
      args: [],
    );
  }

  /// `Data clearing error`
  String get exceptionRepoDbDelete {
    return Intl.message(
      'Data clearing error',
      name: 'exceptionRepoDbDelete',
      desc: '',
      args: [],
    );
  }

  /// `Chat is not found`
  String get exceptionRepoChatNotFound {
    return Intl.message(
      'Chat is not found',
      name: 'exceptionRepoChatNotFound',
      desc: '',
      args: [],
    );
  }

  /// `Bad response format`
  String get exceptionFormat {
    return Intl.message(
      'Bad response format',
      name: 'exceptionFormat',
      desc: '',
      args: [],
    );
  }

  /// `Request was cancelled`
  String get exceptionDioCancel {
    return Intl.message(
      'Request was cancelled',
      name: 'exceptionDioCancel',
      desc: '',
      args: [],
    );
  }

  /// `Timeout to connect`
  String get exceptionDioConnectTimeout {
    return Intl.message(
      'Timeout to connect',
      name: 'exceptionDioConnectTimeout',
      desc: '',
      args: [],
    );
  }

  /// `Timeout to receive data`
  String get exceptionDioReceiveTimeout {
    return Intl.message(
      'Timeout to receive data',
      name: 'exceptionDioReceiveTimeout',
      desc: '',
      args: [],
    );
  }

  /// `Timeout to send data`
  String get exceptionDioSendTimeout {
    return Intl.message(
      'Timeout to send data',
      name: 'exceptionDioSendTimeout',
      desc: '',
      args: [],
    );
  }

  /// `Incorrect server response status`
  String get exceptionDioResponse {
    return Intl.message(
      'Incorrect server response status',
      name: 'exceptionDioResponse',
      desc: '',
      args: [],
    );
  }

  /// `Something was wrong...`
  String get exceptionSomethingWasWrong {
    return Intl.message(
      'Something was wrong...',
      name: 'exceptionSomethingWasWrong',
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
