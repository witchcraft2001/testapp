// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'media_content_block_dao.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MediaContentBlockDao _$MediaContentBlockDaoFromJson(Map<String, dynamic> json) {
  switch (json['type']) {
    case 'title':
      return MediaContentBlockTitleDao.fromJson(json);
    case 'text_field':
      return MediaContentBlockTextFieldDao.fromJson(json);
    case 'image':
      return MediaContentBlockImageDao.fromJson(json);
    case 'link_button':
      return MediaContentBlockLinkButtonDao.fromJson(json);
    case 'appeal':
      return MediaContentBlockAppealDao.fromJson(json);
    case 'signature':
      return MediaContentBlockSignatureDao.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'type', 'MediaContentBlockDao',
          'Invalid union type "${json['type']}"!');
  }
}

/// @nodoc
mixin _$MediaContentBlockDao {
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'story', readValue: _readGroup)
  String get parentId => throw _privateConstructorUsedError;
  @JsonKey(name: 'sort_id')
  int get sortId => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String id,
            @JsonKey(name: 'story', readValue: _readGroup) String parentId,
            String title,
            @JsonKey(name: 'sort_id') int sortId)
        title,
    required TResult Function(
            String id,
            @JsonKey(name: 'story', readValue: _readGroup) String parentId,
            String content,
            @JsonKey(name: 'sort_id') int sortId)
        textField,
    required TResult Function(
            String id,
            @JsonKey(name: 'story', readValue: _readGroup) String parentId,
            String? image,
            @JsonKey(name: 'sort_id') int sortId)
        image,
    required TResult Function(
            String id,
            @JsonKey(name: 'story', readValue: _readGroup) String parentId,
            String link,
            @JsonKey(name: 'button_title') String title,
            @JsonKey(name: 'sort_id') int sortId)
        linkButton,
    required TResult Function(
            String id,
            @JsonKey(name: 'story', readValue: _readGroup) String parentId,
            @JsonKey(name: 'sort_id') int sortId)
        appeal,
    required TResult Function(
            String id,
            @JsonKey(name: 'story', readValue: _readGroup) String parentId,
            @JsonKey(name: 'sort_id') int sortId)
        signature,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String id,
            @JsonKey(name: 'story', readValue: _readGroup) String parentId,
            String title,
            @JsonKey(name: 'sort_id') int sortId)?
        title,
    TResult? Function(
            String id,
            @JsonKey(name: 'story', readValue: _readGroup) String parentId,
            String content,
            @JsonKey(name: 'sort_id') int sortId)?
        textField,
    TResult? Function(
            String id,
            @JsonKey(name: 'story', readValue: _readGroup) String parentId,
            String? image,
            @JsonKey(name: 'sort_id') int sortId)?
        image,
    TResult? Function(
            String id,
            @JsonKey(name: 'story', readValue: _readGroup) String parentId,
            String link,
            @JsonKey(name: 'button_title') String title,
            @JsonKey(name: 'sort_id') int sortId)?
        linkButton,
    TResult? Function(
            String id,
            @JsonKey(name: 'story', readValue: _readGroup) String parentId,
            @JsonKey(name: 'sort_id') int sortId)?
        appeal,
    TResult? Function(
            String id,
            @JsonKey(name: 'story', readValue: _readGroup) String parentId,
            @JsonKey(name: 'sort_id') int sortId)?
        signature,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String id,
            @JsonKey(name: 'story', readValue: _readGroup) String parentId,
            String title,
            @JsonKey(name: 'sort_id') int sortId)?
        title,
    TResult Function(
            String id,
            @JsonKey(name: 'story', readValue: _readGroup) String parentId,
            String content,
            @JsonKey(name: 'sort_id') int sortId)?
        textField,
    TResult Function(
            String id,
            @JsonKey(name: 'story', readValue: _readGroup) String parentId,
            String? image,
            @JsonKey(name: 'sort_id') int sortId)?
        image,
    TResult Function(
            String id,
            @JsonKey(name: 'story', readValue: _readGroup) String parentId,
            String link,
            @JsonKey(name: 'button_title') String title,
            @JsonKey(name: 'sort_id') int sortId)?
        linkButton,
    TResult Function(
            String id,
            @JsonKey(name: 'story', readValue: _readGroup) String parentId,
            @JsonKey(name: 'sort_id') int sortId)?
        appeal,
    TResult Function(
            String id,
            @JsonKey(name: 'story', readValue: _readGroup) String parentId,
            @JsonKey(name: 'sort_id') int sortId)?
        signature,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MediaContentBlockTitleDao value) title,
    required TResult Function(MediaContentBlockTextFieldDao value) textField,
    required TResult Function(MediaContentBlockImageDao value) image,
    required TResult Function(MediaContentBlockLinkButtonDao value) linkButton,
    required TResult Function(MediaContentBlockAppealDao value) appeal,
    required TResult Function(MediaContentBlockSignatureDao value) signature,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MediaContentBlockTitleDao value)? title,
    TResult? Function(MediaContentBlockTextFieldDao value)? textField,
    TResult? Function(MediaContentBlockImageDao value)? image,
    TResult? Function(MediaContentBlockLinkButtonDao value)? linkButton,
    TResult? Function(MediaContentBlockAppealDao value)? appeal,
    TResult? Function(MediaContentBlockSignatureDao value)? signature,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MediaContentBlockTitleDao value)? title,
    TResult Function(MediaContentBlockTextFieldDao value)? textField,
    TResult Function(MediaContentBlockImageDao value)? image,
    TResult Function(MediaContentBlockLinkButtonDao value)? linkButton,
    TResult Function(MediaContentBlockAppealDao value)? appeal,
    TResult Function(MediaContentBlockSignatureDao value)? signature,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MediaContentBlockDaoCopyWith<MediaContentBlockDao> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MediaContentBlockDaoCopyWith<$Res> {
  factory $MediaContentBlockDaoCopyWith(MediaContentBlockDao value,
          $Res Function(MediaContentBlockDao) then) =
      _$MediaContentBlockDaoCopyWithImpl<$Res, MediaContentBlockDao>;
  @useResult
  $Res call(
      {String id,
      @JsonKey(name: 'story', readValue: _readGroup) String parentId,
      @JsonKey(name: 'sort_id') int sortId});
}

/// @nodoc
class _$MediaContentBlockDaoCopyWithImpl<$Res,
        $Val extends MediaContentBlockDao>
    implements $MediaContentBlockDaoCopyWith<$Res> {
  _$MediaContentBlockDaoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? parentId = null,
    Object? sortId = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      parentId: null == parentId
          ? _value.parentId
          : parentId // ignore: cast_nullable_to_non_nullable
              as String,
      sortId: null == sortId
          ? _value.sortId
          : sortId // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MediaContentBlockTitleDaoImplCopyWith<$Res>
    implements $MediaContentBlockDaoCopyWith<$Res> {
  factory _$$MediaContentBlockTitleDaoImplCopyWith(
          _$MediaContentBlockTitleDaoImpl value,
          $Res Function(_$MediaContentBlockTitleDaoImpl) then) =
      __$$MediaContentBlockTitleDaoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      @JsonKey(name: 'story', readValue: _readGroup) String parentId,
      String title,
      @JsonKey(name: 'sort_id') int sortId});
}

