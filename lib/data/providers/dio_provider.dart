// Package imports:
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@injectable
class DioProvider {
  Dio provideDio(String baseUrl, {List<InterceptorsWrapper>? interceptorList}) => Dio(
        BaseOptions(
          baseUrl: baseUrl,
          headers: {'Content-Type': 'application/json'},
        ),
      )..interceptors.addAll(interceptorList ?? []);
}
