// Flutter imports:
import 'package:flutter/cupertino.dart';

// Package imports:
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

// Project imports:
import 'package:terralinkapp/common/exceptions/http_service_exception.dart';
import 'package:terralinkapp/common/exceptions/unauthorized_exception.dart';
import 'package:terralinkapp/data/models/responses/task_response.dart';
import 'package:terralinkapp/data/services/http/http_service.dart';
import 'package:terralinkapp/data/services/http/tasks_api_service.dart';
import 'package:terralinkapp/presentation/navigation/app_routes.dart';
import '../../../mocks/common/constants_mock.mocks.dart';
import '../../../mocks/data/providers/dio_provider_mock.mocks.dart';
import '../../../mocks/data/providers/navigator_key_provider_mock.mocks.dart';
import '../../../mocks/data/services/http/interceptors/auth_interceptor_mock.mocks.dart';
import '../../../mocks/data/services/http/interceptors/locale_interceptor_mock.mocks.dart';
import '../../../mocks/data/services/log_service_mock.mocks.dart';
import '../../../mocks/data/use_cases/auth/oauth_try_login_use_case_mock.mocks.dart';
import '../../../mocks/dio/dio_mock.mocks.dart';
import '../../../mocks/dio/interceptors_mock.mocks.dart';
import '../../../mocks/dio/response_mock.mocks.dart';
import '../../../mocks/domain/user_mock.mocks.dart';
import '../../../mocks/flutter/global_key_mock.mocks.dart';
import '../../../mocks/flutter/navigator_state_mock.mocks.dart';

void main() {
  const baseUrl = 'https://baseurl.com';

  late MockConstants constants;
  late MockDio dio;
  late MockDioProvider dioProvider;
  late MockLocaleInterceptor localeInterceptor;
  late MockAuthInterceptor authInterceptor;
  late MockOAuthTryLoginUseCase oAuthTryLoginUseCase;
  late MockNavigatorKeyProvider navigatorKeyProvider;
  late MockResponse<TaskResponseList> unauthorizedResponse;
  late MockResponse<TaskResponseList> okResponse;
  late MockInterceptors interceptors;
  late MockLogService logService;
  late MockUser user;
  late MockGlobalKey<NavigatorState> globalKey;
  late MockNavigatorState navigatorState;
  late TasksApiService service;

  setUp(() {
    constants = MockConstants();
    dio = MockDio();
    dioProvider = MockDioProvider();
    localeInterceptor = MockLocaleInterceptor();
    authInterceptor = MockAuthInterceptor();
    oAuthTryLoginUseCase = MockOAuthTryLoginUseCase();
    navigatorKeyProvider = MockNavigatorKeyProvider();
    unauthorizedResponse = MockResponse<TaskResponseList>();
    okResponse = MockResponse<TaskResponseList>();
    interceptors = MockInterceptors();
    logService = MockLogService();
    user = MockUser();
    globalKey = MockGlobalKey<NavigatorState>();
    navigatorState = MockNavigatorState();

    when(constants.getApiBaseUrl()).thenReturn(baseUrl);
    when(dioProvider.provideDio(baseUrl, interceptorList: [localeInterceptor])).thenReturn(dio);
    when(unauthorizedResponse.statusCode).thenReturn(401);
    when(okResponse.statusCode).thenReturn(200);
    when(dio.interceptors).thenReturn(interceptors);
    when(navigatorKeyProvider.navigatorKey).thenReturn(globalKey);
    when(globalKey.currentState).thenReturn(navigatorState);

    service = TasksApiService(
      constants,
      dioProvider,
      logService,
      localeInterceptor,
      authInterceptor,
      oAuthTryLoginUseCase,
      navigatorKeyProvider,
    );
  });

  test('When request failed with 401 Then call OAuthTryLoginUseCase and repeat request', () async {
    // Arrange
    var count = 0;
    when(dio.get(any, queryParameters: null)).thenAnswer((realInvocation) async {
      if (count++ == 0) {
        return unauthorizedResponse;
      }

      return okResponse;
    });
    when(oAuthTryLoginUseCase()).thenAnswer((_) async => user);
    when(navigatorState.pushNamedAndRemoveUntil(AppRoutes.auth.name, any))
        .thenAnswer((_) async => null);

    // Act
    final result = await service.request(url: 'url');

    // Assert
    expect(result, okResponse);
    verify(oAuthTryLoginUseCase()).called(1);
    verify(dio.get('url', queryParameters: null)).called(2);
    verifyNever(navigatorState.pushNamedAndRemoveUntil(AppRoutes.auth.name, argThat(isNull)));
  });

  test(
    'When request failed with 401 And OAuthTryLoginUseCase failed Then throw UnauthorizedHttpException and route to auth screen',
    () async {
      // Arrange
      when(dio.get(any, queryParameters: null)).thenAnswer((_) async => unauthorizedResponse);
      when(oAuthTryLoginUseCase()).thenThrow(UnauthorizedException(''));
      when(navigatorState.pushNamedAndRemoveUntil(AppRoutes.auth.name, any))
          .thenAnswer((_) async => null);

      // Act
      // Assert
      expect(
        () async => await service.request(url: 'url'),
        throwsA(isA<UnauthorizedHttpException>()),
      );
      // todo: разобраться, почему не срабатывают проверки:
      // verify(oAuthTryLoginUseCase()).called(1);
      // verify(navigatorState.pushNamedAndRemoveUntil(AppRoutes.auth, argThat(isNull))).called(1);
    },
  );

  test('When Method.GET requested Then called Dio.get method', () async {
    // Arrange
    when(dio.get(any, queryParameters: null)).thenAnswer((_) async => okResponse);

    // Act
    final result = await service.request(url: 'url');

    // Assert
    expect(result, okResponse);
    // Добавлено 2 интерсептора
    verify(dioProvider.provideDio(baseUrl, interceptorList: [localeInterceptor])).called(1);
    verify(interceptors.add(authInterceptor)).called(1);
    verifyNever(oAuthTryLoginUseCase());
    verifyNever(navigatorState.pushNamedAndRemoveUntil(AppRoutes.auth.name, any));
    verify(dio.get('url', queryParameters: null)).called(1);
  });

  test('When Method.POST requested Then called Dio.post method', () async {
    // Arrange
    when(dio.post(any, data: null)).thenAnswer((_) async => okResponse);

    // Act
    final result = await service.request(url: 'url', method: Method.POST);

    // Assert
    expect(result, okResponse);
    // Добавлено 2 интерсептора
    verify(dioProvider.provideDio(baseUrl, interceptorList: [localeInterceptor])).called(1);
    verify(interceptors.add(authInterceptor)).called(1);
    verifyNever(oAuthTryLoginUseCase());
    verifyNever(navigatorState.pushNamedAndRemoveUntil(AppRoutes.auth.name, any));
    verify(dio.post('url', data: null)).called(1);
  });
}
