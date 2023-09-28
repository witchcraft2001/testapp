// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'api_story_block_dao.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ApiStoryBlockDao _$ApiStoryBlockDaoFromJson(Map<String, dynamic> json) {
  return _ApiStoryBlockDao.fromJson(json);
}

/// @nodoc
mixin _$ApiStoryBlockDao {
  String get id => throw _privateConstructorUsedError;
  String get story => throw _privateConstructorUsedError; // parent id
  ApiStoryBlockDaoType get type => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get link => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError; // support some tags
  String? get image => throw _privateConstructorUsedError;
  @JsonKey(name: 'button_title')
  String get buttonTitle => throw _privateConstructorUsedError;
  @JsonKey(name: 'sort_id')
  int get sortId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ApiStoryBlockDaoCopyWith<ApiStoryBlockDao> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApiStoryBlockDaoCopyWith<$Res> {
  factory $ApiStoryBlockDaoCopyWith(
          ApiStoryBlockDao value, $Res Function(ApiStoryBlockDao) then) =
      _$ApiStoryBlockDaoCopyWithImpl<$Res, ApiStoryBlockDao>;
  @useResult
  $Res call(
      {String id,
      String story,
      ApiStoryBlockDaoType type,
      String title,
      String link,
      String content,
      String? image,
      @JsonKey(name: 'button_title') String buttonTitle,
      @JsonKey(name: 'sort_id') int sortId});
}

/// @nodoc
class _$ApiStoryBlockDaoCopyWithImpl<$Res, $Val extends ApiStoryBlockDao>
    implements $ApiStoryBlockDaoCopyWith<$Res> {
  _$ApiStoryBlockDaoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? story = null,
    Object? type = null,
    Object? title = null,
    Object? link = null,
    Object? content = null,
    Object? image = freezed,
    Object? buttonTitle = null,
    Object? sortId = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      story: null == story
          ? _value.story
          : story // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as ApiStoryBlockDaoType,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      link: null == link
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      buttonTitle: null == buttonTitle
          ? _value.buttonTitle
          : buttonTitle // ignore: cast_nullable_to_non_nullable
              as String,
      sortId: null == sortId
          ? _value.sortId
          : sortId // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ApiStoryBlockDaoCopyWith<$Res>
    implements $ApiStoryBlockDaoCopyWith<$Res> {
  factory _$$_ApiStoryBlockDaoCopyWith(
          _$_ApiStoryBlockDao value, $Res Function(_$_ApiStoryBlockDao) then) =
      __$$_ApiStoryBlockDaoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String story,
      ApiStoryBlockDaoType type,
      String title,
      String link,
      String content,
      String? image,
      @JsonKey(name: 'button_title') String buttonTitle,
      @JsonKey(name: 'sort_id') int sortId});
}

/// @nodoc
class __$$_ApiStoryBlockDaoCopyWithImpl<$Res>
    extends _$ApiStoryBlockDaoCopyWithImpl<$Res, _$_ApiStoryBlockDao>
    implements _$$_ApiStoryBlockDaoCopyWith<$Res> {
  __$$_ApiStoryBlockDaoCopyWithImpl(
      _$_ApiStoryBlockDao _value, $Res Function(_$_ApiStoryBlockDao) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? story = null,
    Object? type = null,
    Object? title = null,
    Object? link = null,
    Object? content = null,
    Object? image = freezed,
    Object? buttonTitle = null,
    Object? sortId = null,
  }) {
    return _then(_$_ApiStoryBlockDao(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      story: null == story
          ? _value.story
          : story // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as ApiStoryBlockDaoType,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      link: null == link
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      buttonTitle: null == buttonTitle
          ? _value.buttonTitle
          : buttonTitle // ignore: cast_nullable_to_non_nullable
              as String,
      sortId: null == sortId
          ? _value.sortId
          : sortId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ApiStoryBlockDao implements _ApiStoryBlockDao {
  const _$_ApiStoryBlockDao(
      {required this.id,
      required this.story,
      required this.type,
      this.title = '',
      this.link = '',
      this.content = '',
      this.image,
      @JsonKey(name: 'button_title') this.buttonTitle = '',
      @JsonKey(name: 'sort_id') required this.sortId});

  factory _$_ApiStoryBlockDao.fromJson(Map<String, dynamic> json) =>
      _$$_ApiStoryBlockDaoFromJson(json);

  @override
  final String id;
  @override
  final String story;
// parent id
  @override
  final ApiStoryBlockDaoType type;
  @override
  @JsonKey()
  final String title;
  @override
  @JsonKey()
  final String link;
  @override
  @JsonKey()
  final String content;
// support some tags
  @override
  final String? image;
  @override
  @JsonKey(name: 'button_title')
  final String buttonTitle;
  @override
  @JsonKey(name: 'sort_id')
  final int sortId;

  @override
  String toString() {
    return 'ApiStoryBlockDao(id: $id, story: $story, type: $type, title: $title, link: $link, content: $content, image: $image, buttonTitle: $buttonTitle, sortId: $sortId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ApiStoryBlockDao &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.story, story) || other.story == story) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.link, link) || other.link == link) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.buttonTitle, buttonTitle) ||
                other.buttonTitle == buttonTitle) &&
            (identical(other.sortId, sortId) || other.sortId == sortId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, story, type, title, link,
      content, image, buttonTitle, sortId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ApiStoryBlockDaoCopyWith<_$_ApiStoryBlockDao> get copyWith =>
      __$$_ApiStoryBlockDaoCopyWithImpl<_$_ApiStoryBlockDao>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ApiStoryBlockDaoToJson(
      this,
    );
  }
}

abstract class _ApiStoryBlockDao implements ApiStoryBlockDao {
  const factory _ApiStoryBlockDao(
          {required final String id,
          required final String story,
          required final ApiStoryBlockDaoType type,
          final String title,
          final String link,
          final String content,
          final String? image,
          @JsonKey(name: 'button_title') final String buttonTitle,
          @JsonKey(name: 'sort_id') required final int sortId}) =
      _$_ApiStoryBlockDao;

  factory _ApiStoryBlockDao.fromJson(Map<String, dynamic> json) =
      _$_ApiStoryBlockDao.fromJson;

  @override
  String get id;
  @override
  String get story;
  @override // parent id
  ApiStoryBlockDaoType get type;
  @override
  String get title;
  @override
  String get link;
  @override
  String get content;
  @override // support some tags
  String? get image;
  @override
  @JsonKey(name: 'button_title')
  String get buttonTitle;
  @override
  @JsonKey(name: 'sort_id')
  int get sortId;
  @override
  @JsonKey(ignore: true)
  _$$_ApiStoryBlockDaoCopyWith<_$_ApiStoryBlockDao> get copyWith =>
      throw _privateConstructorUsedError;
}
