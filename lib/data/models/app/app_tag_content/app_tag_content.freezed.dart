// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_tag_content.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AppTagContent {
  AppTagParentType? get parentType => throw _privateConstructorUsedError;
  AppTagContentType? get contentType => throw _privateConstructorUsedError;
  String? get text => throw _privateConstructorUsedError;
  String? get link => throw _privateConstructorUsedError;
  List<AppTagContent>? get children => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AppTagContentCopyWith<AppTagContent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppTagContentCopyWith<$Res> {
  factory $AppTagContentCopyWith(
          AppTagContent value, $Res Function(AppTagContent) then) =
      _$AppTagContentCopyWithImpl<$Res, AppTagContent>;
  @useResult
  $Res call(
      {AppTagParentType? parentType,
      AppTagContentType? contentType,
      String? text,
      String? link,
      List<AppTagContent>? children});
}

/// @nodoc
class _$AppTagContentCopyWithImpl<$Res, $Val extends AppTagContent>
    implements $AppTagContentCopyWith<$Res> {
  _$AppTagContentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? parentType = freezed,
    Object? contentType = freezed,
    Object? text = freezed,
    Object? link = freezed,
    Object? children = freezed,
  }) {
    return _then(_value.copyWith(
      parentType: freezed == parentType
          ? _value.parentType
          : parentType // ignore: cast_nullable_to_non_nullable
              as AppTagParentType?,
      contentType: freezed == contentType
          ? _value.contentType
          : contentType // ignore: cast_nullable_to_non_nullable
              as AppTagContentType?,
      text: freezed == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
      link: freezed == link
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String?,
      children: freezed == children
          ? _value.children
          : children // ignore: cast_nullable_to_non_nullable
              as List<AppTagContent>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AppTagContentCopyWith<$Res>
    implements $AppTagContentCopyWith<$Res> {
  factory _$$_AppTagContentCopyWith(
          _$_AppTagContent value, $Res Function(_$_AppTagContent) then) =
      __$$_AppTagContentCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {AppTagParentType? parentType,
      AppTagContentType? contentType,
      String? text,
      String? link,
      List<AppTagContent>? children});
}

/// @nodoc
class __$$_AppTagContentCopyWithImpl<$Res>
    extends _$AppTagContentCopyWithImpl<$Res, _$_AppTagContent>
    implements _$$_AppTagContentCopyWith<$Res> {
  __$$_AppTagContentCopyWithImpl(
      _$_AppTagContent _value, $Res Function(_$_AppTagContent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? parentType = freezed,
    Object? contentType = freezed,
    Object? text = freezed,
    Object? link = freezed,
    Object? children = freezed,
  }) {
    return _then(_$_AppTagContent(
      parentType: freezed == parentType
          ? _value.parentType
          : parentType // ignore: cast_nullable_to_non_nullable
              as AppTagParentType?,
      contentType: freezed == contentType
          ? _value.contentType
          : contentType // ignore: cast_nullable_to_non_nullable
              as AppTagContentType?,
      text: freezed == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
      link: freezed == link
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String?,
      children: freezed == children
          ? _value._children
          : children // ignore: cast_nullable_to_non_nullable
              as List<AppTagContent>?,
    ));
  }
}

/// @nodoc

class _$_AppTagContent implements _AppTagContent {
  const _$_AppTagContent(
      {this.parentType,
      this.contentType,
      this.text,
      this.link,
      final List<AppTagContent>? children})
      : _children = children;

  @override
  final AppTagParentType? parentType;
  @override
  final AppTagContentType? contentType;
  @override
  final String? text;
  @override
  final String? link;
  final List<AppTagContent>? _children;
  @override
  List<AppTagContent>? get children {
    final value = _children;
    if (value == null) return null;
    if (_children is EqualUnmodifiableListView) return _children;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'AppTagContent(parentType: $parentType, contentType: $contentType, text: $text, link: $link, children: $children)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AppTagContent &&
            (identical(other.parentType, parentType) ||
                other.parentType == parentType) &&
            (identical(other.contentType, contentType) ||
                other.contentType == contentType) &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.link, link) || other.link == link) &&
            const DeepCollectionEquality().equals(other._children, _children));
  }

  @override
  int get hashCode => Object.hash(runtimeType, parentType, contentType, text,
      link, const DeepCollectionEquality().hash(_children));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AppTagContentCopyWith<_$_AppTagContent> get copyWith =>
      __$$_AppTagContentCopyWithImpl<_$_AppTagContent>(this, _$identity);
}

abstract class _AppTagContent implements AppTagContent {
  const factory _AppTagContent(
      {final AppTagParentType? parentType,
      final AppTagContentType? contentType,
      final String? text,
      final String? link,
      final List<AppTagContent>? children}) = _$_AppTagContent;

  @override
  AppTagParentType? get parentType;
  @override
  AppTagContentType? get contentType;
  @override
  String? get text;
  @override
  String? get link;
  @override
  List<AppTagContent>? get children;
  @override
  @JsonKey(ignore: true)
  _$$_AppTagContentCopyWith<_$_AppTagContent> get copyWith =>
      throw _privateConstructorUsedError;
}
