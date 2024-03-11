// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'onboarding_usefull_materials_dao.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

OnboardingUsefullMaterialDao _$OnboardingUsefullMaterialDaoFromJson(
    Map<String, dynamic> json) {
  return _OnboardingUsefullMaterialDao.fromJson(json);
}

/// @nodoc
mixin _$OnboardingUsefullMaterialDao {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;
  @JsonKey(name: 'background_color')
  String get backgroundColor => throw _privateConstructorUsedError;
  @JsonKey(name: 'sort_id')
  int get sortId => throw _privateConstructorUsedError;
  List<MediaContentDao> get stories => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OnboardingUsefullMaterialDaoCopyWith<OnboardingUsefullMaterialDao>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OnboardingUsefullMaterialDaoCopyWith<$Res> {
  factory $OnboardingUsefullMaterialDaoCopyWith(
          OnboardingUsefullMaterialDao value,
          $Res Function(OnboardingUsefullMaterialDao) then) =
      _$OnboardingUsefullMaterialDaoCopyWithImpl<$Res,
          OnboardingUsefullMaterialDao>;
  @useResult
  $Res call(
      {String id,
      String title,
      String image,
      @JsonKey(name: 'background_color') String backgroundColor,
      @JsonKey(name: 'sort_id') int sortId,
      List<MediaContentDao> stories});
}

/// @nodoc
class _$OnboardingUsefullMaterialDaoCopyWithImpl<$Res,
        $Val extends OnboardingUsefullMaterialDao>
    implements $OnboardingUsefullMaterialDaoCopyWith<$Res> {
  _$OnboardingUsefullMaterialDaoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? image = null,
    Object? backgroundColor = null,
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
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      backgroundColor: null == backgroundColor
          ? _value.backgroundColor
          : backgroundColor // ignore: cast_nullable_to_non_nullable
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
abstract class _$$OnboardingUsefullMaterialDaoImplCopyWith<$Res>
    implements $OnboardingUsefullMaterialDaoCopyWith<$Res> {
  factory _$$OnboardingUsefullMaterialDaoImplCopyWith(
          _$OnboardingUsefullMaterialDaoImpl value,
          $Res Function(_$OnboardingUsefullMaterialDaoImpl) then) =
      __$$OnboardingUsefullMaterialDaoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String title,
      String image,
      @JsonKey(name: 'background_color') String backgroundColor,
      @JsonKey(name: 'sort_id') int sortId,
      List<MediaContentDao> stories});
}

/// @nodoc
class __$$OnboardingUsefullMaterialDaoImplCopyWithImpl<$Res>
    extends _$OnboardingUsefullMaterialDaoCopyWithImpl<$Res,
        _$OnboardingUsefullMaterialDaoImpl>
    implements _$$OnboardingUsefullMaterialDaoImplCopyWith<$Res> {
  __$$OnboardingUsefullMaterialDaoImplCopyWithImpl(
      _$OnboardingUsefullMaterialDaoImpl _value,
      $Res Function(_$OnboardingUsefullMaterialDaoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? image = null,
    Object? backgroundColor = null,
    Object? sortId = null,
    Object? stories = null,
  }) {
    return _then(_$OnboardingUsefullMaterialDaoImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      backgroundColor: null == backgroundColor
          ? _value.backgroundColor
          : backgroundColor // ignore: cast_nullable_to_non_nullable
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
class _$OnboardingUsefullMaterialDaoImpl
    implements _OnboardingUsefullMaterialDao {
  const _$OnboardingUsefullMaterialDaoImpl(
      {required this.id,
      required this.title,
      required this.image,
      @JsonKey(name: 'background_color') required this.backgroundColor,
      @JsonKey(name: 'sort_id') required this.sortId,
      final List<MediaContentDao> stories = const <MediaContentDao>[]})
      : _stories = stories;

  factory _$OnboardingUsefullMaterialDaoImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$OnboardingUsefullMaterialDaoImplFromJson(json);

  @override
  final String id;
  @override
  final String title;
  @override
  final String image;
  @override
  @JsonKey(name: 'background_color')
  final String backgroundColor;
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
    return 'OnboardingUsefullMaterialDao(id: $id, title: $title, image: $image, backgroundColor: $backgroundColor, sortId: $sortId, stories: $stories)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnboardingUsefullMaterialDaoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.backgroundColor, backgroundColor) ||
                other.backgroundColor == backgroundColor) &&
            (identical(other.sortId, sortId) || other.sortId == sortId) &&
            const DeepCollectionEquality().equals(other._stories, _stories));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, title, image,
      backgroundColor, sortId, const DeepCollectionEquality().hash(_stories));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OnboardingUsefullMaterialDaoImplCopyWith<
          _$OnboardingUsefullMaterialDaoImpl>
      get copyWith => __$$OnboardingUsefullMaterialDaoImplCopyWithImpl<
          _$OnboardingUsefullMaterialDaoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OnboardingUsefullMaterialDaoImplToJson(
      this,
    );
  }
}

abstract class _OnboardingUsefullMaterialDao
    implements OnboardingUsefullMaterialDao {
  const factory _OnboardingUsefullMaterialDao(
      {required final String id,
      required final String title,
      required final String image,
      @JsonKey(name: 'background_color') required final String backgroundColor,
      @JsonKey(name: 'sort_id') required final int sortId,
      final List<MediaContentDao>
          stories}) = _$OnboardingUsefullMaterialDaoImpl;

  factory _OnboardingUsefullMaterialDao.fromJson(Map<String, dynamic> json) =
      _$OnboardingUsefullMaterialDaoImpl.fromJson;

  @override
  String get id;
  @override
  String get title;
  @override
  String get image;
  @override
  @JsonKey(name: 'background_color')
  String get backgroundColor;
  @override
  @JsonKey(name: 'sort_id')
  int get sortId;
  @override
  List<MediaContentDao> get stories;
  @override
  @JsonKey(ignore: true)
  _$$OnboardingUsefullMaterialDaoImplCopyWith<
          _$OnboardingUsefullMaterialDaoImpl>
      get copyWith => throw _privateConstructorUsedError;
}
