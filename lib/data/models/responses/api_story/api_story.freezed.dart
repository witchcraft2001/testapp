// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'api_story.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ApiStory _$ApiStoryFromJson(Map<String, dynamic> json) {
  return _ApiStory.fromJson(json);
}

/// @nodoc
mixin _$ApiStory {
  String get id => throw _privateConstructorUsedError;
  List<ApiStoryBlock> get blocks => throw _privateConstructorUsedError;
  @JsonKey(name: 'sort_id')
  int get sortId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ApiStoryCopyWith<ApiStory> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApiStoryCopyWith<$Res> {
  factory $ApiStoryCopyWith(ApiStory value, $Res Function(ApiStory) then) =
      _$ApiStoryCopyWithImpl<$Res, ApiStory>;
  @useResult
  $Res call(
      {String id,
      List<ApiStoryBlock> blocks,
      @JsonKey(name: 'sort_id') int sortId});
}

/// @nodoc
class _$ApiStoryCopyWithImpl<$Res, $Val extends ApiStory>
    implements $ApiStoryCopyWith<$Res> {
  _$ApiStoryCopyWithImpl(this._value, this._then);

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
              as List<ApiStoryBlock>,
      sortId: null == sortId
          ? _value.sortId
          : sortId // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ApiStoryCopyWith<$Res> implements $ApiStoryCopyWith<$Res> {
  factory _$$_ApiStoryCopyWith(
          _$_ApiStory value, $Res Function(_$_ApiStory) then) =
      __$$_ApiStoryCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      List<ApiStoryBlock> blocks,
      @JsonKey(name: 'sort_id') int sortId});
}

/// @nodoc
class __$$_ApiStoryCopyWithImpl<$Res>
    extends _$ApiStoryCopyWithImpl<$Res, _$_ApiStory>
    implements _$$_ApiStoryCopyWith<$Res> {
  __$$_ApiStoryCopyWithImpl(
      _$_ApiStory _value, $Res Function(_$_ApiStory) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? blocks = null,
    Object? sortId = null,
  }) {
    return _then(_$_ApiStory(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      blocks: null == blocks
          ? _value._blocks
          : blocks // ignore: cast_nullable_to_non_nullable
              as List<ApiStoryBlock>,
      sortId: null == sortId
          ? _value.sortId
          : sortId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ApiStory implements _ApiStory {
  const _$_ApiStory(
      {required this.id,
      final List<ApiStoryBlock> blocks = const <ApiStoryBlock>[],
      @JsonKey(name: 'sort_id') required this.sortId})
      : _blocks = blocks;

  factory _$_ApiStory.fromJson(Map<String, dynamic> json) =>
      _$$_ApiStoryFromJson(json);

  @override
  final String id;
  final List<ApiStoryBlock> _blocks;
  @override
  @JsonKey()
  List<ApiStoryBlock> get blocks {
    if (_blocks is EqualUnmodifiableListView) return _blocks;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_blocks);
  }

  @override
  @JsonKey(name: 'sort_id')
  final int sortId;

  @override
  String toString() {
    return 'ApiStory(id: $id, blocks: $blocks, sortId: $sortId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ApiStory &&
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
  _$$_ApiStoryCopyWith<_$_ApiStory> get copyWith =>
      __$$_ApiStoryCopyWithImpl<_$_ApiStory>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ApiStoryToJson(
      this,
    );
  }
}

abstract class _ApiStory implements ApiStory {
  const factory _ApiStory(
      {required final String id,
      final List<ApiStoryBlock> blocks,
      @JsonKey(name: 'sort_id') required final int sortId}) = _$_ApiStory;

  factory _ApiStory.fromJson(Map<String, dynamic> json) = _$_ApiStory.fromJson;

  @override
  String get id;
  @override
  List<ApiStoryBlock> get blocks;
  @override
  @JsonKey(name: 'sort_id')
  int get sortId;
  @override
  @JsonKey(ignore: true)
  _$$_ApiStoryCopyWith<_$_ApiStory> get copyWith =>
      throw _privateConstructorUsedError;
}
