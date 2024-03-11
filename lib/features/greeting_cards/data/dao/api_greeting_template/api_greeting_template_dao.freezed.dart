// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'api_greeting_template_dao.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ApiGreetingTemplateDao _$ApiGreetingTemplateDaoFromJson(
    Map<String, dynamic> json) {
  return _ApiGreetingTemplateDao.fromJson(json);
}

/// @nodoc
mixin _$ApiGreetingTemplateDao {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  bool get published => throw _privateConstructorUsedError;
  ApiGreetingTemplateDaoAccess get access => throw _privateConstructorUsedError;
  @JsonKey(name: 'access_users')
  List<ApiGreetingTemplateUserDao> get accessUsers =>
      throw _privateConstructorUsedError;
  ApiRegionDao? get region => throw _privateConstructorUsedError;
  @JsonKey(name: 'background_color')
  String get backgroundColor => throw _privateConstructorUsedError;
  @JsonKey(name: 'font_color')
  String get fontColor => throw _privateConstructorUsedError;
  @JsonKey(name: 'sort_id')
  int get sortId => throw _privateConstructorUsedError;
  List<MediaContentDao> get groups => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ApiGreetingTemplateDaoCopyWith<ApiGreetingTemplateDao> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApiGreetingTemplateDaoCopyWith<$Res> {
  factory $ApiGreetingTemplateDaoCopyWith(ApiGreetingTemplateDao value,
          $Res Function(ApiGreetingTemplateDao) then) =
      _$ApiGreetingTemplateDaoCopyWithImpl<$Res, ApiGreetingTemplateDao>;
  @useResult
  $Res call(
      {String id,
      String title,
      bool published,
      ApiGreetingTemplateDaoAccess access,
      @JsonKey(name: 'access_users')
      List<ApiGreetingTemplateUserDao> accessUsers,
      ApiRegionDao? region,
      @JsonKey(name: 'background_color') String backgroundColor,
      @JsonKey(name: 'font_color') String fontColor,
      @JsonKey(name: 'sort_id') int sortId,
      List<MediaContentDao> groups});

  $ApiRegionDaoCopyWith<$Res>? get region;
}

/// @nodoc
class _$ApiGreetingTemplateDaoCopyWithImpl<$Res,
        $Val extends ApiGreetingTemplateDao>
    implements $ApiGreetingTemplateDaoCopyWith<$Res> {
  _$ApiGreetingTemplateDaoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? published = null,
    Object? access = null,
    Object? accessUsers = null,
    Object? region = freezed,
    Object? backgroundColor = null,
    Object? fontColor = null,
    Object? sortId = null,
    Object? groups = null,
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
      published: null == published
          ? _value.published
          : published // ignore: cast_nullable_to_non_nullable
              as bool,
      access: null == access
          ? _value.access
          : access // ignore: cast_nullable_to_non_nullable
              as ApiGreetingTemplateDaoAccess,
      accessUsers: null == accessUsers
          ? _value.accessUsers
          : accessUsers // ignore: cast_nullable_to_non_nullable
              as List<ApiGreetingTemplateUserDao>,
      region: freezed == region
          ? _value.region
          : region // ignore: cast_nullable_to_non_nullable
              as ApiRegionDao?,
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
      groups: null == groups
          ? _value.groups
          : groups // ignore: cast_nullable_to_non_nullable
              as List<MediaContentDao>,
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
abstract class _$$ApiGreetingTemplateDaoImplCopyWith<$Res>
    implements $ApiGreetingTemplateDaoCopyWith<$Res> {
  factory _$$ApiGreetingTemplateDaoImplCopyWith(
          _$ApiGreetingTemplateDaoImpl value,
          $Res Function(_$ApiGreetingTemplateDaoImpl) then) =
      __$$ApiGreetingTemplateDaoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String title,
      bool published,
      ApiGreetingTemplateDaoAccess access,
      @JsonKey(name: 'access_users')
      List<ApiGreetingTemplateUserDao> accessUsers,
      ApiRegionDao? region,
      @JsonKey(name: 'background_color') String backgroundColor,
      @JsonKey(name: 'font_color') String fontColor,
      @JsonKey(name: 'sort_id') int sortId,
      List<MediaContentDao> groups});

  @override
  $ApiRegionDaoCopyWith<$Res>? get region;
}

