// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'api_news.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ApiNews _$ApiNewsFromJson(Map<String, dynamic> json) {
  return _ApiNews.fromJson(json);
}

/// @nodoc
mixin _$ApiNews {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get subtitle => throw _privateConstructorUsedError;
  ApiNewsType get type => throw _privateConstructorUsedError;
  bool get published => throw _privateConstructorUsedError;
  String? get icon => throw _privateConstructorUsedError;
  String get link => throw _privateConstructorUsedError;
  String get tag => throw _privateConstructorUsedError;
  @JsonKey(name: 'background_color')
  String get backgroundColor => throw _privateConstructorUsedError;
  @JsonKey(name: 'font_color')
  String get fontColor => throw _privateConstructorUsedError;
  @JsonKey(name: 'sort_id')
  int get sortId => throw _privateConstructorUsedError;
  List<ApiStory> get stories => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ApiNewsCopyWith<ApiNews> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApiNewsCopyWith<$Res> {
  factory $ApiNewsCopyWith(ApiNews value, $Res Function(ApiNews) then) =
      _$ApiNewsCopyWithImpl<$Res, ApiNews>;
  @useResult
  $Res call(
      {String id,
      String title,
      String subtitle,
      ApiNewsType type,
      bool published,
      String? icon,
      String link,
      String tag,
      @JsonKey(name: 'background_color') String backgroundColor,
      @JsonKey(name: 'font_color') String fontColor,
      @JsonKey(name: 'sort_id') int sortId,
      List<ApiStory> stories});
}

/// @nodoc
class _$ApiNewsCopyWithImpl<$Res, $Val extends ApiNews>
    implements $ApiNewsCopyWith<$Res> {
  _$ApiNewsCopyWithImpl(this._value, this._then);

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
    Object? type = null,
    Object? published = null,
    Object? icon = freezed,
    Object? link = null,
    Object? tag = null,
    Object? backgroundColor = null,
    Object? fontColor = null,
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
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as ApiNewsType,
      published: null == published
          ? _value.published
          : published // ignore: cast_nullable_to_non_nullable
              as bool,
      icon: freezed == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String?,
      link: null == link
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String,
      tag: null == tag
          ? _value.tag
          : tag // ignore: cast_nullable_to_non_nullable
              as String,
      backgroundColor: null == backgroundColor
          ? _value.backgroundColor
          : backgroundColor // ignore: cast_nullable_to_non_nullable
              as String,
      fontColor: null == fontColor
          ? _value.fontColor
          : fontColor // ignore: cast_nullable_to_non_nullable
              as String,
      sortId: null == sortId
          ? _value.sortId
          : sortId // ignore: cast_nullable_to_non_nullable
              as int,
      stories: null == stories
          ? _value.stories
          : stories // ignore: cast_nullable_to_non_nullable
              as List<ApiStory>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ApiNewsCopyWith<$Res> implements $ApiNewsCopyWith<$Res> {
  factory _$$_ApiNewsCopyWith(
          _$_ApiNews value, $Res Function(_$_ApiNews) then) =
      __$$_ApiNewsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String title,
      String subtitle,
      ApiNewsType type,
      bool published,
      String? icon,
      String link,
      String tag,
      @JsonKey(name: 'background_color') String backgroundColor,
      @JsonKey(name: 'font_color') String fontColor,
      @JsonKey(name: 'sort_id') int sortId,
      List<ApiStory> stories});
}

