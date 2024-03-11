// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'media_content_dao.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MediaContentDao _$MediaContentDaoFromJson(Map<String, dynamic> json) {
  return _MediaContentDao.fromJson(json);
}

/// @nodoc
mixin _$MediaContentDao {
  String get id => throw _privateConstructorUsedError;
  List<MediaContentBlockDao> get blocks => throw _privateConstructorUsedError;
  @JsonKey(name: 'sort_id')
  int get sortId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MediaContentDaoCopyWith<MediaContentDao> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MediaContentDaoCopyWith<$Res> {
  factory $MediaContentDaoCopyWith(
          MediaContentDao value, $Res Function(MediaContentDao) then) =
      _$MediaContentDaoCopyWithImpl<$Res, MediaContentDao>;
  @useResult
  $Res call(
      {String id,
      List<MediaContentBlockDao> blocks,
      @JsonKey(name: 'sort_id') int sortId});
}

/// @nodoc
class _$MediaContentDaoCopyWithImpl<$Res, $Val extends MediaContentDao>
    implements $MediaContentDaoCopyWith<$Res> {
  _$MediaContentDaoCopyWithImpl(this._value, this._then);

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
abstract class _$$MediaContentDaoImplCopyWith<$Res>
    implements $MediaContentDaoCopyWith<$Res> {
  factory _$$MediaContentDaoImplCopyWith(_$MediaContentDaoImpl value,
          $Res Function(_$MediaContentDaoImpl) then) =
      __$$MediaContentDaoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      List<MediaContentBlockDao> blocks,
      @JsonKey(name: 'sort_id') int sortId});
}

/// @nodoc
class __$$MediaContentDaoImplCopyWithImpl<$Res>
    extends _$MediaContentDaoCopyWithImpl<$Res, _$MediaContentDaoImpl>
    implements _$$MediaContentDaoImplCopyWith<$Res> {
  __$$MediaContentDaoImplCopyWithImpl(
      _$MediaContentDaoImpl _value, $Res Function(_$MediaContentDaoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? blocks = null,
    Object? sortId = null,
  }) {
    return _then(_$MediaContentDaoImpl(
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
class _$MediaContentDaoImpl implements _MediaContentDao {
  const _$MediaContentDaoImpl(
      {required this.id,
      required final List<MediaContentBlockDao> blocks,
      @JsonKey(name: 'sort_id') required this.sortId})
      : _blocks = blocks;

  factory _$MediaContentDaoImpl.fromJson(Map<String, dynamic> json) =>
      _$$MediaContentDaoImplFromJson(json);

  @override
  final String id;
  final List<MediaContentBlockDao> _blocks;
  @override
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
    return 'MediaContentDao(id: $id, blocks: $blocks, sortId: $sortId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MediaContentDaoImpl &&
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
  _$$MediaContentDaoImplCopyWith<_$MediaContentDaoImpl> get copyWith =>
      __$$MediaContentDaoImplCopyWithImpl<_$MediaContentDaoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MediaContentDaoImplToJson(
      this,
    );
  }
}

abstract class _MediaContentDao implements MediaContentDao {
  const factory _MediaContentDao(
          {required final String id,
          required final List<MediaContentBlockDao> blocks,
          @JsonKey(name: 'sort_id') required final int sortId}) =
      _$MediaContentDaoImpl;

  factory _MediaContentDao.fromJson(Map<String, dynamic> json) =
      _$MediaContentDaoImpl.fromJson;

  @override
  String get id;
  @override
  List<MediaContentBlockDao> get blocks;
  @override
  @JsonKey(name: 'sort_id')
  int get sortId;
  @override
  @JsonKey(ignore: true)
  _$$MediaContentDaoImplCopyWith<_$MediaContentDaoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