/// @nodoc
class __$$ApiGreetingTemplateDaoImplCopyWithImpl<$Res>
    extends _$ApiGreetingTemplateDaoCopyWithImpl<$Res,
        _$ApiGreetingTemplateDaoImpl>
    implements _$$ApiGreetingTemplateDaoImplCopyWith<$Res> {
  __$$ApiGreetingTemplateDaoImplCopyWithImpl(
      _$ApiGreetingTemplateDaoImpl _value,
      $Res Function(_$ApiGreetingTemplateDaoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? published = null,
    Object? access = null,
    Object? accessUsers = null,
    Object? region = freezed,
    Object? backgroundColor = null,
    Object? fontColor = null,
    Object? sortId = null,
    Object? groups = null,
  }) {
    return _then(_$ApiGreetingTemplateDaoImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      published: null == published
          ? _value.published
          : published // ignore: cast_nullable_to_non_nullable
              as bool,
      access: null == access
          ? _value.access
          : access // ignore: cast_nullable_to_non_nullable
              as ApiGreetingTemplateDaoAccess,
      accessUsers: null == accessUsers
          ? _value._accessUsers
          : accessUsers // ignore: cast_nullable_to_non_nullable
              as List<ApiGreetingTemplateUserDao>,
      region: freezed == region
          ? _value.region
          : region // ignore: cast_nullable_to_non_nullable
              as ApiRegionDao?,
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
      groups: null == groups
          ? _value._groups
          : groups // ignore: cast_nullable_to_non_nullable
              as List<MediaContentDao>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ApiGreetingTemplateDaoImpl implements _ApiGreetingTemplateDao {
  const _$ApiGreetingTemplateDaoImpl(
      {required this.id,
      required this.title,
      required this.published,
      required this.access,
      @JsonKey(name: 'access_users')
      final List<ApiGreetingTemplateUserDao> accessUsers =
          const <ApiGreetingTemplateUserDao>[],
      this.region,
      @JsonKey(name: 'background_color') required this.backgroundColor,
      @JsonKey(name: 'font_color') this.fontColor = '',
      @JsonKey(name: 'sort_id') required this.sortId,
      final List<MediaContentDao> groups = const <MediaContentDao>[]})
      : _accessUsers = accessUsers,
        _groups = groups;

  factory _$ApiGreetingTemplateDaoImpl.fromJson(Map<String, dynamic> json) =>
      _$$ApiGreetingTemplateDaoImplFromJson(json);

  @override
  final String id;
  @override
  final String title;
  @override
  final bool published;
  @override
  final ApiGreetingTemplateDaoAccess access;
  final List<ApiGreetingTemplateUserDao> _accessUsers;
  @override
  @JsonKey(name: 'access_users')
  List<ApiGreetingTemplateUserDao> get accessUsers {
    if (_accessUsers is EqualUnmodifiableListView) return _accessUsers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_accessUsers);
  }

  @override
  final ApiRegionDao? region;
  @override
  @JsonKey(name: 'background_color')
  final String backgroundColor;
  @override
  @JsonKey(name: 'font_color')
  final String fontColor;
  @override
  @JsonKey(name: 'sort_id')
  final int sortId;
  final List<MediaContentDao> _groups;
  @override
  @JsonKey()
  List<MediaContentDao> get groups {
    if (_groups is EqualUnmodifiableListView) return _groups;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_groups);
  }

  @override
  String toString() {
    return 'ApiGreetingTemplateDao(id: $id, title: $title, published: $published, access: $access, accessUsers: $accessUsers, region: $region, backgroundColor: $backgroundColor, fontColor: $fontColor, sortId: $sortId, groups: $groups)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ApiGreetingTemplateDaoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.published, published) ||
                other.published == published) &&
            (identical(other.access, access) || other.access == access) &&
            const DeepCollectionEquality()
                .equals(other._accessUsers, _accessUsers) &&
            (identical(other.region, region) || other.region == region) &&
            (identical(other.backgroundColor, backgroundColor) ||
                other.backgroundColor == backgroundColor) &&
            (identical(other.fontColor, fontColor) ||
                other.fontColor == fontColor) &&
            (identical(other.sortId, sortId) || other.sortId == sortId) &&
            const DeepCollectionEquality().equals(other._groups, _groups));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      title,
      published,
      access,
      const DeepCollectionEquality().hash(_accessUsers),
      region,
      backgroundColor,
      fontColor,
      sortId,
      const DeepCollectionEquality().hash(_groups));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ApiGreetingTemplateDaoImplCopyWith<_$ApiGreetingTemplateDaoImpl>
      get copyWith => __$$ApiGreetingTemplateDaoImplCopyWithImpl<
          _$ApiGreetingTemplateDaoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ApiGreetingTemplateDaoImplToJson(
      this,
    );
  }
}

abstract class _ApiGreetingTemplateDao implements ApiGreetingTemplateDao {
  const factory _ApiGreetingTemplateDao(
      {required final String id,
      required final String title,
      required final bool published,
      required final ApiGreetingTemplateDaoAccess access,
      @JsonKey(name: 'access_users')
      final List<ApiGreetingTemplateUserDao> accessUsers,
      final ApiRegionDao? region,
      @JsonKey(name: 'background_color') required final String backgroundColor,
      @JsonKey(name: 'font_color') final String fontColor,
      @JsonKey(name: 'sort_id') required final int sortId,
      final List<MediaContentDao> groups}) = _$ApiGreetingTemplateDaoImpl;

  factory _ApiGreetingTemplateDao.fromJson(Map<String, dynamic> json) =
      _$ApiGreetingTemplateDaoImpl.fromJson;

  @override
  String get id;
  @override
  String get title;
  @override
  bool get published;
  @override
  ApiGreetingTemplateDaoAccess get access;
  @override
  @JsonKey(name: 'access_users')
  List<ApiGreetingTemplateUserDao> get accessUsers;
  @override
  ApiRegionDao? get region;
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
  List<MediaContentDao> get groups;
  @override
  @JsonKey(ignore: true)
  _$$ApiGreetingTemplateDaoImplCopyWith<_$ApiGreetingTemplateDaoImpl>
      get copyWith => throw _privateConstructorUsedError;
}
