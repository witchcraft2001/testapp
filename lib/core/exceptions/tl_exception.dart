// Package imports:
import 'package:dio/dio.dart';
import 'package:equatable/equatable.dart';

// Project imports:
import 'package:terralinkapp/core/ui/common/tl_assets.dart';
import 'package:terralinkapp/generated/l10n.dart';

abstract class TlException extends Equatable implements Exception {
  final TlExceptionType type;

  const TlException({required this.type});

  @override
  bool get stringify => true;
}

enum TlExceptionType {
  unauthorized,
  connection,
  externalServer,
  httpMethod,
  httpSome,
  repoUnknownField,
  repoLoading,
  repoChatNotFound,
  repoDbInsert,
  repoDbDelete,
  dioCancel,
  dioConnectTimeout,
  dioReceiveTimeout,
  dioResponse,
  dioSendTimeout,
  dioOther,
  format,
  other,
  repoLikesYourself,
}

Map<TlExceptionType, String> exceptionTranslations = {
  TlExceptionType.unauthorized: S.current.exceptionUnauthorized,
  TlExceptionType.connection: S.current.exceptionConnection,
  TlExceptionType.externalServer: S.current.exceptionExternalServer,
  TlExceptionType.httpMethod: S.current.exceptionHttpMethod,
  TlExceptionType.httpSome: S.current.exceptionSomethingWasWrong,
  TlExceptionType.repoUnknownField: S.current.exceptionRepoUnknownField,
  TlExceptionType.repoLoading: S.current.exceptionRepoLoading,
  TlExceptionType.repoDbInsert: S.current.exceptionRepoDbInsert,
  TlExceptionType.repoDbDelete: S.current.exceptionRepoDbDelete,
  TlExceptionType.repoChatNotFound: S.current.exceptionRepoChatNotFound,
  TlExceptionType.repoLikesYourself: S.current.likesNewSendingErrorYourself,
  TlExceptionType.dioCancel: S.current.exceptionDioCancel,
  TlExceptionType.dioConnectTimeout: S.current.exceptionDioConnectTimeout,
  TlExceptionType.dioReceiveTimeout: S.current.exceptionDioReceiveTimeout,
  TlExceptionType.dioResponse: S.current.exceptionDioResponse,
  TlExceptionType.dioSendTimeout: S.current.exceptionDioSendTimeout,
  TlExceptionType.dioOther: S.current.exceptionSomethingWasWrong,
  TlExceptionType.format: S.current.exceptionFormat,
  TlExceptionType.other: S.current.exceptionSomethingWasWrong,
};

Map<DioErrorType, TlExceptionType> exceptionDio = {
  DioErrorType.cancel: TlExceptionType.dioCancel,
  DioErrorType.connectTimeout: TlExceptionType.dioConnectTimeout,
  DioErrorType.receiveTimeout: TlExceptionType.dioReceiveTimeout,
  DioErrorType.response: TlExceptionType.dioResponse,
  DioErrorType.sendTimeout: TlExceptionType.dioSendTimeout,
  DioErrorType.other: TlExceptionType.dioOther,
};

Map<TlExceptionType, String> exceptionAssets = {
  TlExceptionType.unauthorized: TlAssets.exceptionUnauthorized,
  TlExceptionType.connection: TlAssets.exceptionConnection,
  TlExceptionType.externalServer: TlAssets.exceptionUnavailable,
  TlExceptionType.httpMethod: TlAssets.exceptionUnavailable,
  TlExceptionType.httpSome: TlAssets.exceptionOther,
  TlExceptionType.repoUnknownField: TlAssets.exceptionUnknown,
  TlExceptionType.repoLoading: TlAssets.exceptionData,
  TlExceptionType.repoChatNotFound: TlAssets.exceptionNotFound,
  TlExceptionType.dioCancel: TlAssets.exceptionOther,
  TlExceptionType.dioConnectTimeout: TlAssets.exceptionOther,
  TlExceptionType.dioReceiveTimeout: TlAssets.exceptionOther,
  TlExceptionType.dioResponse: TlAssets.exceptionOther,
  TlExceptionType.dioSendTimeout: TlAssets.exceptionOther,
  TlExceptionType.dioOther: TlAssets.exceptionOther,
  TlExceptionType.format: TlAssets.exceptionUnknown,
  TlExceptionType.other: TlAssets.exceptionOther,
  TlExceptionType.repoDbInsert: TlAssets.exceptionUnknown,
  TlExceptionType.repoDbDelete: TlAssets.exceptionUnknown,
};
