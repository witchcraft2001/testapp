// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'api_news_dao.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ApiNewsDao _$ApiNewsDaoFromJson(Map<String, dynamic> json) {
  return _ApiNewsDao.fromJson(json);
}

/// @nodoc
mixin _$ApiNewsDao {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get subtitle => throw _privateConstructorUsedError;
  ApiNewsDaoType get type => throw _privateConstructorUsedError;
  bool get published => throw _privateConstructorUsedError;
  String? get icon => throw _privateConstructorUsedError;
  ApiRegionDao? get region => throw _privateConstructorUsedError;
  String get link => throw _privateConstructorUsedError;
  String get tag => throw _privateConstructorUsedError;
  @JsonKey(name: 'background_color')
  String get backgroundColor => throw _privateConstructorUsedError;
  @JsonKey(name: 'font_color')
  String get fontColor => throw _privateConstructorUsedError;
  @JsonKey(name: 'sort_id')
  int get sortId => throw _privateConstructorUsedError;
  List<ApiStoryDao> get stories => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ApiNewsDaoCopyWith<ApiNewsDao> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApiNewsDaoCopyWith<$Res> {
  factory $ApiNewsDaoCopyWith(
          ApiNewsDao value, $Res Function(ApiNewsDao) then) =
      _$ApiNewsDaoCopyWithImpl<$Res, ApiNewsDao>;
  @useResult
  $Res call(
      {String id,
      String title,
      String subtitle,
      ApiNewsDaoType type,
      bool published,
      String? icon,
      ApiRegionDao? region,
      String link,
      String tag,
      @JsonKey(name: 'background_color') String backgroundColor,
      @JsonKey(name: 'font_color') String fontColor,
      @JsonKey(name: 'sort_id') int sortId,
      List<ApiStoryDao> stories});

  $ApiRegionDaoCopyWith<$Res>? get region;
}

/// @nodoc
class _$ApiNewsDaoCopyWithImpl<$Res, $Val extends ApiNewsDao>
    implements $ApiNewsDaoCopyWith<$Res> {
  _$ApiNewsDaoCopyWithImpl(this._value, this._then);

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
    Object? region = freezed,
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
              as ApiNewsDaoType,
      published: null == published
          ? _value.published
          : published // ignore: cast_nullable_to_non_nullable
              as bool,
      icon: freezed == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String?,
      region: freezed == region
          ? _value.region
          : region // ignore: cast_nullable_to_non_nullable
              as ApiRegionDao?,
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
              as List<ApiStoryDao>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ApiRegionDaoCopyWith<$Res>? get region {
    if (_value.region == null) {
      return null;
    }

    return $ApiRegionDaoCopyWith<$Res>(_value.region!, (value) {
      return _then(_value.copyWith(region: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ApiNewsDaoImplCopyWith<$Res>
    implements $ApiNewsDaoCopyWith<$Res> {
  factory _$$ApiNewsDaoImplCopyWith(
          _$ApiNewsDaoImpl value, $Res Function(_$ApiNewsDaoImpl) then) =
      __$$ApiNewsDaoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String title,
      String subtitle,
      ApiNewsDaoType type,
      bool published,
      String? icon,
      ApiRegionDao? region,
      String link,
      String tag,
      @JsonKey(name: 'background_color') String backgroundColor,
      @JsonKey(name: 'font_color') String fontColor,
      @JsonKey(name: 'sort_id') int sortId,
      List<ApiStoryDao> stories});

  @override
  $ApiRegionDaoCopyWith<$Res>? get region;
}

/// @nodoc
class __$$ApiNewsDaoImplCopyWithImpl<$Res>
    extends _$ApiNewsDaoCopyWithImpl<$Res, _$ApiNewsDaoImpl>
    implements _$$ApiNewsDaoImplCopyWith<$Res> {
  __$$ApiNewsDaoImplCopyWithImpl(
      _$ApiNewsDaoImpl _value, $Res Function(_$ApiNewsDaoImpl) _then)
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
    Object? region = freezed,
    Object? link = null,
    Object? tag = null,
    Object? backgroundColor = null,
    Object? fontColor = null,
    Object? sortId = null,
    Object? stories = null,
  }) {
    return _then(_$ApiNewsDaoImpl(
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
              as ApiNewsDaoType,
      published: null == published
          ? _value.published
          : published // ignore: cast_nullable_to_non_nullable
              as bool,
      icon: freezed == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String?,
      region: freezed == region
          ? _value.region
          : region // ignore: cast_nullable_to_non_nullable
              as ApiRegionDao?,
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
              as List<ApiStoryDao>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ApiNewsDaoImpl implements _ApiNewsDao {
  const _$ApiNewsDaoImpl(
      {required this.id,
      required this.title,
      required this.subtitle,
      required this.type,
      required this.published,
      this.icon,
      this.region,
      this.link = '',
      this.tag = '',
      @JsonKey(name: 'background_color') required this.backgroundColor,
      @JsonKey(name: 'font_color') this.fontColor = '',
      @JsonKey(name: 'sort_id') required this.sortId,
      final List<ApiStoryDao> stories = const <ApiStoryDao>[]})
      : _stories = stories;

  factory _$ApiNewsDaoImpl.fromJson(Map<String, dynamic> json) =>
      _$$ApiNewsDaoImplFromJson(json);

  @override
  final String id;
  @override
  final String title;
  @override
  final String subtitle;
  @override
  final ApiNewsDaoType type;
  @override
  final bool published;
  @override
  final String? icon;
  @override
  final ApiRegionDao? region;
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
  final List<ApiStoryDao> _stories;
  @override
  @JsonKey()
  List<ApiStoryDao> get stories {
    if (_stories is EqualUnmodifiableListView) return _stories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_stories);
  }

  @override
  String toString() {
    return 'ApiNewsDao(id: $id, title: $title, subtitle: $subtitle, type: $type, published: $published, icon: $icon, region: $region, link: $link, tag: $tag, backgroundColor: $backgroundColor, fontColor: $fontColor, sortId: $sortId, stories: $stories)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ApiNewsDaoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.subtitle, subtitle) ||
                other.subtitle == subtitle) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.published, published) ||
                other.published == published) &&
            (identical(other.icon, icon) || other.icon == icon) &&
            (identical(other.region, region) || other.region == region) &&
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
      region,
      link,
      tag,
      backgroundColor,
      fontColor,
      sortId,
      const DeepCollectionEquality().hash(_stories));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ApiNewsDaoImplCopyWith<_$ApiNewsDaoImpl> get copyWith =>
      __$$ApiNewsDaoImplCopyWithImpl<_$ApiNewsDaoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ApiNewsDaoImplToJson(
      this,
    );
  }
}

abstract class _ApiNewsDao implements ApiNewsDao {
  const factory _ApiNewsDao(
      {required final String id,
      required final String title,
      required final String subtitle,
      required final ApiNewsDaoType type,
      required final bool published,
      final String? icon,
      final ApiRegionDao? region,
      final String link,
      final String tag,
      @JsonKey(name: 'background_color') required final String backgroundColor,
      @JsonKey(name: 'font_color') final String fontColor,
      @JsonKey(name: 'sort_id') required final int sortId,
      final List<ApiStoryDao> stories}) = _$ApiNewsDaoImpl;

  factory _ApiNewsDao.fromJson(Map<String, dynamic> json) =
      _$ApiNewsDaoImpl.fromJson;

  @override
  String get id;
  @override
  String get title;
  @override
  String get subtitle;
  @override
  ApiNewsDaoType get type;
  @override
  bool get published;
  @override
  String? get icon;
  @override
  ApiRegionDao? get region;
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
  List<ApiStoryDao> get stories;
  @override
  @JsonKey(ignore: true)
  _$$ApiNewsDaoImplCopyWith<_$ApiNewsDaoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
