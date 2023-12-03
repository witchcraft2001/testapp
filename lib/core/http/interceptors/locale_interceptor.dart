// Package imports:
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:intl/intl.dart';

@lazySingleton
class LocaleInterceptor extends InterceptorsWrapper {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) async {
    options.headers['Accept-Language'] = _getLocale();

    handler.next(options);
  }

  String _getLocale() {
    final locale = Intl.getCurrentLocale();
    if (locale.length > 2) {
      return locale.substring(0, 2);
    }

    return locale;
  }
}
