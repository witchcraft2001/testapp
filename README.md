<h1 align="center">TerraLife</h1>

# Versions
## 2.2.2
- добавлена работа с примерами запросов для функциональности TerraGPT


## 2.2.1
- изменен приоритет отображения комнат чата: отображаются комнаты не из локальной БД, а только те, что отданы сервером
- изменен приоритет доступности раздела "Новичку"


## 2.2.0
- добавлен новый раздел "Новичку"
- обновлено отображение новостей, открыток
- изменен раздел "Чаты", добавлена поддержка TerraGPT
- обновлен дизайн некоторых элементов
- добавлен экран-предупреждение о наличии новых версий приложений

## 2.1.5
- исправлено отображение управляющих элементов при отсутствии доступных шаблонов открыток

## 2.1.4
- улучшено качество генерируемых открыток

## 2.1.3
- добавлена новая функциональность "Открытки" (теперь на основе динамических шаблонов)
- обновлен дизайн "Историй"
- расширена поддержка ссылок в контенте "Историй"

## 2.1.2
- исправлены некоторые проблемы функциональностей "Благодарности" и "Поделиться"

## 2.0.15
- исправлено отображение текущей версии приложения

## 2.0.14
- исправлены проблемы определения телефонного номера в QR-коде визитки

## 2.0.13
- добавлен раздел "Открытки" с новогодним поздравлением

## 2.0.12
- добавлено новогоднее оформление

## 2.0.11
- добавлены интерфейсные улучшения

## 2.0.10
- добавлены интерфейсные улучшения

## 2.0.9
- добавлена возможность просмотра вложений Заявок на оплату
- исправлено отображение карточек раздела "Задачи"

## 2.0.8
- исправлены проблемы отображения:
    - некоторых всплывающих уведомлений,
    - номера выбранной для исполнения задачи

## 2.0.7
- добавлена возможность общего обновления раздела "Задачи"
- обновлены тексты для подтверждающих сообщений

## 2.0.4
- изменен логотип приложения
- добавлены новые подразделы в раздел "Задачи"

## 2.0.3
- старт проекта

<br />

# For development
## Run project
**Prod** - default for release builds.
Compile with injectable environment **.prod** and included Crashlytics configuration:
```sh
flutter run lib/main.dart
```

**Debug** - need to setup IDE as default for debug runs.
Compile with injectable environment **.dev**, without Crashlytics configuration:
```sh
flutter run lib/main_debug.dart
```

<br />

## Generate files
### Injections,  `json_serializable`-models and `freezed`-states:
After adding some new injectable or injecting class need to generate file injection.config.dart, for this do next tasks: update pubspec dependencies and
```sh
dart run build_runner build --delete-conflicting-outputs
```

<br />

### Localization and translations
- Need to install the extension in the IDE: `Flutter Intl`

<br />

## Import sorter command (execute after task completion)
```sh
dart run import_sorter:main
```

<br />

## Design
[Link to Figma](https://www.figma.com/file/ZI8nK5UZUvxb64EjEOw3AT/TL?type=design&node-id=854-1155&mode=design&t=mMSNMAPtGK8YNLI2-4)

<br />

## Test deeplinks
### iOS:
```sh
xcrun simctl openurl booted "terralife://applink/{path}"
```

### Android:
```sh
adb shell am start -W -a android.intent.action.VIEW -d "terralife://applink/{path}" com.terralink.app
```

```sh
adb shell am start -W -a android.intent.action.VIEW -c android.intent.category.BROWSABLE -d "https://{адрес ресурса, где будет лежать assetlinks.json с ключом}/{path}" com.terralink.app
```

<br />

## Fix some problems
If after second step happens error, project needs to clean:

1. flutter clean
2. flutter packages pub get
3. flutter packages pub run build_runner build

<br />

## Publishing iOS
- [Read first](https://docs.flutter.dev/deployment/ios)
- or [read second](https://flutter-website-staging.firebaseapp.com/ios-release/)
- or install and open the Apple Transport macOS app. Drag and drop the build/ios/ipa/*.ipa app bundle into the app.

### After building the new version, add `dSYMs` to Crashlytics

<br />

## Before building Android
### Create a `key.properties` file in `<project dir>/android/..` with data from `android_signatute_data.json`, example:
```
storePassword=<value>
keyPassword=<value>
keyAlias=<value>
storeFile=<path to "upload-key.jks">
```

### or copy `key.properties` file from: `<project dir>/to_build_android/..` to `<project dir>/android/..`

<br />

## Build Android

### &#8729; .aab:

```sh
flutter build appbundle --release lib/main.dart
```

### &#8729; .apk:

```sh
flutter build apk --release lib/main.dart
```

### &#8729; debug .apk:

```sh
flutter build apk --debug lib/main_debug.dart
```
<br />
