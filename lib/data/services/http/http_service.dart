// Dart imports:
import 'dart:io';

// Flutter imports:
import 'package:flutter/foundation.dart';

// Package imports:
import 'package:curl_logger_dio_interceptor/curl_logger_dio_interceptor.dart';
import 'package:dio/dio.dart';

// Project imports:
import 'package:terralinkapp/common/exceptions/http_service_exception.dart';
import 'package:terralinkapp/data/services/log_service.dart';

// ignore: constant_identifier_names
enum Method { POST, GET, PUT, DELETE, PATCH }

abstract class HttpService {
  final Dio _dio;
  final LogService _logService;

  HttpService(this._dio, this._logService, {List<InterceptorsWrapper>? interceptorList}) {
    if (kDebugMode) {
      interceptors.add(CurlLoggerDioInterceptor(printOnSuccess: true));
    }
    interceptorList?.forEach((e) => interceptors.add(e));
  }

  Interceptors get interceptors => _dio.interceptors;

  Future<dynamic> request({
    required String url,
    Method method = Method.GET,
    Map<String, dynamic>? params,
  }) async {
    Response response;

    try {
      switch (method) {
        case Method.POST:
          response = await _dio.post(url, data: params);
          break;

        case Method.DELETE:
          response = await _dio.delete(url);
          break;

        case Method.PATCH:
          response = await _dio.patch(url, data: params);
          break;

        case Method.PUT:
          response = await _dio.put(url, data: params);
          break;

        case Method.GET:
          response = await _dio.get(url, queryParameters: params);
          break;

        default:
          throw MethodHttpException(
            'No method implementation to make http ${method.name.toUpperCase()} request',
          );
      }

      if (response.statusCode == 200) {
        return response;
      } else if (response.statusCode == 401) {
        throw UnauthorizedHttpException();
      } else if (response.statusCode == 500) {
        throw ServerErrorHttpException();
      } else {
        throw SomeHttpException(response.statusCode);
      }
    } on SocketException catch (_) {
      // logger.e(e);
      //No Internet Connection
      throw ConnectionErrorException();
    } on FormatException catch (e, stackTrace) {
      await _logService.recordError(e, stackTrace);

      throw Exception('Bad response format');
    } on DioError catch (e, stackTrace) {
      if (e.response?.statusCode == 401) {
        throw UnauthorizedHttpException();
      }
      await _logService.recordError(e, stackTrace);

      rethrow;
    } catch (e, stackTrace) {
      await _logService.recordError(e, stackTrace);

      if (e is UnauthorizedHttpException) {
        rethrow;
      }
      throw Exception('Something went wrong');
    }
  }
}
