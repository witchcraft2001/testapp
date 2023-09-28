<h1 align="center">TerraLife</h1>

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
flutter packages pub run build_runner build --delete-conflicting-outputs
```

<br />

### Localization and translations
- Need to install the extension in the IDE: `Flutter Intl`

<br />

## Import sorter command (execute after task completion)
```sh
flutter pub run import_sorter:main
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
