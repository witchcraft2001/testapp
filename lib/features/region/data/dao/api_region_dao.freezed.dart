// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'api_region_dao.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ApiRegionDao _$ApiRegionDaoFromJson(Map<String, dynamic> json) {
  return _ApiRegionDao.fromJson(json);
}

/// @nodoc
mixin _$ApiRegionDao {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ApiRegionDaoCopyWith<ApiRegionDao> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApiRegionDaoCopyWith<$Res> {
  factory $ApiRegionDaoCopyWith(
          ApiRegionDao value, $Res Function(ApiRegionDao) then) =
      _$ApiRegionDaoCopyWithImpl<$Res, ApiRegionDao>;
  @useResult
  $Res call({String id, String name});
}

/// @nodoc
class _$ApiRegionDaoCopyWithImpl<$Res, $Val extends ApiRegionDao>
    implements $ApiRegionDaoCopyWith<$Res> {
  _$ApiRegionDaoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ApiRegionDaoImplCopyWith<$Res>
    implements $ApiRegionDaoCopyWith<$Res> {
  factory _$$ApiRegionDaoImplCopyWith(
          _$ApiRegionDaoImpl value, $Res Function(_$ApiRegionDaoImpl) then) =
      __$$ApiRegionDaoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String name});
}

/// @nodoc
class __$$ApiRegionDaoImplCopyWithImpl<$Res>
    extends _$ApiRegionDaoCopyWithImpl<$Res, _$ApiRegionDaoImpl>
    implements _$$ApiRegionDaoImplCopyWith<$Res> {
  __$$ApiRegionDaoImplCopyWithImpl(
      _$ApiRegionDaoImpl _value, $Res Function(_$ApiRegionDaoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_$ApiRegionDaoImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ApiRegionDaoImpl implements _ApiRegionDao {
  const _$ApiRegionDaoImpl({required this.id, required this.name});

  factory _$ApiRegionDaoImpl.fromJson(Map<String, dynamic> json) =>
      _$$ApiRegionDaoImplFromJson(json);

  @override
  final String id;
  @override
  final String name;

  @override
  String toString() {
    return 'ApiRegionDao(id: $id, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ApiRegionDaoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ApiRegionDaoImplCopyWith<_$ApiRegionDaoImpl> get copyWith =>
      __$$ApiRegionDaoImplCopyWithImpl<_$ApiRegionDaoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ApiRegionDaoImplToJson(
      this,
    );
  }
}

abstract class _ApiRegionDao implements ApiRegionDao {
  const factory _ApiRegionDao(
      {required final String id,
      required final String name}) = _$ApiRegionDaoImpl;

  factory _ApiRegionDao.fromJson(Map<String, dynamic> json) =
      _$ApiRegionDaoImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$ApiRegionDaoImplCopyWith<_$ApiRegionDaoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
