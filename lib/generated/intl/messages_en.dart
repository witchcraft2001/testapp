// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a en locale. All the
// messages from the main program should be duplicated here with the same
// function name.

// Ignore issues from commonly used lints in this file.
// ignore_for_file:unnecessary_brace_in_string_interps, unnecessary_new
// ignore_for_file:prefer_single_quotes,comment_references, directives_ordering
// ignore_for_file:annotate_overrides,prefer_generic_function_type_aliases
// ignore_for_file:unused_import, file_names, avoid_escaping_inner_quotes
// ignore_for_file:unnecessary_string_interpolations, unnecessary_string_escapes

import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';

final messages = new MessageLookup();

typedef String MessageIfAbsent(String messageStr, List<dynamic> args);

class MessageLookup extends MessageLookupByLibrary {
  String get localeName => 'en';

  static String m0(version) => "Version: ${version}";

  static String m1(name) => "Hi ${name}!";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "appVersion": m0,
        "authorization": MessageLookupByLibrary.simpleMessage("Authorization"),
        "btnAddBusinessCard":
            MessageLookupByLibrary.simpleMessage("Add business card"),
        "btnApprove": MessageLookupByLibrary.simpleMessage("Approve"),
        "btnBack": MessageLookupByLibrary.simpleMessage("Back"),
        "btnBackToMain":
            MessageLookupByLibrary.simpleMessage("Go back to main"),
        "btnCancel": MessageLookupByLibrary.simpleMessage("Cancel"),
        "btnClose": MessageLookupByLibrary.simpleMessage("Close"),
        "btnConfirm": MessageLookupByLibrary.simpleMessage("Confirm"),
        "btnDone": MessageLookupByLibrary.simpleMessage("Done"),
        "btnLogin": MessageLookupByLibrary.simpleMessage("Log in"),
        "btnLogout": MessageLookupByLibrary.simpleMessage("Logout"),
        "btnOk": MessageLookupByLibrary.simpleMessage("OK"),
        "btnReject": MessageLookupByLibrary.simpleMessage("Reject"),
        "btnRemove": MessageLookupByLibrary.simpleMessage("Remove"),
        "btnRetry": MessageLookupByLibrary.simpleMessage("Retry"),
        "btnSave": MessageLookupByLibrary.simpleMessage("Save"),
        "btnSelectAll": MessageLookupByLibrary.simpleMessage("Select all"),
        "btnSend": MessageLookupByLibrary.simpleMessage("Send"),
        "btnShare": MessageLookupByLibrary.simpleMessage("Share"),
        "cardLocaleGlobal": MessageLookupByLibrary.simpleMessage("Global"),
        "cardLocaleRu": MessageLookupByLibrary.simpleMessage("Ru"),
        "chatBot": MessageLookupByLibrary.simpleMessage("Chat"),
        "chatNoShow": MessageLookupByLibrary.simpleMessage("Chat unavailable"),
        "chatsPage": MessageLookupByLibrary.simpleMessage("Chats"),
        "clickButton":
            MessageLookupByLibrary.simpleMessage("Click on the button"),
        "company": MessageLookupByLibrary.simpleMessage("Company"),
        "decisionComment":
            MessageLookupByLibrary.simpleMessage("Comment on your decision"),
        "delegated": MessageLookupByLibrary.simpleMessage("Delegated"),
        "dialogRemoveBusinessCard": MessageLookupByLibrary.simpleMessage(
            "Are you sure you want to remove\nthe business card?"),
        "dialogRemoveDocuments": MessageLookupByLibrary.simpleMessage(
            "Are you sure you want to remove\nthe selected documents?"),
        "email": MessageLookupByLibrary.simpleMessage("Email"),
        "eventTitle": MessageLookupByLibrary.simpleMessage("Events"),
        "feedbackSendingError": MessageLookupByLibrary.simpleMessage(
            "There are no email clients configured on the device.\n\nPlease, add settings and try again"),
        "feedbackTextLabel": MessageLookupByLibrary.simpleMessage(
            "Enter a suggestion or comment"),
        "feedbackTitle": MessageLookupByLibrary.simpleMessage("Feedback"),
        "fieldRequiredComment":
            MessageLookupByLibrary.simpleMessage("Please, enter a comment"),
        "firstname": MessageLookupByLibrary.simpleMessage("First name"),
        "greetings": m1,
        "internalVPN": MessageLookupByLibrary.simpleMessage(
            "Check that you have TerraLink VPN connected"),
        "kilobytes": MessageLookupByLibrary.simpleMessage("kB"),
        "lastname": MessageLookupByLibrary.simpleMessage("Last name"),
        "loadingError": MessageLookupByLibrary.simpleMessage("Loading error"),
        "mainPage": MessageLookupByLibrary.simpleMessage("Main"),
        "meetTitle": MessageLookupByLibrary.simpleMessage("Meet!"),
        "megabytes": MessageLookupByLibrary.simpleMessage("MB"),
        "messageDocumentNoApp": MessageLookupByLibrary.simpleMessage(
            "There is no application to open the file"),
        "messageDocumentOpenError": MessageLookupByLibrary.simpleMessage(
            "An error occurred while opening the file"),
        "messageNoBusinessCards": MessageLookupByLibrary.simpleMessage(
            "You don\'t have\nbusiness cards yet"),
        "messageNoDocumentDesc":
            MessageLookupByLibrary.simpleMessage("Use button below to add"),
        "messageNoDocuments": MessageLookupByLibrary.simpleMessage(
            "You haven\'t added \nany documents yet"),
        "mobilePhone": MessageLookupByLibrary.simpleMessage("Phone"),
        "mockChat": MessageLookupByLibrary.simpleMessage(
            "assets/jsons/chat_mock_en.json"),
        "mockNewsAssetPath": MessageLookupByLibrary.simpleMessage(
            "assets/jsons/news_mock_en.json"),
        "msalClientId": MessageLookupByLibrary.simpleMessage("MSAL clientId"),
        "msalScope": MessageLookupByLibrary.simpleMessage("MSAL scope"),
        "msalTenantId": MessageLookupByLibrary.simpleMessage("MSAL tenantId"),
        "newMessagesTitle":
            MessageLookupByLibrary.simpleMessage("New messages"),
        "newsApiBaseUrl":
            MessageLookupByLibrary.simpleMessage("News server host"),
        "noMessages": MessageLookupByLibrary.simpleMessage("No messages"),
        "notificationBilling":
            MessageLookupByLibrary.simpleMessage("Billing reminder"),
        "notificationBillingMessage": MessageLookupByLibrary.simpleMessage(
            "Don\'t forget to deposit all hours worked last week before the end of the day"),
        "notifications": MessageLookupByLibrary.simpleMessage("Notifications"),
        "offline": MessageLookupByLibrary.simpleMessage("Offline"),
        "online": MessageLookupByLibrary.simpleMessage("Online"),
        "pollTitle": MessageLookupByLibrary.simpleMessage("Poll"),
        "pollsTitle": MessageLookupByLibrary.simpleMessage("Polls"),
        "position": MessageLookupByLibrary.simpleMessage("Position"),
        "presets": MessageLookupByLibrary.simpleMessage("Presets"),
        "profileDocumentAdd":
            MessageLookupByLibrary.simpleMessage("Add document"),
        "profileDocumentEditLabel":
            MessageLookupByLibrary.simpleMessage("Title of the document"),
        "profileDocuments":
            MessageLookupByLibrary.simpleMessage("My documents"),
        "profilePage": MessageLookupByLibrary.simpleMessage("Profile"),
        "regionFirst": MessageLookupByLibrary.simpleMessage(
            "Select your region to display news"),
        "regionSecond": MessageLookupByLibrary.simpleMessage(
            "You can always change it later in your profile"),
        "requestsPage": MessageLookupByLibrary.simpleMessage("Requests"),
        "requiredToFill":
            MessageLookupByLibrary.simpleMessage("Required field"),
        "searchDocuments":
            MessageLookupByLibrary.simpleMessage("Search documents"),
        "searchDocumentsNoResults":
            MessageLookupByLibrary.simpleMessage("Could not find documents"),
        "searchMsgAndDocsHint":
            MessageLookupByLibrary.simpleMessage("Search messages, documents"),
        "selectLocation":
            MessageLookupByLibrary.simpleMessage("Select location"),
        "settingsAboutApp": MessageLookupByLibrary.simpleMessage("About App"),
        "settingsLocale":
            MessageLookupByLibrary.simpleMessage("Select language"),
        "settingsNotification":
            MessageLookupByLibrary.simpleMessage("Popup notifications"),
        "settingsNotificationBilling":
            MessageLookupByLibrary.simpleMessage("Wednesday billing reminders"),
        "settingsNotificationManage":
            MessageLookupByLibrary.simpleMessage("Notification management"),
        "settingsRegion": MessageLookupByLibrary.simpleMessage("Region"),
        "settingsTheme": MessageLookupByLibrary.simpleMessage("Theme"),
        "settingsThemeAppearance":
            MessageLookupByLibrary.simpleMessage("Appearance"),
        "settingsThemeSystem":
            MessageLookupByLibrary.simpleMessage("Set as system"),
        "settingsThemeSystemDescription": MessageLookupByLibrary.simpleMessage(
            "App skin will change based on device appearance"),
        "somethingWasWrong":
            MessageLookupByLibrary.simpleMessage("Something was wrong..."),
        "takeSurvey": MessageLookupByLibrary.simpleMessage("Take the Survey"),
        "taskSendingError": MessageLookupByLibrary.simpleMessage(
            "Request execution failed, please update the task list and try again later"),
        "taskStatusApproved": MessageLookupByLibrary.simpleMessage("Approved"),
        "taskStatusRejected": MessageLookupByLibrary.simpleMessage("Rejected"),
        "taskStatusWaiting": MessageLookupByLibrary.simpleMessage("Waiting"),
        "tasks": MessageLookupByLibrary.simpleMessage("Tasks"),
        "tasksEas": MessageLookupByLibrary.simpleMessage("Payment requests"),
        "tasksEasSearchHint":
            MessageLookupByLibrary.simpleMessage("Search by ID or initiator"),
        "tasksEmptyList":
            MessageLookupByLibrary.simpleMessage("No active tasks"),
        "tasksEmptyListBySearch": MessageLookupByLibrary.simpleMessage(
            "There are no tasks matching the search parameters"),
        "tasksSbsAM": MessageLookupByLibrary.simpleMessage("AM"),
        "tasksSbsApiBaseUrl":
            MessageLookupByLibrary.simpleMessage("Tasks SBS server host"),
        "tasksSbsCompany": MessageLookupByLibrary.simpleMessage("Company"),
        "tasksSbsConfirmMessage": MessageLookupByLibrary.simpleMessage(
            "Approve hours entered by employees?"),
        "tasksSbsHoursOVT": MessageLookupByLibrary.simpleMessage("OVT"),
        "tasksSbsHoursOVTAndHalf":
            MessageLookupByLibrary.simpleMessage("OVT 1.5"),
        "tasksSbsHoursPaid": MessageLookupByLibrary.simpleMessage("Paid"),
        "tasksSbsHoursUnpaid": MessageLookupByLibrary.simpleMessage("Unpaid"),
        "tasksSbsLate":
            MessageLookupByLibrary.simpleMessage("SBS billing (Thrift-box)"),
        "tasksSbsPM": MessageLookupByLibrary.simpleMessage("PM"),
        "tasksSbsProject":
            MessageLookupByLibrary.simpleMessage("About the project"),
        "tasksSbsSearchHint":
            MessageLookupByLibrary.simpleMessage("Search by project ID"),
        "tasksSbsWeekly":
            MessageLookupByLibrary.simpleMessage("SBS billing (PM)"),
        "tasksSickLeaves":
            MessageLookupByLibrary.simpleMessage("Sick leave requests"),
        "tasksSummaryApiBaseUrl": MessageLookupByLibrary.simpleMessage(
            "Tasks Summary, EAS, Vacations server host"),
        "tasksVacation":
            MessageLookupByLibrary.simpleMessage("Vacation requests"),
        "tasksVacationSearchHint":
            MessageLookupByLibrary.simpleMessage("Search by employee"),
        "theme": MessageLookupByLibrary.simpleMessage("Theme"),
        "title": MessageLookupByLibrary.simpleMessage("Terralink"),
        "titleCreateCard": MessageLookupByLibrary.simpleMessage("Create card"),
        "titleEditCard": MessageLookupByLibrary.simpleMessage("Edit card"),
        "titleMyBusinessCards":
            MessageLookupByLibrary.simpleMessage("My business card"),
        "titleSettings":
            MessageLookupByLibrary.simpleMessage("Application settings"),
        "unknownRoute": MessageLookupByLibrary.simpleMessage("Page not found"),
        "update": MessageLookupByLibrary.simpleMessage("Update"),
        "writeMessage":
            MessageLookupByLibrary.simpleMessage("Write your message"),
        "wsBaseUrl": MessageLookupByLibrary.simpleMessage("Chat server host"),
        "youAuthorizedInCorporateApp": MessageLookupByLibrary.simpleMessage(
            "You are authorized in the TerraLink corporate application")
      };
}
