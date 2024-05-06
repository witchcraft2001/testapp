// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'api_greeting_template_user_dao.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ApiGreetingTemplateUserDao _$ApiGreetingTemplateUserDaoFromJson(
    Map<String, dynamic> json) {
  return _ApiGreetingTemplateUserDao.fromJson(json);
}

/// @nodoc
mixin _$ApiGreetingTemplateUserDao {
  String get login => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ApiGreetingTemplateUserDaoCopyWith<ApiGreetingTemplateUserDao>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApiGreetingTemplateUserDaoCopyWith<$Res> {
  factory $ApiGreetingTemplateUserDaoCopyWith(ApiGreetingTemplateUserDao value,
          $Res Function(ApiGreetingTemplateUserDao) then) =
      _$ApiGreetingTemplateUserDaoCopyWithImpl<$Res,
          ApiGreetingTemplateUserDao>;
  @useResult
  $Res call({String login});
}

/// @nodoc
class _$ApiGreetingTemplateUserDaoCopyWithImpl<$Res,
        $Val extends ApiGreetingTemplateUserDao>
    implements $ApiGreetingTemplateUserDaoCopyWith<$Res> {
  _$ApiGreetingTemplateUserDaoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? login = null,
  }) {
    return _then(_value.copyWith(
      login: null == login
          ? _value.login
          : login // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ApiGreetingTemplateUserDaoImplCopyWith<$Res>
    implements $ApiGreetingTemplateUserDaoCopyWith<$Res> {
  factory _$$ApiGreetingTemplateUserDaoImplCopyWith(
          _$ApiGreetingTemplateUserDaoImpl value,
          $Res Function(_$ApiGreetingTemplateUserDaoImpl) then) =
      __$$ApiGreetingTemplateUserDaoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String login});
}

/// @nodoc
class __$$ApiGreetingTemplateUserDaoImplCopyWithImpl<$Res>
    extends _$ApiGreetingTemplateUserDaoCopyWithImpl<$Res,
        _$ApiGreetingTemplateUserDaoImpl>
    implements _$$ApiGreetingTemplateUserDaoImplCopyWith<$Res> {
  __$$ApiGreetingTemplateUserDaoImplCopyWithImpl(
      _$ApiGreetingTemplateUserDaoImpl _value,
      $Res Function(_$ApiGreetingTemplateUserDaoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? login = null,
  }) {
    return _then(_$ApiGreetingTemplateUserDaoImpl(
      login: null == login
          ? _value.login
          : login // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ApiGreetingTemplateUserDaoImpl implements _ApiGreetingTemplateUserDao {
  const _$ApiGreetingTemplateUserDaoImpl({required this.login});

  factory _$ApiGreetingTemplateUserDaoImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ApiGreetingTemplateUserDaoImplFromJson(json);

  @override
  final String login;

  @override
  String toString() {
    return 'ApiGreetingTemplateUserDao(login: $login)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ApiGreetingTemplateUserDaoImpl &&
            (identical(other.login, login) || other.login == login));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, login);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ApiGreetingTemplateUserDaoImplCopyWith<_$ApiGreetingTemplateUserDaoImpl>
      get copyWith => __$$ApiGreetingTemplateUserDaoImplCopyWithImpl<
          _$ApiGreetingTemplateUserDaoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ApiGreetingTemplateUserDaoImplToJson(
      this,
    );
  }
}

abstract class _ApiGreetingTemplateUserDao
    implements ApiGreetingTemplateUserDao {
  const factory _ApiGreetingTemplateUserDao({required final String login}) =
      _$ApiGreetingTemplateUserDaoImpl;

  factory _ApiGreetingTemplateUserDao.fromJson(Map<String, dynamic> json) =
      _$ApiGreetingTemplateUserDaoImpl.fromJson;

  @override
  String get login;
  @override
  @JsonKey(ignore: true)
  _$$ApiGreetingTemplateUserDaoImplCopyWith<_$ApiGreetingTemplateUserDaoImpl>
      get copyWith => throw _privateConstructorUsedError;
}
