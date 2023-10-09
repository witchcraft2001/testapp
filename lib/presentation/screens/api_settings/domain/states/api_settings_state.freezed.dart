// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'api_settings_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ApiSettingsState {
  String get newsApiBaseUrl => throw _privateConstructorUsedError;
  String get tasksApiBaseUrl => throw _privateConstructorUsedError;
  String get wsUrl => throw _privateConstructorUsedError;
  String get msalTenantId => throw _privateConstructorUsedError;
  String get msalClientId => throw _privateConstructorUsedError;
  String get msalScope => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ApiSettingsStateCopyWith<ApiSettingsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApiSettingsStateCopyWith<$Res> {
  factory $ApiSettingsStateCopyWith(
          ApiSettingsState value, $Res Function(ApiSettingsState) then) =
      _$ApiSettingsStateCopyWithImpl<$Res, ApiSettingsState>;
  @useResult
  $Res call(
      {String newsApiBaseUrl,
      String tasksApiBaseUrl,
      String wsUrl,
      String msalTenantId,
      String msalClientId,
      String msalScope});
}

/// @nodoc
class _$ApiSettingsStateCopyWithImpl<$Res, $Val extends ApiSettingsState>
    implements $ApiSettingsStateCopyWith<$Res> {
  _$ApiSettingsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? newsApiBaseUrl = null,
    Object? tasksApiBaseUrl = null,
    Object? wsUrl = null,
    Object? msalTenantId = null,
    Object? msalClientId = null,
    Object? msalScope = null,
  }) {
    return _then(_value.copyWith(
      newsApiBaseUrl: null == newsApiBaseUrl
          ? _value.newsApiBaseUrl
          : newsApiBaseUrl // ignore: cast_nullable_to_non_nullable
              as String,
      tasksApiBaseUrl: null == tasksApiBaseUrl
          ? _value.tasksApiBaseUrl
          : tasksApiBaseUrl // ignore: cast_nullable_to_non_nullable
              as String,
      wsUrl: null == wsUrl
          ? _value.wsUrl
          : wsUrl // ignore: cast_nullable_to_non_nullable
              as String,
      msalTenantId: null == msalTenantId
          ? _value.msalTenantId
          : msalTenantId // ignore: cast_nullable_to_non_nullable
              as String,
      msalClientId: null == msalClientId
          ? _value.msalClientId
          : msalClientId // ignore: cast_nullable_to_non_nullable
              as String,
      msalScope: null == msalScope
          ? _value.msalScope
          : msalScope // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ApiSettingsStateCopyWith<$Res>
    implements $ApiSettingsStateCopyWith<$Res> {
  factory _$$_ApiSettingsStateCopyWith(
          _$_ApiSettingsState value, $Res Function(_$_ApiSettingsState) then) =
      __$$_ApiSettingsStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String newsApiBaseUrl,
      String tasksApiBaseUrl,
      String wsUrl,
      String msalTenantId,
      String msalClientId,
      String msalScope});
}

/// @nodoc
class __$$_ApiSettingsStateCopyWithImpl<$Res>
    extends _$ApiSettingsStateCopyWithImpl<$Res, _$_ApiSettingsState>
    implements _$$_ApiSettingsStateCopyWith<$Res> {
  __$$_ApiSettingsStateCopyWithImpl(
      _$_ApiSettingsState _value, $Res Function(_$_ApiSettingsState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? newsApiBaseUrl = null,
    Object? tasksApiBaseUrl = null,
    Object? wsUrl = null,
    Object? msalTenantId = null,
    Object? msalClientId = null,
    Object? msalScope = null,
  }) {
    return _then(_$_ApiSettingsState(
      newsApiBaseUrl: null == newsApiBaseUrl
          ? _value.newsApiBaseUrl
          : newsApiBaseUrl // ignore: cast_nullable_to_non_nullable
              as String,
      tasksApiBaseUrl: null == tasksApiBaseUrl
          ? _value.tasksApiBaseUrl
          : tasksApiBaseUrl // ignore: cast_nullable_to_non_nullable
              as String,
      wsUrl: null == wsUrl
          ? _value.wsUrl
          : wsUrl // ignore: cast_nullable_to_non_nullable
              as String,
      msalTenantId: null == msalTenantId
          ? _value.msalTenantId
          : msalTenantId // ignore: cast_nullable_to_non_nullable
              as String,
      msalClientId: null == msalClientId
          ? _value.msalClientId
          : msalClientId // ignore: cast_nullable_to_non_nullable
              as String,
      msalScope: null == msalScope
          ? _value.msalScope
          : msalScope // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ApiSettingsState implements _ApiSettingsState {
  const _$_ApiSettingsState(
      {this.newsApiBaseUrl = '',
      this.tasksApiBaseUrl = '',
      this.wsUrl = '',
      this.msalTenantId = '',
      this.msalClientId = '',
      this.msalScope = ''});

  @override
  @JsonKey()
  final String newsApiBaseUrl;
  @override
  @JsonKey()
  final String tasksApiBaseUrl;
  @override
  @JsonKey()
  final String wsUrl;
  @override
  @JsonKey()
  final String msalTenantId;
  @override
  @JsonKey()
  final String msalClientId;
  @override
  @JsonKey()
  final String msalScope;

  @override
  String toString() {
    return 'ApiSettingsState(newsApiBaseUrl: $newsApiBaseUrl, tasksApiBaseUrl: $tasksApiBaseUrl, wsUrl: $wsUrl, msalTenantId: $msalTenantId, msalClientId: $msalClientId, msalScope: $msalScope)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ApiSettingsState &&
            (identical(other.newsApiBaseUrl, newsApiBaseUrl) ||
                other.newsApiBaseUrl == newsApiBaseUrl) &&
            (identical(other.tasksApiBaseUrl, tasksApiBaseUrl) ||
                other.tasksApiBaseUrl == tasksApiBaseUrl) &&
            (identical(other.wsUrl, wsUrl) || other.wsUrl == wsUrl) &&
            (identical(other.msalTenantId, msalTenantId) ||
                other.msalTenantId == msalTenantId) &&
            (identical(other.msalClientId, msalClientId) ||
                other.msalClientId == msalClientId) &&
            (identical(other.msalScope, msalScope) ||
                other.msalScope == msalScope));
  }

  @override
  int get hashCode => Object.hash(runtimeType, newsApiBaseUrl, tasksApiBaseUrl,
      wsUrl, msalTenantId, msalClientId, msalScope);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ApiSettingsStateCopyWith<_$_ApiSettingsState> get copyWith =>
      __$$_ApiSettingsStateCopyWithImpl<_$_ApiSettingsState>(this, _$identity);
}

abstract class _ApiSettingsState implements ApiSettingsState {
  const factory _ApiSettingsState(
      {final String newsApiBaseUrl,
      final String tasksApiBaseUrl,
      final String wsUrl,
      final String msalTenantId,
      final String msalClientId,
      final String msalScope}) = _$_ApiSettingsState;

  @override
  String get newsApiBaseUrl;
  @override
  String get tasksApiBaseUrl;
  @override
  String get wsUrl;
  @override
  String get msalTenantId;
  @override
  String get msalClientId;
  @override
  String get msalScope;
  @override
  @JsonKey(ignore: true)
  _$$_ApiSettingsStateCopyWith<_$_ApiSettingsState> get copyWith =>
      throw _privateConstructorUsedError;
}
