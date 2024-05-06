// Dart imports:
import 'dart:io';

// Flutter imports:
import 'package:flutter/foundation.dart';

// Package imports:
import 'package:curl_logger_dio_interceptor/curl_logger_dio_interceptor.dart';
import 'package:dio/dio.dart';

// Project imports:
import 'package:terralinkapp/core/exceptions/format_exception.dart';
import 'package:terralinkapp/core/exceptions/http_service_exception.dart';
import 'package:terralinkapp/core/exceptions/tl_exception.dart';
import 'package:terralinkapp/core/services/log_service.dart';

// ignore: constant_identifier_names
enum Method { POST, GET, GET_FILE, PUT, DELETE, PATCH }

const List<int> statusCodesSuccess = [200, 201, 204];

abstract class HttpService {
  final Dio _dio;
  final LogService _logService;

  HttpService(
    this._dio,
    this._logService, {
    List<InterceptorsWrapper>? interceptorList,
  }) {
    if (kDebugMode) {
      interceptors.add(CurlLoggerDioInterceptor(printOnSuccess: true));
    }
    interceptorList?.forEach((e) => interceptors.add(e));
  }

  Interceptors get interceptors => _dio.interceptors;

  String get baseUrl;

  String _getUrl(String url) {
    final fixedBaseUrl = baseUrl.endsWith('/') ? baseUrl : '$baseUrl/';
    final fixedUrl = url.startsWith('/') && url.length > 1 ? url.substring(1) : url;

    return '$fixedBaseUrl$fixedUrl';
  }

  Future<dynamic> request({
    required String url,
    Method method = Method.GET,
    dynamic params,
  }) async {
    Response response;

    try {
      switch (method) {
        case Method.POST:
          response = await _dio.post(_getUrl(url), data: params);
          break;

        case Method.DELETE:
          response = await _dio.delete(_getUrl(url), queryParameters: params);
          break;

        case Method.PATCH:
          response = await _dio.patch(_getUrl(url), data: params);
          break;

        case Method.PUT:
          response = await _dio.put(_getUrl(url), data: params);
          break;

        case Method.GET:
          response = await _dio.get(_getUrl(url), queryParameters: params);
          break;

        case Method.GET_FILE:
          response = await _dio.get(
            _getUrl(url),
            queryParameters: params,
            options: Options(responseType: ResponseType.bytes),
          );
          break;

        default:
          throw MethodHttpException(
            message: 'No method implementation to make http ${method.name.toUpperCase()} request',
          );
      }

      if (statusCodesSuccess.contains(response.statusCode)) {
        return response;
      } else if (response.statusCode == 401) {
        throw const UnauthorizedHttpException();
      } else if (response.statusCode == 500) {
        throw const ServerErrorHttpException();
      } else {
        throw SomeHttpException(statusCode: response.statusCode);
      }
    } on SocketException catch (_) {
      throw const ConnectionErrorException();
    } on FormatException catch (e, stackTrace) {
      await _logService.recordError(e, stackTrace);

      throw const TLFormatException();
    } on DioError catch (e, stackTrace) {
      final exception = e.response?.statusCode == 401
          ? const UnauthorizedHttpException()
          : DioException(
              type: exceptionDio[e.type] ?? TlExceptionType.dioOther,
              statusCode: e.response?.statusCode,
            );

      await _logService.recordError(exception, stackTrace);

      throw exception;
    } catch (e, stackTrace) {
      await _logService.recordError(e, stackTrace);

      rethrow;
    }
  }
}