/// @nodoc
class __$$MediaContentBlockTitleDaoImplCopyWithImpl<$Res>
    extends _$MediaContentBlockDaoCopyWithImpl<$Res,
        _$MediaContentBlockTitleDaoImpl>
    implements _$$MediaContentBlockTitleDaoImplCopyWith<$Res> {
  __$$MediaContentBlockTitleDaoImplCopyWithImpl(
      _$MediaContentBlockTitleDaoImpl _value,
      $Res Function(_$MediaContentBlockTitleDaoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? parentId = null,
    Object? title = null,
    Object? sortId = null,
  }) {
    return _then(_$MediaContentBlockTitleDaoImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      parentId: null == parentId
          ? _value.parentId
          : parentId // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
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
class _$MediaContentBlockTitleDaoImpl implements MediaContentBlockTitleDao {
  const _$MediaContentBlockTitleDaoImpl(
      {required this.id,
      @JsonKey(name: 'story', readValue: _readGroup) required this.parentId,
      this.title = '',
      @JsonKey(name: 'sort_id') required this.sortId,
      final String? $type})
      : $type = $type ?? 'title';

  factory _$MediaContentBlockTitleDaoImpl.fromJson(Map<String, dynamic> json) =>
      _$$MediaContentBlockTitleDaoImplFromJson(json);

  @override
  final String id;
  @override
  @JsonKey(name: 'story', readValue: _readGroup)
  final String parentId;
  @override
  @JsonKey()
  final String title;
  @override
  @JsonKey(name: 'sort_id')
  final int sortId;

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'MediaContentBlockDao.title(id: $id, parentId: $parentId, title: $title, sortId: $sortId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MediaContentBlockTitleDaoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.parentId, parentId) ||
                other.parentId == parentId) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.sortId, sortId) || other.sortId == sortId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, parentId, title, sortId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MediaContentBlockTitleDaoImplCopyWith<_$MediaContentBlockTitleDaoImpl>
      get copyWith => __$$MediaContentBlockTitleDaoImplCopyWithImpl<
          _$MediaContentBlockTitleDaoImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String id,
            @JsonKey(name: 'story', readValue: _readGroup) String parentId,
            String title,
            @JsonKey(name: 'sort_id') int sortId)
        title,
    required TResult Function(
            String id,
            @JsonKey(name: 'story', readValue: _readGroup) String parentId,
            String content,
            @JsonKey(name: 'sort_id') int sortId)
        textField,
    required TResult Function(
            String id,
            @JsonKey(name: 'story', readValue: _readGroup) String parentId,
            String? image,
            @JsonKey(name: 'sort_id') int sortId)
        image,
    required TResult Function(
            String id,
            @JsonKey(name: 'story', readValue: _readGroup) String parentId,
            String link,
            @JsonKey(name: 'button_title') String title,
            @JsonKey(name: 'sort_id') int sortId)
        linkButton,
    required TResult Function(
            String id,
            @JsonKey(name: 'story', readValue: _readGroup) String parentId,
            @JsonKey(name: 'sort_id') int sortId)
        appeal,
    required TResult Function(
            String id,
            @JsonKey(name: 'story', readValue: _readGroup) String parentId,
            @JsonKey(name: 'sort_id') int sortId)
        signature,
  }) {
    return title(id, parentId, this.title, sortId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String id,
            @JsonKey(name: 'story', readValue: _readGroup) String parentId,
            String title,
            @JsonKey(name: 'sort_id') int sortId)?
        title,
    TResult? Function(
            String id,
            @JsonKey(name: 'story', readValue: _readGroup) String parentId,
            String content,
            @JsonKey(name: 'sort_id') int sortId)?
        textField,
    TResult? Function(
            String id,
            @JsonKey(name: 'story', readValue: _readGroup) String parentId,
            String? image,
            @JsonKey(name: 'sort_id') int sortId)?
        image,
    TResult? Function(
            String id,
            @JsonKey(name: 'story', readValue: _readGroup) String parentId,
            String link,
            @JsonKey(name: 'button_title') String title,
            @JsonKey(name: 'sort_id') int sortId)?
        linkButton,
    TResult? Function(
            String id,
            @JsonKey(name: 'story', readValue: _readGroup) String parentId,
            @JsonKey(name: 'sort_id') int sortId)?
        appeal,
    TResult? Function(
            String id,
            @JsonKey(name: 'story', readValue: _readGroup) String parentId,
            @JsonKey(name: 'sort_id') int sortId)?
        signature,
  }) {
    return title?.call(id, parentId, this.title, sortId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String id,
            @JsonKey(name: 'story', readValue: _readGroup) String parentId,
            String title,
            @JsonKey(name: 'sort_id') int sortId)?
        title,
    TResult Function(
            String id,
            @JsonKey(name: 'story', readValue: _readGroup) String parentId,
            String content,
            @JsonKey(name: 'sort_id') int sortId)?
        textField,
    TResult Function(
            String id,
            @JsonKey(name: 'story', readValue: _readGroup) String parentId,
            String? image,
            @JsonKey(name: 'sort_id') int sortId)?
        image,
    TResult Function(
            String id,
            @JsonKey(name: 'story', readValue: _readGroup) String parentId,
            String link,
            @JsonKey(name: 'button_title') String title,
            @JsonKey(name: 'sort_id') int sortId)?
        linkButton,
    TResult Function(
            String id,
            @JsonKey(name: 'story', readValue: _readGroup) String parentId,
            @JsonKey(name: 'sort_id') int sortId)?
        appeal,
    TResult Function(
            String id,
            @JsonKey(name: 'story', readValue: _readGroup) String parentId,
            @JsonKey(name: 'sort_id') int sortId)?
        signature,
    required TResult orElse(),
  }) {
    if (title != null) {
      return title(id, parentId, this.title, sortId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MediaContentBlockTitleDao value) title,
    required TResult Function(MediaContentBlockTextFieldDao value) textField,
    required TResult Function(MediaContentBlockImageDao value) image,
    required TResult Function(MediaContentBlockLinkButtonDao value) linkButton,
    required TResult Function(MediaContentBlockAppealDao value) appeal,
    required TResult Function(MediaContentBlockSignatureDao value) signature,
  }) {
    return title(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MediaContentBlockTitleDao value)? title,
    TResult? Function(MediaContentBlockTextFieldDao value)? textField,
    TResult? Function(MediaContentBlockImageDao value)? image,
    TResult? Function(MediaContentBlockLinkButtonDao value)? linkButton,
    TResult? Function(MediaContentBlockAppealDao value)? appeal,
    TResult? Function(MediaContentBlockSignatureDao value)? signature,
  }) {
    return title?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MediaContentBlockTitleDao value)? title,
    TResult Function(MediaContentBlockTextFieldDao value)? textField,
    TResult Function(MediaContentBlockImageDao value)? image,
    TResult Function(MediaContentBlockLinkButtonDao value)? linkButton,
    TResult Function(MediaContentBlockAppealDao value)? appeal,
    TResult Function(MediaContentBlockSignatureDao value)? signature,
    required TResult orElse(),
  }) {
    if (title != null) {
      return title(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$MediaContentBlockTitleDaoImplToJson(
      this,
    );
  }
}

abstract class MediaContentBlockTitleDao implements MediaContentBlockDao {
  const factory MediaContentBlockTitleDao(
          {required final String id,
          @JsonKey(name: 'story', readValue: _readGroup)
          required final String parentId,
          final String title,
          @JsonKey(name: 'sort_id') required final int sortId}) =
      _$MediaContentBlockTitleDaoImpl;

  factory MediaContentBlockTitleDao.fromJson(Map<String, dynamic> json) =
      _$MediaContentBlockTitleDaoImpl.fromJson;

  @override
  String get id;
  @override
  @JsonKey(name: 'story', readValue: _readGroup)
  String get parentId;
  String get title;
  @override
  @JsonKey(name: 'sort_id')
  int get sortId;
  @override
  @JsonKey(ignore: true)
  _$$MediaContentBlockTitleDaoImplCopyWith<_$MediaContentBlockTitleDaoImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MediaContentBlockTextFieldDaoImplCopyWith<$Res>
    implements $MediaContentBlockDaoCopyWith<$Res> {
  factory _$$MediaContentBlockTextFieldDaoImplCopyWith(
          _$MediaContentBlockTextFieldDaoImpl value,
          $Res Function(_$MediaContentBlockTextFieldDaoImpl) then) =
      __$$MediaContentBlockTextFieldDaoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      @JsonKey(name: 'story', readValue: _readGroup) String parentId,
      String content,
      @JsonKey(name: 'sort_id') int sortId});
}

