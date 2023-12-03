// Package imports:
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@injectable
class DioProvider {
  Dio provideDio({List<InterceptorsWrapper>? interceptorList}) => Dio(
        BaseOptions(
          headers: {'Content-Type': 'application/json'},
          connectTimeout: 30000,
          receiveTimeout: 30000,
        ),
      )..interceptors.addAll(interceptorList ?? []);
}
