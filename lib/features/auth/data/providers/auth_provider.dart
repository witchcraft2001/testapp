// Package imports:
import 'package:aad_oauth/aad_oauth.dart';
import 'package:aad_oauth/model/config.dart';
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:terralinkapp/core/common/constants.dart';
import 'package:terralinkapp/core/navigation/navigator_key_provider.dart';
import 'package:terralinkapp/core/ui/widgets/loaders/tl_splash.dart';
import 'package:terralinkapp/features/settings/domain/use_cases/get_all_api_settings_use_case.dart';

@LazySingleton(
  env: [Environment.dev, Environment.prod],
)
class AuthProvider {
  late AadOAuth _auth;
  final GetAllApiSettingsUseCase _getAllApiSettingsUseCase;
  final Constants _constants;
  final NavigatorKeyProvider _navigatorKeyProvider;

  AuthProvider(
    this._constants,
    this._navigatorKeyProvider,
    this._getAllApiSettingsUseCase,
  ) {
    init();
  }

  void init() {
    final apiSettings = _getAllApiSettingsUseCase();
    final config = Config(
      tenant: apiSettings.msalTenantId,
      clientId: apiSettings.msalClientId,
      scope: apiSettings.msalScope,
      // redirectUri is Optional as a default is calculated based on app type/web location
      redirectUri: _constants.getMsalRedirectUri(),
      navigatorKey: _navigatorKeyProvider.rootNavigatorKey,
      webUseRedirect: true,
      // default is false - on web only, forces a redirect flow instead of popup auth
      //Optional parameter: Centered CircularProgressIndicator while rendering web page in WebView
      loader: const TlSplash(),
      // postLogoutRedirectUri: 'http://your_base_url/logout', //optional
    );
    _auth = AadOAuth(config);
  }

  AadOAuth get auth => _auth;
}
