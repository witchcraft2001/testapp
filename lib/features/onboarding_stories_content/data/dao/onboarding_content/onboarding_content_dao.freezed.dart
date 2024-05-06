// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'onboarding_content_dao.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

OnboardingContentDao _$OnboardingContentDaoFromJson(Map<String, dynamic> json) {
  return _OnboardingContentDao.fromJson(json);
}

/// @nodoc
mixin _$OnboardingContentDao {
  String get id => throw _privateConstructorUsedError;
  List<OnboardingContentBlockDao> get blocks =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'sort_id')
  int get sortId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OnboardingContentDaoCopyWith<OnboardingContentDao> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OnboardingContentDaoCopyWith<$Res> {
  factory $OnboardingContentDaoCopyWith(OnboardingContentDao value,
          $Res Function(OnboardingContentDao) then) =
      _$OnboardingContentDaoCopyWithImpl<$Res, OnboardingContentDao>;
  @useResult
  $Res call(
      {String id,
      List<OnboardingContentBlockDao> blocks,
      @JsonKey(name: 'sort_id') int sortId});
}

/// @nodoc
class _$OnboardingContentDaoCopyWithImpl<$Res,
        $Val extends OnboardingContentDao>
    implements $OnboardingContentDaoCopyWith<$Res> {
  _$OnboardingContentDaoCopyWithImpl(this._value, this._then);

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
              as List<OnboardingContentBlockDao>,
      sortId: null == sortId
          ? _value.sortId
          : sortId // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OnboardingContentDaoImplCopyWith<$Res>
    implements $OnboardingContentDaoCopyWith<$Res> {
  factory _$$OnboardingContentDaoImplCopyWith(_$OnboardingContentDaoImpl value,
          $Res Function(_$OnboardingContentDaoImpl) then) =
      __$$OnboardingContentDaoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      List<OnboardingContentBlockDao> blocks,
      @JsonKey(name: 'sort_id') int sortId});
}

/// @nodoc
class __$$OnboardingContentDaoImplCopyWithImpl<$Res>
    extends _$OnboardingContentDaoCopyWithImpl<$Res, _$OnboardingContentDaoImpl>
    implements _$$OnboardingContentDaoImplCopyWith<$Res> {
  __$$OnboardingContentDaoImplCopyWithImpl(_$OnboardingContentDaoImpl _value,
      $Res Function(_$OnboardingContentDaoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? blocks = null,
    Object? sortId = null,
  }) {
    return _then(_$OnboardingContentDaoImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      blocks: null == blocks
          ? _value._blocks
          : blocks // ignore: cast_nullable_to_non_nullable
              as List<OnboardingContentBlockDao>,
      sortId: null == sortId
          ? _value.sortId
          : sortId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OnboardingContentDaoImpl implements _OnboardingContentDao {
  const _$OnboardingContentDaoImpl(
      {required this.id,
      required final List<OnboardingContentBlockDao> blocks,
      @JsonKey(name: 'sort_id') required this.sortId})
      : _blocks = blocks;

  factory _$OnboardingContentDaoImpl.fromJson(Map<String, dynamic> json) =>
      _$$OnboardingContentDaoImplFromJson(json);

  @override
  final String id;
  final List<OnboardingContentBlockDao> _blocks;
  @override
  List<OnboardingContentBlockDao> get blocks {
    if (_blocks is EqualUnmodifiableListView) return _blocks;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_blocks);
  }

  @override
  @JsonKey(name: 'sort_id')
  final int sortId;

  @override
  String toString() {
    return 'OnboardingContentDao(id: $id, blocks: $blocks, sortId: $sortId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnboardingContentDaoImpl &&
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
  _$$OnboardingContentDaoImplCopyWith<_$OnboardingContentDaoImpl>
      get copyWith =>
          __$$OnboardingContentDaoImplCopyWithImpl<_$OnboardingContentDaoImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OnboardingContentDaoImplToJson(
      this,
    );
  }
}

abstract class _OnboardingContentDao implements OnboardingContentDao {
  const factory _OnboardingContentDao(
          {required final String id,
          required final List<OnboardingContentBlockDao> blocks,
          @JsonKey(name: 'sort_id') required final int sortId}) =
      _$OnboardingContentDaoImpl;

  factory _OnboardingContentDao.fromJson(Map<String, dynamic> json) =
      _$OnboardingContentDaoImpl.fromJson;

  @override
  String get id;
  @override
  List<OnboardingContentBlockDao> get blocks;
  @override
  @JsonKey(name: 'sort_id')
  int get sortId;
  @override
  @JsonKey(ignore: true)
  _$$OnboardingContentDaoImplCopyWith<_$OnboardingContentDaoImpl>
      get copyWith => throw _privateConstructorUsedError;
}
