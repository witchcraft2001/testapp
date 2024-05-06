// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'onboarding_special_section_dao.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

OnboardingSpecialSectionDao _$OnboardingSpecialSectionDaoFromJson(
    Map<String, dynamic> json) {
  return _OnboardingSpecialSectionDao.fromJson(json);
}

/// @nodoc
mixin _$OnboardingSpecialSectionDao {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get subtitle => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;
  @JsonKey(name: 'sort_id')
  int get sortId => throw _privateConstructorUsedError;
  List<OnboardingContentDao> get stories => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OnboardingSpecialSectionDaoCopyWith<OnboardingSpecialSectionDao>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OnboardingSpecialSectionDaoCopyWith<$Res> {
  factory $OnboardingSpecialSectionDaoCopyWith(
          OnboardingSpecialSectionDao value,
          $Res Function(OnboardingSpecialSectionDao) then) =
      _$OnboardingSpecialSectionDaoCopyWithImpl<$Res,
          OnboardingSpecialSectionDao>;
  @useResult
  $Res call(
      {String id,
      String title,
      String subtitle,
      String image,
      @JsonKey(name: 'sort_id') int sortId,
      List<OnboardingContentDao> stories});
}

/// @nodoc
class _$OnboardingSpecialSectionDaoCopyWithImpl<$Res,
        $Val extends OnboardingSpecialSectionDao>
    implements $OnboardingSpecialSectionDaoCopyWith<$Res> {
  _$OnboardingSpecialSectionDaoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? subtitle = null,
    Object? image = null,
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
      subtitle: null == subtitle
          ? _value.subtitle
          : subtitle // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      sortId: null == sortId
          ? _value.sortId
          : sortId // ignore: cast_nullable_to_non_nullable
              as int,
      stories: null == stories
          ? _value.stories
          : stories // ignore: cast_nullable_to_non_nullable
              as List<OnboardingContentDao>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OnboardingSpecialSectionDaoImplCopyWith<$Res>
    implements $OnboardingSpecialSectionDaoCopyWith<$Res> {
  factory _$$OnboardingSpecialSectionDaoImplCopyWith(
          _$OnboardingSpecialSectionDaoImpl value,
          $Res Function(_$OnboardingSpecialSectionDaoImpl) then) =
      __$$OnboardingSpecialSectionDaoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String title,
      String subtitle,
      String image,
      @JsonKey(name: 'sort_id') int sortId,
      List<OnboardingContentDao> stories});
}

/// @nodoc
class __$$OnboardingSpecialSectionDaoImplCopyWithImpl<$Res>
    extends _$OnboardingSpecialSectionDaoCopyWithImpl<$Res,
        _$OnboardingSpecialSectionDaoImpl>
    implements _$$OnboardingSpecialSectionDaoImplCopyWith<$Res> {
  __$$OnboardingSpecialSectionDaoImplCopyWithImpl(
      _$OnboardingSpecialSectionDaoImpl _value,
      $Res Function(_$OnboardingSpecialSectionDaoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? subtitle = null,
    Object? image = null,
    Object? sortId = null,
    Object? stories = null,
  }) {
    return _then(_$OnboardingSpecialSectionDaoImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      subtitle: null == subtitle
          ? _value.subtitle
          : subtitle // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      sortId: null == sortId
          ? _value.sortId
          : sortId // ignore: cast_nullable_to_non_nullable
              as int,
      stories: null == stories
          ? _value._stories
          : stories // ignore: cast_nullable_to_non_nullable
              as List<OnboardingContentDao>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OnboardingSpecialSectionDaoImpl
    implements _OnboardingSpecialSectionDao {
  const _$OnboardingSpecialSectionDaoImpl(
      {required this.id,
      required this.title,
      required this.subtitle,
      required this.image,
      @JsonKey(name: 'sort_id') required this.sortId,
      final List<OnboardingContentDao> stories =
          const <OnboardingContentDao>[]})
      : _stories = stories;

  factory _$OnboardingSpecialSectionDaoImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$OnboardingSpecialSectionDaoImplFromJson(json);

  @override
  final String id;
  @override
  final String title;
  @override
  final String subtitle;
  @override
  final String image;
  @override
  @JsonKey(name: 'sort_id')
  final int sortId;
  final List<OnboardingContentDao> _stories;
  @override
  @JsonKey()
  List<OnboardingContentDao> get stories {
    if (_stories is EqualUnmodifiableListView) return _stories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_stories);
  }

  @override
  String toString() {
    return 'OnboardingSpecialSectionDao(id: $id, title: $title, subtitle: $subtitle, image: $image, sortId: $sortId, stories: $stories)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnboardingSpecialSectionDaoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.subtitle, subtitle) ||
                other.subtitle == subtitle) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.sortId, sortId) || other.sortId == sortId) &&
            const DeepCollectionEquality().equals(other._stories, _stories));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, title, subtitle, image,
      sortId, const DeepCollectionEquality().hash(_stories));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OnboardingSpecialSectionDaoImplCopyWith<_$OnboardingSpecialSectionDaoImpl>
      get copyWith => __$$OnboardingSpecialSectionDaoImplCopyWithImpl<
          _$OnboardingSpecialSectionDaoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OnboardingSpecialSectionDaoImplToJson(
      this,
    );
  }
}

abstract class _OnboardingSpecialSectionDao
    implements OnboardingSpecialSectionDao {
  const factory _OnboardingSpecialSectionDao(
          {required final String id,
          required final String title,
          required final String subtitle,
          required final String image,
          @JsonKey(name: 'sort_id') required final int sortId,
          final List<OnboardingContentDao> stories}) =
      _$OnboardingSpecialSectionDaoImpl;

  factory _OnboardingSpecialSectionDao.fromJson(Map<String, dynamic> json) =
      _$OnboardingSpecialSectionDaoImpl.fromJson;

  @override
  String get id;
  @override
  String get title;
  @override
  String get subtitle;
  @override
  String get image;
  @override
  @JsonKey(name: 'sort_id')
  int get sortId;
  @override
  List<OnboardingContentDao> get stories;
  @override
  @JsonKey(ignore: true)
  _$$OnboardingSpecialSectionDaoImplCopyWith<_$OnboardingSpecialSectionDaoImpl>
      get copyWith => throw _privateConstructorUsedError;
}
