// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'api_greeting_template_group.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ApiGreetingTemplateGroupDao _$ApiGreetingTemplateGroupDaoFromJson(
    Map<String, dynamic> json) {
  return _ApiGreetingTemplateGroupDao.fromJson(json);
}

/// @nodoc
mixin _$ApiGreetingTemplateGroupDao {
  String get id => throw _privateConstructorUsedError;
  List<ApiGreetingTemplateGroupBlockDao> get blocks =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'sort_id')
  int get sortId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ApiGreetingTemplateGroupDaoCopyWith<ApiGreetingTemplateGroupDao>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApiGreetingTemplateGroupDaoCopyWith<$Res> {
  factory $ApiGreetingTemplateGroupDaoCopyWith(
          ApiGreetingTemplateGroupDao value,
          $Res Function(ApiGreetingTemplateGroupDao) then) =
      _$ApiGreetingTemplateGroupDaoCopyWithImpl<$Res,
          ApiGreetingTemplateGroupDao>;
  @useResult
  $Res call(
      {String id,
      List<ApiGreetingTemplateGroupBlockDao> blocks,
      @JsonKey(name: 'sort_id') int sortId});
}

/// @nodoc
class _$ApiGreetingTemplateGroupDaoCopyWithImpl<$Res,
        $Val extends ApiGreetingTemplateGroupDao>
    implements $ApiGreetingTemplateGroupDaoCopyWith<$Res> {
  _$ApiGreetingTemplateGroupDaoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? blocks = null,
    Object? sortId = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      blocks: null == blocks
          ? _value.blocks
          : blocks // ignore: cast_nullable_to_non_nullable
              as List<ApiGreetingTemplateGroupBlockDao>,
      sortId: null == sortId
          ? _value.sortId
          : sortId // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ApiGreetingTemplateGroupDaoImplCopyWith<$Res>
    implements $ApiGreetingTemplateGroupDaoCopyWith<$Res> {
  factory _$$ApiGreetingTemplateGroupDaoImplCopyWith(
          _$ApiGreetingTemplateGroupDaoImpl value,
          $Res Function(_$ApiGreetingTemplateGroupDaoImpl) then) =
      __$$ApiGreetingTemplateGroupDaoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      List<ApiGreetingTemplateGroupBlockDao> blocks,
      @JsonKey(name: 'sort_id') int sortId});
}

/// @nodoc
class __$$ApiGreetingTemplateGroupDaoImplCopyWithImpl<$Res>
    extends _$ApiGreetingTemplateGroupDaoCopyWithImpl<$Res,
        _$ApiGreetingTemplateGroupDaoImpl>
    implements _$$ApiGreetingTemplateGroupDaoImplCopyWith<$Res> {
  __$$ApiGreetingTemplateGroupDaoImplCopyWithImpl(
      _$ApiGreetingTemplateGroupDaoImpl _value,
      $Res Function(_$ApiGreetingTemplateGroupDaoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? blocks = null,
    Object? sortId = null,
  }) {
    return _then(_$ApiGreetingTemplateGroupDaoImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      blocks: null == blocks
          ? _value._blocks
          : blocks // ignore: cast_nullable_to_non_nullable
              as List<ApiGreetingTemplateGroupBlockDao>,
      sortId: null == sortId
          ? _value.sortId
          : sortId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ApiGreetingTemplateGroupDaoImpl
    implements _ApiGreetingTemplateGroupDao {
  const _$ApiGreetingTemplateGroupDaoImpl(
      {required this.id,
      final List<ApiGreetingTemplateGroupBlockDao> blocks =
          const <ApiGreetingTemplateGroupBlockDao>[],
      @JsonKey(name: 'sort_id') required this.sortId})
      : _blocks = blocks;

  factory _$ApiGreetingTemplateGroupDaoImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ApiGreetingTemplateGroupDaoImplFromJson(json);

  @override
  final String id;
  final List<ApiGreetingTemplateGroupBlockDao> _blocks;
  @override
  @JsonKey()
  List<ApiGreetingTemplateGroupBlockDao> get blocks {
    if (_blocks is EqualUnmodifiableListView) return _blocks;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_blocks);
  }

  @override
  @JsonKey(name: 'sort_id')
  final int sortId;

  @override
  String toString() {
    return 'ApiGreetingTemplateGroupDao(id: $id, blocks: $blocks, sortId: $sortId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ApiGreetingTemplateGroupDaoImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality().equals(other._blocks, _blocks) &&
            (identical(other.sortId, sortId) || other.sortId == sortId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, const DeepCollectionEquality().hash(_blocks), sortId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ApiGreetingTemplateGroupDaoImplCopyWith<_$ApiGreetingTemplateGroupDaoImpl>
      get copyWith => __$$ApiGreetingTemplateGroupDaoImplCopyWithImpl<
          _$ApiGreetingTemplateGroupDaoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ApiGreetingTemplateGroupDaoImplToJson(
      this,
    );
  }
}

abstract class _ApiGreetingTemplateGroupDao
    implements ApiGreetingTemplateGroupDao {
  const factory _ApiGreetingTemplateGroupDao(
          {required final String id,
          final List<ApiGreetingTemplateGroupBlockDao> blocks,
          @JsonKey(name: 'sort_id') required final int sortId}) =
      _$ApiGreetingTemplateGroupDaoImpl;

  factory _ApiGreetingTemplateGroupDao.fromJson(Map<String, dynamic> json) =
      _$ApiGreetingTemplateGroupDaoImpl.fromJson;

  @override
  String get id;
  @override
  List<ApiGreetingTemplateGroupBlockDao> get blocks;
  @override
  @JsonKey(name: 'sort_id')
  int get sortId;
  @override
  @JsonKey(ignore: true)
  _$$ApiGreetingTemplateGroupDaoImplCopyWith<_$ApiGreetingTemplateGroupDaoImpl>
      get copyWith => throw _privateConstructorUsedError;
}
