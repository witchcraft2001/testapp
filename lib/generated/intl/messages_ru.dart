// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a ru locale. All the
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
  String get localeName => 'ru';

  static String m0(version) => "Версия: ${version}";

  static String m1(num, count) => "${num} из ${count}";

  static String m2(name) => "Привет ${name}!";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "appVersion": m0,
        "authorization": MessageLookupByLibrary.simpleMessage("Авторизация"),
        "btnAddBusinessCard":
            MessageLookupByLibrary.simpleMessage("Добавить визитную карточку"),
        "btnApprove": MessageLookupByLibrary.simpleMessage("Утвердить"),
        "btnBack": MessageLookupByLibrary.simpleMessage("Назад"),
        "btnBackToMain":
            MessageLookupByLibrary.simpleMessage("Вернуться на главную"),
        "btnCancel": MessageLookupByLibrary.simpleMessage("Отменить"),
        "btnClose": MessageLookupByLibrary.simpleMessage("Закрыть"),
        "btnConfirm": MessageLookupByLibrary.simpleMessage("Подтвердить"),
        "btnDone": MessageLookupByLibrary.simpleMessage("Готово"),
        "btnLogin": MessageLookupByLibrary.simpleMessage("Войти"),
        "btnLogout": MessageLookupByLibrary.simpleMessage("Выйти"),
        "btnOk": MessageLookupByLibrary.simpleMessage("OK"),
        "btnReject": MessageLookupByLibrary.simpleMessage("Отклонить"),
        "btnRemove": MessageLookupByLibrary.simpleMessage("Удалить"),
        "btnRetry": MessageLookupByLibrary.simpleMessage("Повторить"),
        "btnSave": MessageLookupByLibrary.simpleMessage("Сохранить"),
        "btnSelectAll": MessageLookupByLibrary.simpleMessage("Выбрать все"),
        "btnSend": MessageLookupByLibrary.simpleMessage("Отправить"),
        "btnShare": MessageLookupByLibrary.simpleMessage("Поделиться"),
        "cardLocaleGlobal": MessageLookupByLibrary.simpleMessage("Global"),
        "cardLocaleRu": MessageLookupByLibrary.simpleMessage("Ru"),
        "chatBot": MessageLookupByLibrary.simpleMessage("Чат"),
        "chatNoShow": MessageLookupByLibrary.simpleMessage("Чат недоступен"),
        "chatsPage": MessageLookupByLibrary.simpleMessage("Чаты"),
        "clickButton":
            MessageLookupByLibrary.simpleMessage("Нажмите на кнопку"),
        "company": MessageLookupByLibrary.simpleMessage("Компания"),
        "counter": m1,
        "decisionComment": MessageLookupByLibrary.simpleMessage(
            "Комментарий к Вашему решению"),
        "dialogRemoveBusinessCard": MessageLookupByLibrary.simpleMessage(
            "Вы действительно хотите удалить визитную карточку?"),
        "dialogRemoveDocuments": MessageLookupByLibrary.simpleMessage(
            "Вы действительно хотите удалить выбранные документы?"),
        "email": MessageLookupByLibrary.simpleMessage("Email"),
        "eventTitle": MessageLookupByLibrary.simpleMessage("Мероприятие"),
        "feedbackSendingError": MessageLookupByLibrary.simpleMessage(
            "На устройстве отсутствуют настроенные почтовые клиенты.\n\nПожалуйста, добавьте настройки и попробуйте снова"),
        "feedbackTextLabel": MessageLookupByLibrary.simpleMessage(
            "Укажите предложение или замечание"),
        "feedbackTitle": MessageLookupByLibrary.simpleMessage("Обратная связь"),
        "fieldRequiredComment": MessageLookupByLibrary.simpleMessage(
            "Пожалуйста, введите комментарий"),
        "firstname": MessageLookupByLibrary.simpleMessage("Имя"),
        "greetings": m2,
        "kilobytes": MessageLookupByLibrary.simpleMessage("Кбайт"),
        "lastname": MessageLookupByLibrary.simpleMessage("Фамилия"),
        "loadingError": MessageLookupByLibrary.simpleMessage("Ошибка загрузки"),
        "mainPage": MessageLookupByLibrary.simpleMessage("Главная"),
        "meetTitle": MessageLookupByLibrary.simpleMessage("Знакомьтесь!"),
        "megabytes": MessageLookupByLibrary.simpleMessage("Мбайт"),
        "messageDocumentNoApp": MessageLookupByLibrary.simpleMessage(
            "Отсутствует приложение для открытия файла"),
        "messageDocumentOpenError": MessageLookupByLibrary.simpleMessage(
            "При открытии файла произошла ошибка"),
        "messageNoBusinessCards": MessageLookupByLibrary.simpleMessage(
            "У Вас ещё нет\nвизитных карточек"),
        "messageNoDocumentDesc": MessageLookupByLibrary.simpleMessage(
            "Для добавления воспользуйтесь\nкнопкой ниже"),
        "messageNoDocuments": MessageLookupByLibrary.simpleMessage(
            "Вы еще не добавили\nни одного документа"),
        "mobilePhone":
            MessageLookupByLibrary.simpleMessage("Мобильный телефон"),
        "mockChat": MessageLookupByLibrary.simpleMessage(
            "assets/jsons/chat_mock_ru.json"),
        "mockNewsAssetPath": MessageLookupByLibrary.simpleMessage(
            "assets/jsons/news_mock_ru.json"),
        "msalClientId": MessageLookupByLibrary.simpleMessage("MSAL clientId"),
        "msalScope": MessageLookupByLibrary.simpleMessage("MSAL scope"),
        "msalTenantId": MessageLookupByLibrary.simpleMessage("MSAL tenantId"),
        "newMessagesTitle":
            MessageLookupByLibrary.simpleMessage("Новые сообщения"),
        "newsApiBaseUrl":
            MessageLookupByLibrary.simpleMessage("News server host"),
        "noMessages": MessageLookupByLibrary.simpleMessage("Нет сообщений"),
        "notificationBilling":
            MessageLookupByLibrary.simpleMessage("Напоминание о биллинге"),
        "notificationBillingMessage": MessageLookupByLibrary.simpleMessage(
            "Не забудьте внести все отработанные на прошлой неделе часы до конца дня"),
        "notifications": MessageLookupByLibrary.simpleMessage("Уведомления"),
        "offline": MessageLookupByLibrary.simpleMessage("Offline"),
        "online": MessageLookupByLibrary.simpleMessage("Online"),
        "pollTitle": MessageLookupByLibrary.simpleMessage("Опрос"),
        "pollsTitle": MessageLookupByLibrary.simpleMessage("Опросы"),
        "position": MessageLookupByLibrary.simpleMessage("Должность"),
        "profileDocumentAdd":
            MessageLookupByLibrary.simpleMessage("Добавить документ"),
        "profileDocumentEditLabel":
            MessageLookupByLibrary.simpleMessage("Наименование документа"),
        "profileDocuments":
            MessageLookupByLibrary.simpleMessage("Мои документы"),
        "profilePage": MessageLookupByLibrary.simpleMessage("Профиль"),
        "regionFirst": MessageLookupByLibrary.simpleMessage(
            "Выберите Ваш регион для отображения новостей"),
        "regionSecond": MessageLookupByLibrary.simpleMessage(
            "В дальнейшем его всегда можно изменить в профиле"),
        "requestsPage": MessageLookupByLibrary.simpleMessage("Заявки"),
        "requiredToFill":
            MessageLookupByLibrary.simpleMessage("Обязательное поле"),
        "searchDocuments":
            MessageLookupByLibrary.simpleMessage("Поиск документов"),
        "searchDocumentsNoResults":
            MessageLookupByLibrary.simpleMessage("Не удалось найти документы"),
        "searchMsgAndDocsHint":
            MessageLookupByLibrary.simpleMessage("Поиск сообщений, документов"),
        "searchTasksHint":
            MessageLookupByLibrary.simpleMessage("Поиск по ID или инициатору"),
        "selectLocation":
            MessageLookupByLibrary.simpleMessage("Выберите локацию"),
        "settingsAboutApp":
            MessageLookupByLibrary.simpleMessage("О приложении"),
        "settingsLocale": MessageLookupByLibrary.simpleMessage("Выберите язык"),
        "settingsNotification":
            MessageLookupByLibrary.simpleMessage("Всплывающие уведомления"),
        "settingsNotificationBilling": MessageLookupByLibrary.simpleMessage(
            "Напоминать о биллинге по средам"),
        "settingsNotificationManage":
            MessageLookupByLibrary.simpleMessage("Управление уведомлениями"),
        "settingsRegion": MessageLookupByLibrary.simpleMessage("Регион"),
        "settingsTheme": MessageLookupByLibrary.simpleMessage("Оформление"),
        "settingsThemeAppearance":
            MessageLookupByLibrary.simpleMessage("Внешний вид"),
        "settingsThemeSystem":
            MessageLookupByLibrary.simpleMessage("Установить как в системе"),
        "settingsThemeSystemDescription": MessageLookupByLibrary.simpleMessage(
            "Оформление приложения будет меняться в зависимости от оформления устройства"),
        "somethingWasWrong":
            MessageLookupByLibrary.simpleMessage("Что-то пошло не так..."),
        "takeSurvey": MessageLookupByLibrary.simpleMessage("Пройти опрос"),
        "taskSendingError": MessageLookupByLibrary.simpleMessage(
            "Выполнение заявки произошло с ошибкой, обновите список задач и попробуйте позже"),
        "tasks": MessageLookupByLibrary.simpleMessage("Задачи"),
        "tasksApiBaseUrl":
            MessageLookupByLibrary.simpleMessage("Tasks server host"),
        "tasksEAS": MessageLookupByLibrary.simpleMessage("Заявки на оплату"),
        "tasksEmptyList":
            MessageLookupByLibrary.simpleMessage("Нет активных заявок"),
        "tasksSBS": MessageLookupByLibrary.simpleMessage("Согласование часов"),
        "tasksSickLeaves":
            MessageLookupByLibrary.simpleMessage("Заявки на больничный"),
        "tasksVacations":
            MessageLookupByLibrary.simpleMessage("Заявки на отпуск"),
        "theme": MessageLookupByLibrary.simpleMessage("Тема"),
        "title": MessageLookupByLibrary.simpleMessage("Terralink"),
        "titleCreateCard":
            MessageLookupByLibrary.simpleMessage("Создание карточки"),
        "titleEditCard":
            MessageLookupByLibrary.simpleMessage("Редактирование карточки"),
        "titleMyBusinessCards":
            MessageLookupByLibrary.simpleMessage("Мои визитные карточки"),
        "titleSettings":
            MessageLookupByLibrary.simpleMessage("Настройки приложения"),
        "unknownRoute":
            MessageLookupByLibrary.simpleMessage("Такой страницы нет"),
        "update": MessageLookupByLibrary.simpleMessage("Обновление"),
        "writeMessage":
            MessageLookupByLibrary.simpleMessage("Напишите ваше сообщение"),
        "wsBaseUrl": MessageLookupByLibrary.simpleMessage("Chat server host"),
        "youAuthorizedInCorporateApp": MessageLookupByLibrary.simpleMessage(
            "Вы авторизированы в корпоративном приложении компании TerraLink")
      };
}
