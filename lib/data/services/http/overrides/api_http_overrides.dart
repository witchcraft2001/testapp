// Dart imports:
import 'dart:io';

// Package imports:
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:terralinkapp/common/constants.dart';

@LazySingleton(env: [Environment.dev, Environment.prod])
class ApiHttpOverrides extends HttpOverrides {
  final Constants _contstants;

  ApiHttpOverrides(
    this._contstants,
  );

  @override
  HttpClient createHttpClient(SecurityContext? context) {
    return super.createHttpClient(context)
      ..badCertificateCallback = ((_, host, __) {
        final isDisableCertificateCheck = [
          _contstants.getNewsApiBaseUrl(),
        ].any((url) => url.contains(host));

        return isDisableCertificateCheck;
      });
  }
}
