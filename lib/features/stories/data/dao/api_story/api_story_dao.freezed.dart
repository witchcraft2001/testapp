// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'api_story_dao.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ApiStoryDao _$ApiStoryDaoFromJson(Map<String, dynamic> json) {
  return _ApiStoryDao.fromJson(json);
}

/// @nodoc
mixin _$ApiStoryDao {
  String get id => throw _privateConstructorUsedError;
  List<MediaContentBlockDao> get blocks => throw _privateConstructorUsedError;
  @JsonKey(name: 'sort_id')
  int get sortId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ApiStoryDaoCopyWith<ApiStoryDao> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApiStoryDaoCopyWith<$Res> {
  factory $ApiStoryDaoCopyWith(
          ApiStoryDao value, $Res Function(ApiStoryDao) then) =
      _$ApiStoryDaoCopyWithImpl<$Res, ApiStoryDao>;
  @useResult
  $Res call(
      {String id,
      List<MediaContentBlockDao> blocks,
      @JsonKey(name: 'sort_id') int sortId});
}

/// @nodoc
class _$ApiStoryDaoCopyWithImpl<$Res, $Val extends ApiStoryDao>
    implements $ApiStoryDaoCopyWith<$Res> {
  _$ApiStoryDaoCopyWithImpl(this._value, this._then);

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
              as List<MediaContentBlockDao>,
      sortId: null == sortId
          ? _value.sortId
          : sortId // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ApiStoryDaoImplCopyWith<$Res>
    implements $ApiStoryDaoCopyWith<$Res> {
  factory _$$ApiStoryDaoImplCopyWith(
          _$ApiStoryDaoImpl value, $Res Function(_$ApiStoryDaoImpl) then) =
      __$$ApiStoryDaoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      List<MediaContentBlockDao> blocks,
      @JsonKey(name: 'sort_id') int sortId});
}

/// @nodoc
class __$$ApiStoryDaoImplCopyWithImpl<$Res>
    extends _$ApiStoryDaoCopyWithImpl<$Res, _$ApiStoryDaoImpl>
    implements _$$ApiStoryDaoImplCopyWith<$Res> {
  __$$ApiStoryDaoImplCopyWithImpl(
      _$ApiStoryDaoImpl _value, $Res Function(_$ApiStoryDaoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? blocks = null,
    Object? sortId = null,
  }) {
    return _then(_$ApiStoryDaoImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      blocks: null == blocks
          ? _value._blocks
          : blocks // ignore: cast_nullable_to_non_nullable
              as List<MediaContentBlockDao>,
      sortId: null == sortId
          ? _value.sortId
          : sortId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ApiStoryDaoImpl implements _ApiStoryDao {
  const _$ApiStoryDaoImpl(
      {required this.id,
      final List<MediaContentBlockDao> blocks = const <MediaContentBlockDao>[],
      @JsonKey(name: 'sort_id') required this.sortId})
      : _blocks = blocks;

  factory _$ApiStoryDaoImpl.fromJson(Map<String, dynamic> json) =>
      _$$ApiStoryDaoImplFromJson(json);

  @override
  final String id;
  final List<MediaContentBlockDao> _blocks;
  @override
  @JsonKey()
  List<MediaContentBlockDao> get blocks {
    if (_blocks is EqualUnmodifiableListView) return _blocks;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_blocks);
  }

  @override
  @JsonKey(name: 'sort_id')
  final int sortId;

  @override
  String toString() {
    return 'ApiStoryDao(id: $id, blocks: $blocks, sortId: $sortId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ApiStoryDaoImpl &&
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
  _$$ApiStoryDaoImplCopyWith<_$ApiStoryDaoImpl> get copyWith =>
      __$$ApiStoryDaoImplCopyWithImpl<_$ApiStoryDaoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ApiStoryDaoImplToJson(
      this,
    );
  }
}

abstract class _ApiStoryDao implements ApiStoryDao {
  const factory _ApiStoryDao(
      {required final String id,
      final List<MediaContentBlockDao> blocks,
      @JsonKey(name: 'sort_id') required final int sortId}) = _$ApiStoryDaoImpl;

  factory _ApiStoryDao.fromJson(Map<String, dynamic> json) =
      _$ApiStoryDaoImpl.fromJson;

  @override
  String get id;
  @override
  List<MediaContentBlockDao> get blocks;
  @override
  @JsonKey(name: 'sort_id')
  int get sortId;
  @override
  @JsonKey(ignore: true)
  _$$ApiStoryDaoImplCopyWith<_$ApiStoryDaoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