/// @nodoc
class __$$MediaContentBlockTextFieldDaoImplCopyWithImpl<$Res>
    extends _$MediaContentBlockDaoCopyWithImpl<$Res,
        _$MediaContentBlockTextFieldDaoImpl>
    implements _$$MediaContentBlockTextFieldDaoImplCopyWith<$Res> {
  __$$MediaContentBlockTextFieldDaoImplCopyWithImpl(
      _$MediaContentBlockTextFieldDaoImpl _value,
      $Res Function(_$MediaContentBlockTextFieldDaoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? parentId = null,
    Object? content = null,
    Object? sortId = null,
  }) {
    return _then(_$MediaContentBlockTextFieldDaoImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      parentId: null == parentId
          ? _value.parentId
          : parentId // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
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
class _$MediaContentBlockTextFieldDaoImpl
    implements MediaContentBlockTextFieldDao {
  const _$MediaContentBlockTextFieldDaoImpl(
      {required this.id,
      @JsonKey(name: 'story', readValue: _readGroup) required this.parentId,
      this.content = '',
      @JsonKey(name: 'sort_id') required this.sortId,
      final String? $type})
      : $type = $type ?? 'text_field';

  factory _$MediaContentBlockTextFieldDaoImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$MediaContentBlockTextFieldDaoImplFromJson(json);

  @override
  final String id;
  @override
  @JsonKey(name: 'story', readValue: _readGroup)
  final String parentId;
  @override
  @JsonKey()
  final String content;
  @override
  @JsonKey(name: 'sort_id')
  final int sortId;

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'MediaContentBlockDao.textField(id: $id, parentId: $parentId, content: $content, sortId: $sortId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MediaContentBlockTextFieldDaoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.parentId, parentId) ||
                other.parentId == parentId) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.sortId, sortId) || other.sortId == sortId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, parentId, content, sortId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MediaContentBlockTextFieldDaoImplCopyWith<
          _$MediaContentBlockTextFieldDaoImpl>
      get copyWith => __$$MediaContentBlockTextFieldDaoImplCopyWithImpl<
          _$MediaContentBlockTextFieldDaoImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String id,
            @JsonKey(name: 'story', readValue: _readGroup) String parentId,
            String title,
            @JsonKey(name: 'sort_id') int sortId)
        title,
    required TResult Function(
            String id,
            @JsonKey(name: 'story', readValue: _readGroup) String parentId,
            String content,
            @JsonKey(name: 'sort_id') int sortId)
        textField,
    required TResult Function(
            String id,
            @JsonKey(name: 'story', readValue: _readGroup) String parentId,
            String? image,
            @JsonKey(name: 'sort_id') int sortId)
        image,
    required TResult Function(
            String id,
            @JsonKey(name: 'story', readValue: _readGroup) String parentId,
            String link,
            @JsonKey(name: 'button_title') String title,
            @JsonKey(name: 'sort_id') int sortId)
        linkButton,
    required TResult Function(
            String id,
            @JsonKey(name: 'story', readValue: _readGroup) String parentId,
            @JsonKey(name: 'sort_id') int sortId)
        appeal,
    required TResult Function(
            String id,
            @JsonKey(name: 'story', readValue: _readGroup) String parentId,
            @JsonKey(name: 'sort_id') int sortId)
        signature,
  }) {
    return textField(id, parentId, content, sortId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String id,
            @JsonKey(name: 'story', readValue: _readGroup) String parentId,
            String title,
            @JsonKey(name: 'sort_id') int sortId)?
        title,
    TResult? Function(
            String id,
            @JsonKey(name: 'story', readValue: _readGroup) String parentId,
            String content,
            @JsonKey(name: 'sort_id') int sortId)?
        textField,
    TResult? Function(
            String id,
            @JsonKey(name: 'story', readValue: _readGroup) String parentId,
            String? image,
            @JsonKey(name: 'sort_id') int sortId)?
        image,
    TResult? Function(
            String id,
            @JsonKey(name: 'story', readValue: _readGroup) String parentId,
            String link,
            @JsonKey(name: 'button_title') String title,
            @JsonKey(name: 'sort_id') int sortId)?
        linkButton,
    TResult? Function(
            String id,
            @JsonKey(name: 'story', readValue: _readGroup) String parentId,
            @JsonKey(name: 'sort_id') int sortId)?
        appeal,
    TResult? Function(
            String id,
            @JsonKey(name: 'story', readValue: _readGroup) String parentId,
            @JsonKey(name: 'sort_id') int sortId)?
        signature,
  }) {
    return textField?.call(id, parentId, content, sortId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String id,
            @JsonKey(name: 'story', readValue: _readGroup) String parentId,
            String title,
            @JsonKey(name: 'sort_id') int sortId)?
        title,
    TResult Function(
            String id,
            @JsonKey(name: 'story', readValue: _readGroup) String parentId,
            String content,
            @JsonKey(name: 'sort_id') int sortId)?
        textField,
    TResult Function(
            String id,
            @JsonKey(name: 'story', readValue: _readGroup) String parentId,
            String? image,
            @JsonKey(name: 'sort_id') int sortId)?
        image,
    TResult Function(
            String id,
            @JsonKey(name: 'story', readValue: _readGroup) String parentId,
            String link,
            @JsonKey(name: 'button_title') String title,
            @JsonKey(name: 'sort_id') int sortId)?
        linkButton,
    TResult Function(
            String id,
            @JsonKey(name: 'story', readValue: _readGroup) String parentId,
            @JsonKey(name: 'sort_id') int sortId)?
        appeal,
    TResult Function(
            String id,
            @JsonKey(name: 'story', readValue: _readGroup) String parentId,
            @JsonKey(name: 'sort_id') int sortId)?
        signature,
    required TResult orElse(),
  }) {
    if (textField != null) {
      return textField(id, parentId, content, sortId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MediaContentBlockTitleDao value) title,
    required TResult Function(MediaContentBlockTextFieldDao value) textField,
    required TResult Function(MediaContentBlockImageDao value) image,
    required TResult Function(MediaContentBlockLinkButtonDao value) linkButton,
    required TResult Function(MediaContentBlockAppealDao value) appeal,
    required TResult Function(MediaContentBlockSignatureDao value) signature,
  }) {
    return textField(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MediaContentBlockTitleDao value)? title,
    TResult? Function(MediaContentBlockTextFieldDao value)? textField,
    TResult? Function(MediaContentBlockImageDao value)? image,
    TResult? Function(MediaContentBlockLinkButtonDao value)? linkButton,
    TResult? Function(MediaContentBlockAppealDao value)? appeal,
    TResult? Function(MediaContentBlockSignatureDao value)? signature,
  }) {
    return textField?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MediaContentBlockTitleDao value)? title,
    TResult Function(MediaContentBlockTextFieldDao value)? textField,
    TResult Function(MediaContentBlockImageDao value)? image,
    TResult Function(MediaContentBlockLinkButtonDao value)? linkButton,
    TResult Function(MediaContentBlockAppealDao value)? appeal,
    TResult Function(MediaContentBlockSignatureDao value)? signature,
    required TResult orElse(),
  }) {
    if (textField != null) {
      return textField(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$MediaContentBlockTextFieldDaoImplToJson(
      this,
    );
  }
}

abstract class MediaContentBlockTextFieldDao implements MediaContentBlockDao {
  const factory MediaContentBlockTextFieldDao(
          {required final String id,
          @JsonKey(name: 'story', readValue: _readGroup)
          required final String parentId,
          final String content,
          @JsonKey(name: 'sort_id') required final int sortId}) =
      _$MediaContentBlockTextFieldDaoImpl;

  factory MediaContentBlockTextFieldDao.fromJson(Map<String, dynamic> json) =
      _$MediaContentBlockTextFieldDaoImpl.fromJson;

  @override
  String get id;
  @override
  @JsonKey(name: 'story', readValue: _readGroup)
  String get parentId;
  String get content;
  @override
  @JsonKey(name: 'sort_id')
  int get sortId;
  @override
  @JsonKey(ignore: true)
  _$$MediaContentBlockTextFieldDaoImplCopyWith<
          _$MediaContentBlockTextFieldDaoImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MediaContentBlockImageDaoImplCopyWith<$Res>
    implements $MediaContentBlockDaoCopyWith<$Res> {
  factory _$$MediaContentBlockImageDaoImplCopyWith(
          _$MediaContentBlockImageDaoImpl value,
          $Res Function(_$MediaContentBlockImageDaoImpl) then) =
      __$$MediaContentBlockImageDaoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      @JsonKey(name: 'story', readValue: _readGroup) String parentId,
      String? image,
      @JsonKey(name: 'sort_id') int sortId});
}

