// Package imports:
import 'package:aad_oauth/aad_oauth.dart';
import 'package:aad_oauth/model/config.dart';
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:terralinkapp/common/constants.dart';
import 'package:terralinkapp/data/providers/navigator_key_provider.dart';
import 'package:terralinkapp/presentation/widgets/centered_progress_indicator.dart';

@LazySingleton(env: [Environment.dev, Environment.prod])
class AuthProvider {
  late AadOAuth _auth;

  AuthProvider(Constants constants, NavigatorKeyProvider navigatorKeyProvider) {
    final config = Config(
      tenant: constants.getMsalTenantId(),
      clientId: constants.getMsalClientId(),
      scope: constants.getMsalScope(),
      // redirectUri is Optional as a default is calculated based on app type/web location
      redirectUri: constants.getMsalRedirectUri(),
      navigatorKey: navigatorKeyProvider.rootNavigatorKey,
      webUseRedirect: true,
      // default is false - on web only, forces a redirect flow instead of popup auth
      //Optional parameter: Centered CircularProgressIndicator while rendering web page in WebView
      loader: const CenteredProgressIndicator(),
      // postLogoutRedirectUri: 'http://your_base_url/logout', //optional
    );
    _auth = AadOAuth(config);
  }

  AadOAuth get auth => _auth;
}