/// @nodoc
class __$$_ApiNewsCopyWithImpl<$Res>
    extends _$ApiNewsCopyWithImpl<$Res, _$_ApiNews>
    implements _$$_ApiNewsCopyWith<$Res> {
  __$$_ApiNewsCopyWithImpl(_$_ApiNews _value, $Res Function(_$_ApiNews) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? subtitle = null,
    Object? type = null,
    Object? published = null,
    Object? icon = freezed,
    Object? link = null,
    Object? tag = null,
    Object? backgroundColor = null,
    Object? fontColor = null,
    Object? sortId = null,
    Object? stories = null,
  }) {
    return _then(_$_ApiNews(
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
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as ApiNewsType,
      published: null == published
          ? _value.published
          : published // ignore: cast_nullable_to_non_nullable
              as bool,
      icon: freezed == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String?,
      link: null == link
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String,
      tag: null == tag
          ? _value.tag
          : tag // ignore: cast_nullable_to_non_nullable
              as String,
      backgroundColor: null == backgroundColor
          ? _value.backgroundColor
          : backgroundColor // ignore: cast_nullable_to_non_nullable
              as String,
      fontColor: null == fontColor
          ? _value.fontColor
          : fontColor // ignore: cast_nullable_to_non_nullable
              as String,
      sortId: null == sortId
          ? _value.sortId
          : sortId // ignore: cast_nullable_to_non_nullable
              as int,
      stories: null == stories
          ? _value._stories
          : stories // ignore: cast_nullable_to_non_nullable
              as List<ApiStory>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ApiNews implements _ApiNews {
  const _$_ApiNews(
      {required this.id,
      required this.title,
      required this.subtitle,
      required this.type,
      required this.published,
      this.icon,
      this.link = '',
      this.tag = '',
      @JsonKey(name: 'background_color') required this.backgroundColor,
      @JsonKey(name: 'font_color') this.fontColor = '',
      @JsonKey(name: 'sort_id') required this.sortId,
      final List<ApiStory> stories = const <ApiStory>[]})
      : _stories = stories;

  factory _$_ApiNews.fromJson(Map<String, dynamic> json) =>
      _$$_ApiNewsFromJson(json);

  @override
  final String id;
  @override
  final String title;
  @override
  final String subtitle;
  @override
  final ApiNewsType type;
  @override
  final bool published;
  @override
  final String? icon;
  @override
  @JsonKey()
  final String link;
  @override
  @JsonKey()
  final String tag;
  @override
  @JsonKey(name: 'background_color')
  final String backgroundColor;
  @override
  @JsonKey(name: 'font_color')
  final String fontColor;
  @override
  @JsonKey(name: 'sort_id')
  final int sortId;
  final List<ApiStory> _stories;
  @override
  @JsonKey()
  List<ApiStory> get stories {
    if (_stories is EqualUnmodifiableListView) return _stories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_stories);
  }

  @override
  String toString() {
    return 'ApiNews(id: $id, title: $title, subtitle: $subtitle, type: $type, published: $published, icon: $icon, link: $link, tag: $tag, backgroundColor: $backgroundColor, fontColor: $fontColor, sortId: $sortId, stories: $stories)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ApiNews &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.subtitle, subtitle) ||
                other.subtitle == subtitle) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.published, published) ||
                other.published == published) &&
            (identical(other.icon, icon) || other.icon == icon) &&
            (identical(other.link, link) || other.link == link) &&
            (identical(other.tag, tag) || other.tag == tag) &&
            (identical(other.backgroundColor, backgroundColor) ||
                other.backgroundColor == backgroundColor) &&
            (identical(other.fontColor, fontColor) ||
                other.fontColor == fontColor) &&
            (identical(other.sortId, sortId) || other.sortId == sortId) &&
            const DeepCollectionEquality().equals(other._stories, _stories));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      title,
      subtitle,
      type,
      published,
      icon,
      link,
      tag,
      backgroundColor,
      fontColor,
      sortId,
      const DeepCollectionEquality().hash(_stories));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ApiNewsCopyWith<_$_ApiNews> get copyWith =>
      __$$_ApiNewsCopyWithImpl<_$_ApiNews>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ApiNewsToJson(
      this,
    );
  }
}

abstract class _ApiNews implements ApiNews {
  const factory _ApiNews(
      {required final String id,
      required final String title,
      required final String subtitle,
      required final ApiNewsType type,
      required final bool published,
      final String? icon,
      final String link,
      final String tag,
      @JsonKey(name: 'background_color') required final String backgroundColor,
      @JsonKey(name: 'font_color') final String fontColor,
      @JsonKey(name: 'sort_id') required final int sortId,
      final List<ApiStory> stories}) = _$_ApiNews;

  factory _ApiNews.fromJson(Map<String, dynamic> json) = _$_ApiNews.fromJson;

  @override
  String get id;
  @override
  String get title;
  @override
  String get subtitle;
  @override
  ApiNewsType get type;
  @override
  bool get published;
  @override
  String? get icon;
  @override
  String get link;
  @override
  String get tag;
  @override
  @JsonKey(name: 'background_color')
  String get backgroundColor;
  @override
  @JsonKey(name: 'font_color')
  String get fontColor;
  @override
  @JsonKey(name: 'sort_id')
  int get sortId;
  @override
  List<ApiStory> get stories;
  @override
  @JsonKey(ignore: true)
  _$$_ApiNewsCopyWith<_$_ApiNews> get copyWith =>
      throw _privateConstructorUsedError;
}