/// @nodoc
class __$$MediaContentBlockImageDaoImplCopyWithImpl<$Res>
    extends _$MediaContentBlockDaoCopyWithImpl<$Res,
        _$MediaContentBlockImageDaoImpl>
    implements _$$MediaContentBlockImageDaoImplCopyWith<$Res> {
  __$$MediaContentBlockImageDaoImplCopyWithImpl(
      _$MediaContentBlockImageDaoImpl _value,
      $Res Function(_$MediaContentBlockImageDaoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? parentId = null,
    Object? image = freezed,
    Object? sortId = null,
  }) {
    return _then(_$MediaContentBlockImageDaoImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      parentId: null == parentId
          ? _value.parentId
          : parentId // ignore: cast_nullable_to_non_nullable
              as String,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      sortId: null == sortId
          ? _value.sortId
          : sortId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MediaContentBlockImageDaoImpl implements MediaContentBlockImageDao {
  const _$MediaContentBlockImageDaoImpl(
      {required this.id,
      @JsonKey(name: 'story', readValue: _readGroup) required this.parentId,
      this.image,
      @JsonKey(name: 'sort_id') required this.sortId,
      final String? $type})
      : $type = $type ?? 'image';

  factory _$MediaContentBlockImageDaoImpl.fromJson(Map<String, dynamic> json) =>
      _$$MediaContentBlockImageDaoImplFromJson(json);

  @override
  final String id;
  @override
  @JsonKey(name: 'story', readValue: _readGroup)
  final String parentId;
  @override
  final String? image;
  @override
  @JsonKey(name: 'sort_id')
  final int sortId;

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'MediaContentBlockDao.image(id: $id, parentId: $parentId, image: $image, sortId: $sortId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MediaContentBlockImageDaoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.parentId, parentId) ||
                other.parentId == parentId) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.sortId, sortId) || other.sortId == sortId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, parentId, image, sortId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MediaContentBlockImageDaoImplCopyWith<_$MediaContentBlockImageDaoImpl>
      get copyWith => __$$MediaContentBlockImageDaoImplCopyWithImpl<
          _$MediaContentBlockImageDaoImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String id,
            @JsonKey(name: 'story', readValue: _readGroup) String parentId,
            String title,
            @JsonKey(name: 'sort_id') int sortId)
        title,
    required TResult Function(
            String id,
            @JsonKey(name: 'story', readValue: _readGroup) String parentId,
            String content,
            @JsonKey(name: 'sort_id') int sortId)
        textField,
    required TResult Function(
            String id,
            @JsonKey(name: 'story', readValue: _readGroup) String parentId,
            String? image,
            @JsonKey(name: 'sort_id') int sortId)
        image,
    required TResult Function(
            String id,
            @JsonKey(name: 'story', readValue: _readGroup) String parentId,
            String link,
            @JsonKey(name: 'button_title') String title,
            @JsonKey(name: 'sort_id') int sortId)
        linkButton,
    required TResult Function(
            String id,
            @JsonKey(name: 'story', readValue: _readGroup) String parentId,
            @JsonKey(name: 'sort_id') int sortId)
        appeal,
    required TResult Function(
            String id,
            @JsonKey(name: 'story', readValue: _readGroup) String parentId,
            @JsonKey(name: 'sort_id') int sortId)
        signature,
  }) {
    return image(id, parentId, this.image, sortId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String id,
            @JsonKey(name: 'story', readValue: _readGroup) String parentId,
            String title,
            @JsonKey(name: 'sort_id') int sortId)?
        title,
    TResult? Function(
            String id,
            @JsonKey(name: 'story', readValue: _readGroup) String parentId,
            String content,
            @JsonKey(name: 'sort_id') int sortId)?
        textField,
    TResult? Function(
            String id,
            @JsonKey(name: 'story', readValue: _readGroup) String parentId,
            String? image,
            @JsonKey(name: 'sort_id') int sortId)?
        image,
    TResult? Function(
            String id,
            @JsonKey(name: 'story', readValue: _readGroup) String parentId,
            String link,
            @JsonKey(name: 'button_title') String title,
            @JsonKey(name: 'sort_id') int sortId)?
        linkButton,
    TResult? Function(
            String id,
            @JsonKey(name: 'story', readValue: _readGroup) String parentId,
            @JsonKey(name: 'sort_id') int sortId)?
        appeal,
    TResult? Function(
            String id,
            @JsonKey(name: 'story', readValue: _readGroup) String parentId,
            @JsonKey(name: 'sort_id') int sortId)?
        signature,
  }) {
    return image?.call(id, parentId, this.image, sortId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String id,
            @JsonKey(name: 'story', readValue: _readGroup) String parentId,
            String title,
            @JsonKey(name: 'sort_id') int sortId)?
        title,
    TResult Function(
            String id,
            @JsonKey(name: 'story', readValue: _readGroup) String parentId,
            String content,
            @JsonKey(name: 'sort_id') int sortId)?
        textField,
    TResult Function(
            String id,
            @JsonKey(name: 'story', readValue: _readGroup) String parentId,
            String? image,
            @JsonKey(name: 'sort_id') int sortId)?
        image,
    TResult Function(
            String id,
            @JsonKey(name: 'story', readValue: _readGroup) String parentId,
            String link,
            @JsonKey(name: 'button_title') String title,
            @JsonKey(name: 'sort_id') int sortId)?
        linkButton,
    TResult Function(
            String id,
            @JsonKey(name: 'story', readValue: _readGroup) String parentId,
            @JsonKey(name: 'sort_id') int sortId)?
        appeal,
    TResult Function(
            String id,
            @JsonKey(name: 'story', readValue: _readGroup) String parentId,
            @JsonKey(name: 'sort_id') int sortId)?
        signature,
    required TResult orElse(),
  }) {
    if (image != null) {
      return image(id, parentId, this.image, sortId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MediaContentBlockTitleDao value) title,
    required TResult Function(MediaContentBlockTextFieldDao value) textField,
    required TResult Function(MediaContentBlockImageDao value) image,
    required TResult Function(MediaContentBlockLinkButtonDao value) linkButton,
    required TResult Function(MediaContentBlockAppealDao value) appeal,
    required TResult Function(MediaContentBlockSignatureDao value) signature,
  }) {
    return image(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MediaContentBlockTitleDao value)? title,
    TResult? Function(MediaContentBlockTextFieldDao value)? textField,
    TResult? Function(MediaContentBlockImageDao value)? image,
    TResult? Function(MediaContentBlockLinkButtonDao value)? linkButton,
    TResult? Function(MediaContentBlockAppealDao value)? appeal,
    TResult? Function(MediaContentBlockSignatureDao value)? signature,
  }) {
    return image?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MediaContentBlockTitleDao value)? title,
    TResult Function(MediaContentBlockTextFieldDao value)? textField,
    TResult Function(MediaContentBlockImageDao value)? image,
    TResult Function(MediaContentBlockLinkButtonDao value)? linkButton,
    TResult Function(MediaContentBlockAppealDao value)? appeal,
    TResult Function(MediaContentBlockSignatureDao value)? signature,
    required TResult orElse(),
  }) {
    if (image != null) {
      return image(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$MediaContentBlockImageDaoImplToJson(
      this,
    );
  }
}

abstract class MediaContentBlockImageDao implements MediaContentBlockDao {
  const factory MediaContentBlockImageDao(
          {required final String id,
          @JsonKey(name: 'story', readValue: _readGroup)
          required final String parentId,
          final String? image,
          @JsonKey(name: 'sort_id') required final int sortId}) =
      _$MediaContentBlockImageDaoImpl;

  factory MediaContentBlockImageDao.fromJson(Map<String, dynamic> json) =
      _$MediaContentBlockImageDaoImpl.fromJson;

  @override
  String get id;
  @override
  @JsonKey(name: 'story', readValue: _readGroup)
  String get parentId;
  String? get image;
  @override
  @JsonKey(name: 'sort_id')
  int get sortId;
  @override
  @JsonKey(ignore: true)
  _$$MediaContentBlockImageDaoImplCopyWith<_$MediaContentBlockImageDaoImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MediaContentBlockLinkButtonDaoImplCopyWith<$Res>
    implements $MediaContentBlockDaoCopyWith<$Res> {
  factory _$$MediaContentBlockLinkButtonDaoImplCopyWith(
          _$MediaContentBlockLinkButtonDaoImpl value,
          $Res Function(_$MediaContentBlockLinkButtonDaoImpl) then) =
      __$$MediaContentBlockLinkButtonDaoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      @JsonKey(name: 'story', readValue: _readGroup) String parentId,
      String link,
      @JsonKey(name: 'button_title') String title,
      @JsonKey(name: 'sort_id') int sortId});
}

