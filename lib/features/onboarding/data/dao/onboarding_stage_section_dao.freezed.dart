// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'onboarding_stage_section_dao.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

OnboardingStageSectionDao _$OnboardingStageSectionDaoFromJson(
    Map<String, dynamic> json) {
  return _OnboardingStageSectionDao.fromJson(json);
}

/// @nodoc
mixin _$OnboardingStageSectionDao {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  @JsonKey(name: 'sort_id')
  int get sortId => throw _privateConstructorUsedError;
  List<MediaContentDao> get stories => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OnboardingStageSectionDaoCopyWith<OnboardingStageSectionDao> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OnboardingStageSectionDaoCopyWith<$Res> {
  factory $OnboardingStageSectionDaoCopyWith(OnboardingStageSectionDao value,
          $Res Function(OnboardingStageSectionDao) then) =
      _$OnboardingStageSectionDaoCopyWithImpl<$Res, OnboardingStageSectionDao>;
  @useResult
  $Res call(
      {String id,
      String title,
      @JsonKey(name: 'sort_id') int sortId,
      List<MediaContentDao> stories});
}

/// @nodoc
class _$OnboardingStageSectionDaoCopyWithImpl<$Res,
        $Val extends OnboardingStageSectionDao>
    implements $OnboardingStageSectionDaoCopyWith<$Res> {
  _$OnboardingStageSectionDaoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? sortId = null,
    Object? stories = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      sortId: null == sortId
          ? _value.sortId
          : sortId // ignore: cast_nullable_to_non_nullable
              as int,
      stories: null == stories
          ? _value.stories
          : stories // ignore: cast_nullable_to_non_nullable
              as List<MediaContentDao>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OnboardingStageSectionDaoImplCopyWith<$Res>
    implements $OnboardingStageSectionDaoCopyWith<$Res> {
  factory _$$OnboardingStageSectionDaoImplCopyWith(
          _$OnboardingStageSectionDaoImpl value,
          $Res Function(_$OnboardingStageSectionDaoImpl) then) =
      __$$OnboardingStageSectionDaoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String title,
      @JsonKey(name: 'sort_id') int sortId,
      List<MediaContentDao> stories});
}

/// @nodoc
class __$$OnboardingStageSectionDaoImplCopyWithImpl<$Res>
    extends _$OnboardingStageSectionDaoCopyWithImpl<$Res,
        _$OnboardingStageSectionDaoImpl>
    implements _$$OnboardingStageSectionDaoImplCopyWith<$Res> {
  __$$OnboardingStageSectionDaoImplCopyWithImpl(
      _$OnboardingStageSectionDaoImpl _value,
      $Res Function(_$OnboardingStageSectionDaoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? sortId = null,
    Object? stories = null,
  }) {
    return _then(_$OnboardingStageSectionDaoImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      sortId: null == sortId
          ? _value.sortId
          : sortId // ignore: cast_nullable_to_non_nullable
              as int,
      stories: null == stories
          ? _value._stories
          : stories // ignore: cast_nullable_to_non_nullable
              as List<MediaContentDao>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OnboardingStageSectionDaoImpl implements _OnboardingStageSectionDao {
  const _$OnboardingStageSectionDaoImpl(
      {required this.id,
      required this.title,
      @JsonKey(name: 'sort_id') required this.sortId,
      final List<MediaContentDao> stories = const <MediaContentDao>[]})
      : _stories = stories;

  factory _$OnboardingStageSectionDaoImpl.fromJson(Map<String, dynamic> json) =>
      _$$OnboardingStageSectionDaoImplFromJson(json);

  @override
  final String id;
  @override
  final String title;
  @override
  @JsonKey(name: 'sort_id')
  final int sortId;
  final List<MediaContentDao> _stories;
  @override
  @JsonKey()
  List<MediaContentDao> get stories {
    if (_stories is EqualUnmodifiableListView) return _stories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_stories);
  }

  @override
  String toString() {
    return 'OnboardingStageSectionDao(id: $id, title: $title, sortId: $sortId, stories: $stories)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnboardingStageSectionDaoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.sortId, sortId) || other.sortId == sortId) &&
            const DeepCollectionEquality().equals(other._stories, _stories));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, title, sortId,
      const DeepCollectionEquality().hash(_stories));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OnboardingStageSectionDaoImplCopyWith<_$OnboardingStageSectionDaoImpl>
      get copyWith => __$$OnboardingStageSectionDaoImplCopyWithImpl<
          _$OnboardingStageSectionDaoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OnboardingStageSectionDaoImplToJson(
      this,
    );
  }
}

abstract class _OnboardingStageSectionDao implements OnboardingStageSectionDao {
  const factory _OnboardingStageSectionDao(
      {required final String id,
      required final String title,
      @JsonKey(name: 'sort_id') required final int sortId,
      final List<MediaContentDao> stories}) = _$OnboardingStageSectionDaoImpl;

  factory _OnboardingStageSectionDao.fromJson(Map<String, dynamic> json) =
      _$OnboardingStageSectionDaoImpl.fromJson;

  @override
  String get id;
  @override
  String get title;
  @override
  @JsonKey(name: 'sort_id')
  int get sortId;
  @override
  List<MediaContentDao> get stories;
  @override
  @JsonKey(ignore: true)
  _$$OnboardingStageSectionDaoImplCopyWith<_$OnboardingStageSectionDaoImpl>
      get copyWith => throw _privateConstructorUsedError;
}