/// @nodoc
class __$$MediaContentBlockLinkButtonDaoImplCopyWithImpl<$Res>
    extends _$MediaContentBlockDaoCopyWithImpl<$Res,
        _$MediaContentBlockLinkButtonDaoImpl>
    implements _$$MediaContentBlockLinkButtonDaoImplCopyWith<$Res> {
  __$$MediaContentBlockLinkButtonDaoImplCopyWithImpl(
      _$MediaContentBlockLinkButtonDaoImpl _value,
      $Res Function(_$MediaContentBlockLinkButtonDaoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? parentId = null,
    Object? link = null,
    Object? title = null,
    Object? sortId = null,
  }) {
    return _then(_$MediaContentBlockLinkButtonDaoImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      parentId: null == parentId
          ? _value.parentId
          : parentId // ignore: cast_nullable_to_non_nullable
              as String,
      link: null == link
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
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
class _$MediaContentBlockLinkButtonDaoImpl
    implements MediaContentBlockLinkButtonDao {
  const _$MediaContentBlockLinkButtonDaoImpl(
      {required this.id,
      @JsonKey(name: 'story', readValue: _readGroup) required this.parentId,
      required this.link,
      @JsonKey(name: 'button_title') required this.title,
      @JsonKey(name: 'sort_id') required this.sortId,
      final String? $type})
      : $type = $type ?? 'link_button';

  factory _$MediaContentBlockLinkButtonDaoImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$MediaContentBlockLinkButtonDaoImplFromJson(json);

  @override
  final String id;
  @override
  @JsonKey(name: 'story', readValue: _readGroup)
  final String parentId;
  @override
  final String link;
  @override
  @JsonKey(name: 'button_title')
  final String title;
  @override
  @JsonKey(name: 'sort_id')
  final int sortId;

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'MediaContentBlockDao.linkButton(id: $id, parentId: $parentId, link: $link, title: $title, sortId: $sortId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MediaContentBlockLinkButtonDaoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.parentId, parentId) ||
                other.parentId == parentId) &&
            (identical(other.link, link) || other.link == link) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.sortId, sortId) || other.sortId == sortId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, parentId, link, title, sortId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MediaContentBlockLinkButtonDaoImplCopyWith<
          _$MediaContentBlockLinkButtonDaoImpl>
      get copyWith => __$$MediaContentBlockLinkButtonDaoImplCopyWithImpl<
          _$MediaContentBlockLinkButtonDaoImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String id,
            @JsonKey(name: 'story', readValue: _readGroup) String parentId,
            String title,
            @JsonKey(name: 'sort_id') int sortId)
        title,
    required TResult Function(
            String id,
            @JsonKey(name: 'story', readValue: _readGroup) String parentId,
            String content,
            @JsonKey(name: 'sort_id') int sortId)
        textField,
    required TResult Function(
            String id,
            @JsonKey(name: 'story', readValue: _readGroup) String parentId,
            String? image,
            @JsonKey(name: 'sort_id') int sortId)
        image,
    required TResult Function(
            String id,
            @JsonKey(name: 'story', readValue: _readGroup) String parentId,
            String link,
            @JsonKey(name: 'button_title') String title,
            @JsonKey(name: 'sort_id') int sortId)
        linkButton,
    required TResult Function(
            String id,
            @JsonKey(name: 'story', readValue: _readGroup) String parentId,
            @JsonKey(name: 'sort_id') int sortId)
        appeal,
    required TResult Function(
            String id,
            @JsonKey(name: 'story', readValue: _readGroup) String parentId,
            @JsonKey(name: 'sort_id') int sortId)
        signature,
  }) {
    return linkButton(id, parentId, link, this.title, sortId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String id,
            @JsonKey(name: 'story', readValue: _readGroup) String parentId,
            String title,
            @JsonKey(name: 'sort_id') int sortId)?
        title,
    TResult? Function(
            String id,
            @JsonKey(name: 'story', readValue: _readGroup) String parentId,
            String content,
            @JsonKey(name: 'sort_id') int sortId)?
        textField,
    TResult? Function(
            String id,
            @JsonKey(name: 'story', readValue: _readGroup) String parentId,
            String? image,
            @JsonKey(name: 'sort_id') int sortId)?
        image,
    TResult? Function(
            String id,
            @JsonKey(name: 'story', readValue: _readGroup) String parentId,
            String link,
            @JsonKey(name: 'button_title') String title,
            @JsonKey(name: 'sort_id') int sortId)?
        linkButton,
    TResult? Function(
            String id,
            @JsonKey(name: 'story', readValue: _readGroup) String parentId,
            @JsonKey(name: 'sort_id') int sortId)?
        appeal,
    TResult? Function(
            String id,
            @JsonKey(name: 'story', readValue: _readGroup) String parentId,
            @JsonKey(name: 'sort_id') int sortId)?
        signature,
  }) {
    return linkButton?.call(id, parentId, link, this.title, sortId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String id,
            @JsonKey(name: 'story', readValue: _readGroup) String parentId,
            String title,
            @JsonKey(name: 'sort_id') int sortId)?
        title,
    TResult Function(
            String id,
            @JsonKey(name: 'story', readValue: _readGroup) String parentId,
            String content,
            @JsonKey(name: 'sort_id') int sortId)?
        textField,
    TResult Function(
            String id,
            @JsonKey(name: 'story', readValue: _readGroup) String parentId,
            String? image,
            @JsonKey(name: 'sort_id') int sortId)?
        image,
    TResult Function(
            String id,
            @JsonKey(name: 'story', readValue: _readGroup) String parentId,
            String link,
            @JsonKey(name: 'button_title') String title,
            @JsonKey(name: 'sort_id') int sortId)?
        linkButton,
    TResult Function(
            String id,
            @JsonKey(name: 'story', readValue: _readGroup) String parentId,
            @JsonKey(name: 'sort_id') int sortId)?
        appeal,
    TResult Function(
            String id,
            @JsonKey(name: 'story', readValue: _readGroup) String parentId,
            @JsonKey(name: 'sort_id') int sortId)?
        signature,
    required TResult orElse(),
  }) {
    if (linkButton != null) {
      return linkButton(id, parentId, link, this.title, sortId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MediaContentBlockTitleDao value) title,
    required TResult Function(MediaContentBlockTextFieldDao value) textField,
    required TResult Function(MediaContentBlockImageDao value) image,
    required TResult Function(MediaContentBlockLinkButtonDao value) linkButton,
    required TResult Function(MediaContentBlockAppealDao value) appeal,
    required TResult Function(MediaContentBlockSignatureDao value) signature,
  }) {
    return linkButton(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MediaContentBlockTitleDao value)? title,
    TResult? Function(MediaContentBlockTextFieldDao value)? textField,
    TResult? Function(MediaContentBlockImageDao value)? image,
    TResult? Function(MediaContentBlockLinkButtonDao value)? linkButton,
    TResult? Function(MediaContentBlockAppealDao value)? appeal,
    TResult? Function(MediaContentBlockSignatureDao value)? signature,
  }) {
    return linkButton?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MediaContentBlockTitleDao value)? title,
    TResult Function(MediaContentBlockTextFieldDao value)? textField,
    TResult Function(MediaContentBlockImageDao value)? image,
    TResult Function(MediaContentBlockLinkButtonDao value)? linkButton,
    TResult Function(MediaContentBlockAppealDao value)? appeal,
    TResult Function(MediaContentBlockSignatureDao value)? signature,
    required TResult orElse(),
  }) {
    if (linkButton != null) {
      return linkButton(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$MediaContentBlockLinkButtonDaoImplToJson(
      this,
    );
  }
}

abstract class MediaContentBlockLinkButtonDao implements MediaContentBlockDao {
  const factory MediaContentBlockLinkButtonDao(
          {required final String id,
          @JsonKey(name: 'story', readValue: _readGroup)
          required final String parentId,
          required final String link,
          @JsonKey(name: 'button_title') required final String title,
          @JsonKey(name: 'sort_id') required final int sortId}) =
      _$MediaContentBlockLinkButtonDaoImpl;

  factory MediaContentBlockLinkButtonDao.fromJson(Map<String, dynamic> json) =
      _$MediaContentBlockLinkButtonDaoImpl.fromJson;

  @override
  String get id;
  @override
  @JsonKey(name: 'story', readValue: _readGroup)
  String get parentId;
  String get link;
  @JsonKey(name: 'button_title')
  String get title;
  @override
  @JsonKey(name: 'sort_id')
  int get sortId;
  @override
  @JsonKey(ignore: true)
  _$$MediaContentBlockLinkButtonDaoImplCopyWith<
          _$MediaContentBlockLinkButtonDaoImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MediaContentBlockAppealDaoImplCopyWith<$Res>
    implements $MediaContentBlockDaoCopyWith<$Res> {
  factory _$$MediaContentBlockAppealDaoImplCopyWith(
          _$MediaContentBlockAppealDaoImpl value,
          $Res Function(_$MediaContentBlockAppealDaoImpl) then) =
      __$$MediaContentBlockAppealDaoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      @JsonKey(name: 'story', readValue: _readGroup) String parentId,
      @JsonKey(name: 'sort_id') int sortId});
}

/// @nodoc
class __$$MediaContentBlockAppealDaoImplCopyWithImpl<$Res>
    extends _$MediaContentBlockDaoCopyWithImpl<$Res,
        _$MediaContentBlockAppealDaoImpl>
    implements _$$MediaContentBlockAppealDaoImplCopyWith<$Res> {
  __$$MediaContentBlockAppealDaoImplCopyWithImpl(
      _$MediaContentBlockAppealDaoImpl _value,
      $Res Function(_$MediaContentBlockAppealDaoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? parentId = null,
    Object? sortId = null,
  }) {
    return _then(_$MediaContentBlockAppealDaoImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      parentId: null == parentId
          ? _value.parentId
          : parentId // ignore: cast_nullable_to_non_nullable
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
class _$MediaContentBlockAppealDaoImpl implements MediaContentBlockAppealDao {
  const _$MediaContentBlockAppealDaoImpl(
      {required this.id,
      @JsonKey(name: 'story', readValue: _readGroup) required this.parentId,
      @JsonKey(name: 'sort_id') required this.sortId,
      final String? $type})
      : $type = $type ?? 'appeal';

  factory _$MediaContentBlockAppealDaoImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$MediaContentBlockAppealDaoImplFromJson(json);

  @override
  final String id;
  @override
  @JsonKey(name: 'story', readValue: _readGroup)
  final String parentId;
  @override
  @JsonKey(name: 'sort_id')
  final int sortId;

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'MediaContentBlockDao.appeal(id: $id, parentId: $parentId, sortId: $sortId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MediaContentBlockAppealDaoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.parentId, parentId) ||
                other.parentId == parentId) &&
            (identical(other.sortId, sortId) || other.sortId == sortId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, parentId, sortId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MediaContentBlockAppealDaoImplCopyWith<_$MediaContentBlockAppealDaoImpl>
      get copyWith => __$$MediaContentBlockAppealDaoImplCopyWithImpl<
          _$MediaContentBlockAppealDaoImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String id,
            @JsonKey(name: 'story', readValue: _readGroup) String parentId,
            String title,
            @JsonKey(name: 'sort_id') int sortId)
        title,
    required TResult Function(
            String id,
            @JsonKey(name: 'story', readValue: _readGroup) String parentId,
            String content,
            @JsonKey(name: 'sort_id') int sortId)
        textField,
    required TResult Function(
            String id,
            @JsonKey(name: 'story', readValue: _readGroup) String parentId,
            String? image,
            @JsonKey(name: 'sort_id') int sortId)
        image,
    required TResult Function(
            String id,
            @JsonKey(name: 'story', readValue: _readGroup) String parentId,
            String link,
            @JsonKey(name: 'button_title') String title,
            @JsonKey(name: 'sort_id') int sortId)
        linkButton,
    required TResult Function(
            String id,
            @JsonKey(name: 'story', readValue: _readGroup) String parentId,
            @JsonKey(name: 'sort_id') int sortId)
        appeal,
    required TResult Function(
            String id,
            @JsonKey(name: 'story', readValue: _readGroup) String parentId,
            @JsonKey(name: 'sort_id') int sortId)
        signature,
  }) {
    return appeal(id, parentId, sortId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String id,
            @JsonKey(name: 'story', readValue: _readGroup) String parentId,
            String title,
            @JsonKey(name: 'sort_id') int sortId)?
        title,
    TResult? Function(
            String id,
            @JsonKey(name: 'story', readValue: _readGroup) String parentId,
            String content,
            @JsonKey(name: 'sort_id') int sortId)?
        textField,
    TResult? Function(
            String id,
            @JsonKey(name: 'story', readValue: _readGroup) String parentId,
            String? image,
            @JsonKey(name: 'sort_id') int sortId)?
        image,
    TResult? Function(
            String id,
            @JsonKey(name: 'story', readValue: _readGroup) String parentId,
            String link,
            @JsonKey(name: 'button_title') String title,
            @JsonKey(name: 'sort_id') int sortId)?
        linkButton,
    TResult? Function(
            String id,
            @JsonKey(name: 'story', readValue: _readGroup) String parentId,
            @JsonKey(name: 'sort_id') int sortId)?
        appeal,
    TResult? Function(
            String id,
            @JsonKey(name: 'story', readValue: _readGroup) String parentId,
            @JsonKey(name: 'sort_id') int sortId)?
        signature,
  }) {
    return appeal?.call(id, parentId, sortId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String id,
            @JsonKey(name: 'story', readValue: _readGroup) String parentId,
            String title,
            @JsonKey(name: 'sort_id') int sortId)?
        title,
    TResult Function(
            String id,
            @JsonKey(name: 'story', readValue: _readGroup) String parentId,
            String content,
            @JsonKey(name: 'sort_id') int sortId)?
        textField,
    TResult Function(
            String id,
            @JsonKey(name: 'story', readValue: _readGroup) String parentId,
            String? image,
            @JsonKey(name: 'sort_id') int sortId)?
        image,
    TResult Function(
            String id,
            @JsonKey(name: 'story', readValue: _readGroup) String parentId,
            String link,
            @JsonKey(name: 'button_title') String title,
            @JsonKey(name: 'sort_id') int sortId)?
        linkButton,
    TResult Function(
            String id,
            @JsonKey(name: 'story', readValue: _readGroup) String parentId,
            @JsonKey(name: 'sort_id') int sortId)?
        appeal,
    TResult Function(
            String id,
            @JsonKey(name: 'story', readValue: _readGroup) String parentId,
            @JsonKey(name: 'sort_id') int sortId)?
        signature,
    required TResult orElse(),
  }) {
    if (appeal != null) {
      return appeal(id, parentId, sortId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MediaContentBlockTitleDao value) title,
    required TResult Function(MediaContentBlockTextFieldDao value) textField,
    required TResult Function(MediaContentBlockImageDao value) image,
    required TResult Function(MediaContentBlockLinkButtonDao value) linkButton,
    required TResult Function(MediaContentBlockAppealDao value) appeal,
    required TResult Function(MediaContentBlockSignatureDao value) signature,
  }) {
    return appeal(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MediaContentBlockTitleDao value)? title,
    TResult? Function(MediaContentBlockTextFieldDao value)? textField,
    TResult? Function(MediaContentBlockImageDao value)? image,
    TResult? Function(MediaContentBlockLinkButtonDao value)? linkButton,
    TResult? Function(MediaContentBlockAppealDao value)? appeal,
    TResult? Function(MediaContentBlockSignatureDao value)? signature,
  }) {
    return appeal?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MediaContentBlockTitleDao value)? title,
    TResult Function(MediaContentBlockTextFieldDao value)? textField,
    TResult Function(MediaContentBlockImageDao value)? image,
    TResult Function(MediaContentBlockLinkButtonDao value)? linkButton,
    TResult Function(MediaContentBlockAppealDao value)? appeal,
    TResult Function(MediaContentBlockSignatureDao value)? signature,
    required TResult orElse(),
  }) {
    if (appeal != null) {
      return appeal(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$MediaContentBlockAppealDaoImplToJson(
      this,
    );
  }
}

abstract class MediaContentBlockAppealDao implements MediaContentBlockDao {
  const factory MediaContentBlockAppealDao(
          {required final String id,
          @JsonKey(name: 'story', readValue: _readGroup)
          required final String parentId,
          @JsonKey(name: 'sort_id') required final int sortId}) =
      _$MediaContentBlockAppealDaoImpl;

  factory MediaContentBlockAppealDao.fromJson(Map<String, dynamic> json) =
      _$MediaContentBlockAppealDaoImpl.fromJson;

  @override
  String get id;
  @override
  @JsonKey(name: 'story', readValue: _readGroup)
  String get parentId;
  @override
  @JsonKey(name: 'sort_id')
  int get sortId;
  @override
  @JsonKey(ignore: true)
  _$$MediaContentBlockAppealDaoImplCopyWith<_$MediaContentBlockAppealDaoImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MediaContentBlockSignatureDaoImplCopyWith<$Res>
    implements $MediaContentBlockDaoCopyWith<$Res> {
  factory _$$MediaContentBlockSignatureDaoImplCopyWith(
          _$MediaContentBlockSignatureDaoImpl value,
          $Res Function(_$MediaContentBlockSignatureDaoImpl) then) =
      __$$MediaContentBlockSignatureDaoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      @JsonKey(name: 'story', readValue: _readGroup) String parentId,
      @JsonKey(name: 'sort_id') int sortId});
}

/// @nodoc
class __$$MediaContentBlockSignatureDaoImplCopyWithImpl<$Res>
    extends _$MediaContentBlockDaoCopyWithImpl<$Res,
        _$MediaContentBlockSignatureDaoImpl>
    implements _$$MediaContentBlockSignatureDaoImplCopyWith<$Res> {
  __$$MediaContentBlockSignatureDaoImplCopyWithImpl(
      _$MediaContentBlockSignatureDaoImpl _value,
      $Res Function(_$MediaContentBlockSignatureDaoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? parentId = null,
    Object? sortId = null,
  }) {
    return _then(_$MediaContentBlockSignatureDaoImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      parentId: null == parentId
          ? _value.parentId
          : parentId // ignore: cast_nullable_to_non_nullable
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
class _$MediaContentBlockSignatureDaoImpl
    implements MediaContentBlockSignatureDao {
  const _$MediaContentBlockSignatureDaoImpl(
      {required this.id,
      @JsonKey(name: 'story', readValue: _readGroup) required this.parentId,
      @JsonKey(name: 'sort_id') required this.sortId,
      final String? $type})
      : $type = $type ?? 'signature';

  factory _$MediaContentBlockSignatureDaoImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$MediaContentBlockSignatureDaoImplFromJson(json);

  @override
  final String id;
  @override
  @JsonKey(name: 'story', readValue: _readGroup)
  final String parentId;
  @override
  @JsonKey(name: 'sort_id')
  final int sortId;

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'MediaContentBlockDao.signature(id: $id, parentId: $parentId, sortId: $sortId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MediaContentBlockSignatureDaoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.parentId, parentId) ||
                other.parentId == parentId) &&
            (identical(other.sortId, sortId) || other.sortId == sortId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, parentId, sortId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MediaContentBlockSignatureDaoImplCopyWith<
          _$MediaContentBlockSignatureDaoImpl>
      get copyWith => __$$MediaContentBlockSignatureDaoImplCopyWithImpl<
          _$MediaContentBlockSignatureDaoImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String id,
            @JsonKey(name: 'story', readValue: _readGroup) String parentId,
            String title,
            @JsonKey(name: 'sort_id') int sortId)
        title,
    required TResult Function(
            String id,
            @JsonKey(name: 'story', readValue: _readGroup) String parentId,
            String content,
            @JsonKey(name: 'sort_id') int sortId)
        textField,
    required TResult Function(
            String id,
            @JsonKey(name: 'story', readValue: _readGroup) String parentId,
            String? image,
            @JsonKey(name: 'sort_id') int sortId)
        image,
    required TResult Function(
            String id,
            @JsonKey(name: 'story', readValue: _readGroup) String parentId,
            String link,
            @JsonKey(name: 'button_title') String title,
            @JsonKey(name: 'sort_id') int sortId)
        linkButton,
    required TResult Function(
            String id,
            @JsonKey(name: 'story', readValue: _readGroup) String parentId,
            @JsonKey(name: 'sort_id') int sortId)
        appeal,
    required TResult Function(
            String id,
            @JsonKey(name: 'story', readValue: _readGroup) String parentId,
            @JsonKey(name: 'sort_id') int sortId)
        signature,
  }) {
    return signature(id, parentId, sortId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String id,
            @JsonKey(name: 'story', readValue: _readGroup) String parentId,
            String title,
            @JsonKey(name: 'sort_id') int sortId)?
        title,
    TResult? Function(
            String id,
            @JsonKey(name: 'story', readValue: _readGroup) String parentId,
            String content,
            @JsonKey(name: 'sort_id') int sortId)?
        textField,
    TResult? Function(
            String id,
            @JsonKey(name: 'story', readValue: _readGroup) String parentId,
            String? image,
            @JsonKey(name: 'sort_id') int sortId)?
        image,
    TResult? Function(
            String id,
            @JsonKey(name: 'story', readValue: _readGroup) String parentId,
            String link,
            @JsonKey(name: 'button_title') String title,
            @JsonKey(name: 'sort_id') int sortId)?
        linkButton,
    TResult? Function(
            String id,
            @JsonKey(name: 'story', readValue: _readGroup) String parentId,
            @JsonKey(name: 'sort_id') int sortId)?
        appeal,
    TResult? Function(
            String id,
            @JsonKey(name: 'story', readValue: _readGroup) String parentId,
            @JsonKey(name: 'sort_id') int sortId)?
        signature,
  }) {
    return signature?.call(id, parentId, sortId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String id,
            @JsonKey(name: 'story', readValue: _readGroup) String parentId,
            String title,
            @JsonKey(name: 'sort_id') int sortId)?
        title,
    TResult Function(
            String id,
            @JsonKey(name: 'story', readValue: _readGroup) String parentId,
            String content,
            @JsonKey(name: 'sort_id') int sortId)?
        textField,
    TResult Function(
            String id,
            @JsonKey(name: 'story', readValue: _readGroup) String parentId,
            String? image,
            @JsonKey(name: 'sort_id') int sortId)?
        image,
    TResult Function(
            String id,
            @JsonKey(name: 'story', readValue: _readGroup) String parentId,
            String link,
            @JsonKey(name: 'button_title') String title,
            @JsonKey(name: 'sort_id') int sortId)?
        linkButton,
    TResult Function(
            String id,
            @JsonKey(name: 'story', readValue: _readGroup) String parentId,
            @JsonKey(name: 'sort_id') int sortId)?
        appeal,
    TResult Function(
            String id,
            @JsonKey(name: 'story', readValue: _readGroup) String parentId,
            @JsonKey(name: 'sort_id') int sortId)?
        signature,
    required TResult orElse(),
  }) {
    if (signature != null) {
      return signature(id, parentId, sortId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MediaContentBlockTitleDao value) title,
    required TResult Function(MediaContentBlockTextFieldDao value) textField,
    required TResult Function(MediaContentBlockImageDao value) image,
    required TResult Function(MediaContentBlockLinkButtonDao value) linkButton,
    required TResult Function(MediaContentBlockAppealDao value) appeal,
    required TResult Function(MediaContentBlockSignatureDao value) signature,
  }) {
    return signature(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MediaContentBlockTitleDao value)? title,
    TResult? Function(MediaContentBlockTextFieldDao value)? textField,
    TResult? Function(MediaContentBlockImageDao value)? image,
    TResult? Function(MediaContentBlockLinkButtonDao value)? linkButton,
    TResult? Function(MediaContentBlockAppealDao value)? appeal,
    TResult? Function(MediaContentBlockSignatureDao value)? signature,
  }) {
    return signature?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MediaContentBlockTitleDao value)? title,
    TResult Function(MediaContentBlockTextFieldDao value)? textField,
    TResult Function(MediaContentBlockImageDao value)? image,
    TResult Function(MediaContentBlockLinkButtonDao value)? linkButton,
    TResult Function(MediaContentBlockAppealDao value)? appeal,
    TResult Function(MediaContentBlockSignatureDao value)? signature,
    required TResult orElse(),
  }) {
    if (signature != null) {
      return signature(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$MediaContentBlockSignatureDaoImplToJson(
      this,
    );
  }
}

abstract class MediaContentBlockSignatureDao implements MediaContentBlockDao {
  const factory MediaContentBlockSignatureDao(
          {required final String id,
          @JsonKey(name: 'story', readValue: _readGroup)
          required final String parentId,
          @JsonKey(name: 'sort_id') required final int sortId}) =
      _$MediaContentBlockSignatureDaoImpl;

  factory MediaContentBlockSignatureDao.fromJson(Map<String, dynamic> json) =
      _$MediaContentBlockSignatureDaoImpl.fromJson;

  @override
  String get id;
  @override
  @JsonKey(name: 'story', readValue: _readGroup)
  String get parentId;
  @override
  @JsonKey(name: 'sort_id')
  int get sortId;
  @override
  @JsonKey(ignore: true)
  _$$MediaContentBlockSignatureDaoImplCopyWith<
          _$MediaContentBlockSignatureDaoImpl>
      get copyWith => throw _privateConstructorUsedError;
}
