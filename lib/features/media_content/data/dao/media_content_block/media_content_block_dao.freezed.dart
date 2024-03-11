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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MediaContentBlockDao _$MediaContentBlockDaoFromJson(Map<String, dynamic> json) {
  switch (json['type']) {
    case 'title':
      return MediaContentBlockTitleDao.fromJson(json);
    case 'subtitle':
      return MediaContentBlockSubtitleDao.fromJson(json);
    case 'marked_subtitle':
      return MediaContentBlockMarkedSubtitleDao.fromJson(json);
    case 'text_field':
      return MediaContentBlockTextFieldDao.fromJson(json);
    case 'image':
      return MediaContentBlockImageDao.fromJson(json);
    case 'svg':
      return MediaContentBlockSvgDao.fromJson(json);
    case 'link_button':
      return MediaContentBlockLinkButtonDao.fromJson(json);
    case 'subscribe_button':
      return MediaContentBlockSubscribeButtonDao.fromJson(json);
    case 'group':
      return MediaContentBlockGroupDao.fromJson(json);
    case 'numbered_list':
      return MediaContentBlockNumberedListDao.fromJson(json);
    case 'list':
      return MediaContentBlockListDao.fromJson(json);
    case 'rate_dialog':
      return MediaContentBlockRateDialogDao.fromJson(json);
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
  @JsonKey(name: 'story')
  String get parentId => throw _privateConstructorUsedError;
  @JsonKey(name: 'sort_id')
  int get sortId => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String id,
            @JsonKey(name: 'story') String parentId,
            String title,
            @JsonKey(name: 'sort_id') int sortId)
        title,
    required TResult Function(
            String id,
            @JsonKey(name: 'story') String parentId,
            String subtitle,
            @JsonKey(name: 'sort_id') int sortId)
        subtitle,
    required TResult Function(
            String id,
            @JsonKey(name: 'story') String parentId,
            String subtitle,
            @JsonKey(name: 'sort_id') int sortId)
        markedSubtitle,
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
            @JsonKey(name: 'story') String parentId,
            String image,
            @JsonKey(name: 'sort_id') int sortId)
        svg,
    required TResult Function(
            String id,
            @JsonKey(name: 'story') String parentId,
            String link,
            @JsonKey(name: 'button_title') String title,
            @JsonKey(name: 'sort_id') int sortId)
        linkButton,
    required TResult Function(
            String id,
            @JsonKey(name: 'story') String parentId,
            MediaPlatformDao media,
            String link,
            @JsonKey(name: 'sort_id') int sortId)
        subscribeButton,
    required TResult Function(
            String id,
            @JsonKey(name: 'story') String parentId,
            MediaContentBlockDao child,
            @JsonKey(name: 'sort_id') int sortId)
        group,
    required TResult Function(
            String id,
            List<MediaContentBlockDao> blocks,
            @JsonKey(name: 'story') String parentId,
            @JsonKey(name: 'sort_id') int sortId)
        numberedList,
    required TResult Function(
            String id,
            List<MediaContentBlockDao> blocks,
            @JsonKey(name: 'story') String parentId,
            @JsonKey(name: 'sort_id') int sortId)
        list,
    required TResult Function(
            String id,
            @JsonKey(name: 'story') String parentId,
            String question,
            @JsonKey(name: 'sort_id') int sortId)
        rateDialog,
    required TResult Function(
            String id,
            @JsonKey(name: 'group') String parentId,
            @JsonKey(name: 'sort_id') int sortId)
        appeal,
    required TResult Function(
            String id,
            @JsonKey(name: 'group') String parentId,
            @JsonKey(name: 'sort_id') int sortId)
        signature,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id, @JsonKey(name: 'story') String parentId,
            String title, @JsonKey(name: 'sort_id') int sortId)?
        title,
    TResult? Function(String id, @JsonKey(name: 'story') String parentId,
            String subtitle, @JsonKey(name: 'sort_id') int sortId)?
        subtitle,
    TResult? Function(String id, @JsonKey(name: 'story') String parentId,
            String subtitle, @JsonKey(name: 'sort_id') int sortId)?
        markedSubtitle,
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
    TResult? Function(String id, @JsonKey(name: 'story') String parentId,
            String image, @JsonKey(name: 'sort_id') int sortId)?
        svg,
    TResult? Function(
            String id,
            @JsonKey(name: 'story') String parentId,
            String link,
            @JsonKey(name: 'button_title') String title,
            @JsonKey(name: 'sort_id') int sortId)?
        linkButton,
    TResult? Function(
            String id,
            @JsonKey(name: 'story') String parentId,
            MediaPlatformDao media,
            String link,
            @JsonKey(name: 'sort_id') int sortId)?
        subscribeButton,
    TResult? Function(String id, @JsonKey(name: 'story') String parentId,
            MediaContentBlockDao child, @JsonKey(name: 'sort_id') int sortId)?
        group,
    TResult? Function(
            String id,
            List<MediaContentBlockDao> blocks,
            @JsonKey(name: 'story') String parentId,
            @JsonKey(name: 'sort_id') int sortId)?
        numberedList,
    TResult? Function(
            String id,
            List<MediaContentBlockDao> blocks,
            @JsonKey(name: 'story') String parentId,
            @JsonKey(name: 'sort_id') int sortId)?
        list,
    TResult? Function(String id, @JsonKey(name: 'story') String parentId,
            String question, @JsonKey(name: 'sort_id') int sortId)?
        rateDialog,
    TResult? Function(String id, @JsonKey(name: 'group') String parentId,
            @JsonKey(name: 'sort_id') int sortId)?
        appeal,
    TResult? Function(String id, @JsonKey(name: 'group') String parentId,
            @JsonKey(name: 'sort_id') int sortId)?
        signature,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id, @JsonKey(name: 'story') String parentId,
            String title, @JsonKey(name: 'sort_id') int sortId)?
        title,
    TResult Function(String id, @JsonKey(name: 'story') String parentId,
            String subtitle, @JsonKey(name: 'sort_id') int sortId)?
        subtitle,
    TResult Function(String id, @JsonKey(name: 'story') String parentId,
            String subtitle, @JsonKey(name: 'sort_id') int sortId)?
        markedSubtitle,
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
    TResult Function(String id, @JsonKey(name: 'story') String parentId,
            String image, @JsonKey(name: 'sort_id') int sortId)?
        svg,
    TResult Function(
            String id,
            @JsonKey(name: 'story') String parentId,
            String link,
            @JsonKey(name: 'button_title') String title,
            @JsonKey(name: 'sort_id') int sortId)?
        linkButton,
    TResult Function(
            String id,
            @JsonKey(name: 'story') String parentId,
            MediaPlatformDao media,
            String link,
            @JsonKey(name: 'sort_id') int sortId)?
        subscribeButton,
    TResult Function(String id, @JsonKey(name: 'story') String parentId,
            MediaContentBlockDao child, @JsonKey(name: 'sort_id') int sortId)?
        group,
    TResult Function(
            String id,
            List<MediaContentBlockDao> blocks,
            @JsonKey(name: 'story') String parentId,
            @JsonKey(name: 'sort_id') int sortId)?
        numberedList,
    TResult Function(
            String id,
            List<MediaContentBlockDao> blocks,
            @JsonKey(name: 'story') String parentId,
            @JsonKey(name: 'sort_id') int sortId)?
        list,
    TResult Function(String id, @JsonKey(name: 'story') String parentId,
            String question, @JsonKey(name: 'sort_id') int sortId)?
        rateDialog,
    TResult Function(String id, @JsonKey(name: 'group') String parentId,
            @JsonKey(name: 'sort_id') int sortId)?
        appeal,
    TResult Function(String id, @JsonKey(name: 'group') String parentId,
            @JsonKey(name: 'sort_id') int sortId)?
        signature,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MediaContentBlockTitleDao value) title,
    required TResult Function(MediaContentBlockSubtitleDao value) subtitle,
    required TResult Function(MediaContentBlockMarkedSubtitleDao value)
        markedSubtitle,
    required TResult Function(MediaContentBlockTextFieldDao value) textField,
    required TResult Function(MediaContentBlockImageDao value) image,
    required TResult Function(MediaContentBlockSvgDao value) svg,
    required TResult Function(MediaContentBlockLinkButtonDao value) linkButton,
    required TResult Function(MediaContentBlockSubscribeButtonDao value)
        subscribeButton,
    required TResult Function(MediaContentBlockGroupDao value) group,
    required TResult Function(MediaContentBlockNumberedListDao value)
        numberedList,
    required TResult Function(MediaContentBlockListDao value) list,
    required TResult Function(MediaContentBlockRateDialogDao value) rateDialog,
    required TResult Function(MediaContentBlockAppealDao value) appeal,
    required TResult Function(MediaContentBlockSignatureDao value) signature,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MediaContentBlockTitleDao value)? title,
    TResult? Function(MediaContentBlockSubtitleDao value)? subtitle,
    TResult? Function(MediaContentBlockMarkedSubtitleDao value)? markedSubtitle,
    TResult? Function(MediaContentBlockTextFieldDao value)? textField,
    TResult? Function(MediaContentBlockImageDao value)? image,
    TResult? Function(MediaContentBlockSvgDao value)? svg,
    TResult? Function(MediaContentBlockLinkButtonDao value)? linkButton,
    TResult? Function(MediaContentBlockSubscribeButtonDao value)?
        subscribeButton,
    TResult? Function(MediaContentBlockGroupDao value)? group,
    TResult? Function(MediaContentBlockNumberedListDao value)? numberedList,
    TResult? Function(MediaContentBlockListDao value)? list,
    TResult? Function(MediaContentBlockRateDialogDao value)? rateDialog,
    TResult? Function(MediaContentBlockAppealDao value)? appeal,
    TResult? Function(MediaContentBlockSignatureDao value)? signature,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MediaContentBlockTitleDao value)? title,
    TResult Function(MediaContentBlockSubtitleDao value)? subtitle,
    TResult Function(MediaContentBlockMarkedSubtitleDao value)? markedSubtitle,
    TResult Function(MediaContentBlockTextFieldDao value)? textField,
    TResult Function(MediaContentBlockImageDao value)? image,
    TResult Function(MediaContentBlockSvgDao value)? svg,
    TResult Function(MediaContentBlockLinkButtonDao value)? linkButton,
    TResult Function(MediaContentBlockSubscribeButtonDao value)?
        subscribeButton,
    TResult Function(MediaContentBlockGroupDao value)? group,
    TResult Function(MediaContentBlockNumberedListDao value)? numberedList,
    TResult Function(MediaContentBlockListDao value)? list,
    TResult Function(MediaContentBlockRateDialogDao value)? rateDialog,
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
      @JsonKey(name: 'story') String parentId,
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
      @JsonKey(name: 'story') String parentId,
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
      @JsonKey(name: 'story') required this.parentId,
      this.title = '',
      @JsonKey(name: 'sort_id') required this.sortId,
      final String? $type})
      : $type = $type ?? 'title';

  factory _$MediaContentBlockTitleDaoImpl.fromJson(Map<String, dynamic> json) =>
      _$$MediaContentBlockTitleDaoImplFromJson(json);

  @override
  final String id;
  @override
  @JsonKey(name: 'story')
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
            @JsonKey(name: 'story') String parentId,
            String title,
            @JsonKey(name: 'sort_id') int sortId)
        title,
    required TResult Function(
            String id,
            @JsonKey(name: 'story') String parentId,
            String subtitle,
            @JsonKey(name: 'sort_id') int sortId)
        subtitle,
    required TResult Function(
            String id,
            @JsonKey(name: 'story') String parentId,
            String subtitle,
            @JsonKey(name: 'sort_id') int sortId)
        markedSubtitle,
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
            @JsonKey(name: 'story') String parentId,
            String image,
            @JsonKey(name: 'sort_id') int sortId)
        svg,
    required TResult Function(
            String id,
            @JsonKey(name: 'story') String parentId,
            String link,
            @JsonKey(name: 'button_title') String title,
            @JsonKey(name: 'sort_id') int sortId)
        linkButton,
    required TResult Function(
            String id,
            @JsonKey(name: 'story') String parentId,
            MediaPlatformDao media,
            String link,
            @JsonKey(name: 'sort_id') int sortId)
        subscribeButton,
    required TResult Function(
            String id,
            @JsonKey(name: 'story') String parentId,
            MediaContentBlockDao child,
            @JsonKey(name: 'sort_id') int sortId)
        group,
    required TResult Function(
            String id,
            List<MediaContentBlockDao> blocks,
            @JsonKey(name: 'story') String parentId,
            @JsonKey(name: 'sort_id') int sortId)
        numberedList,
    required TResult Function(
            String id,
            List<MediaContentBlockDao> blocks,
            @JsonKey(name: 'story') String parentId,
            @JsonKey(name: 'sort_id') int sortId)
        list,
    required TResult Function(
            String id,
            @JsonKey(name: 'story') String parentId,
            String question,
            @JsonKey(name: 'sort_id') int sortId)
        rateDialog,
    required TResult Function(
            String id,
            @JsonKey(name: 'group') String parentId,
            @JsonKey(name: 'sort_id') int sortId)
        appeal,
    required TResult Function(
            String id,
            @JsonKey(name: 'group') String parentId,
            @JsonKey(name: 'sort_id') int sortId)
        signature,
  }) {
    return title(id, parentId, this.title, sortId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id, @JsonKey(name: 'story') String parentId,
            String title, @JsonKey(name: 'sort_id') int sortId)?
        title,
    TResult? Function(String id, @JsonKey(name: 'story') String parentId,
            String subtitle, @JsonKey(name: 'sort_id') int sortId)?
        subtitle,
    TResult? Function(String id, @JsonKey(name: 'story') String parentId,
            String subtitle, @JsonKey(name: 'sort_id') int sortId)?
        markedSubtitle,
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
    TResult? Function(String id, @JsonKey(name: 'story') String parentId,
            String image, @JsonKey(name: 'sort_id') int sortId)?
        svg,
    TResult? Function(
            String id,
            @JsonKey(name: 'story') String parentId,
            String link,
            @JsonKey(name: 'button_title') String title,
            @JsonKey(name: 'sort_id') int sortId)?
        linkButton,
    TResult? Function(
            String id,
            @JsonKey(name: 'story') String parentId,
            MediaPlatformDao media,
            String link,
            @JsonKey(name: 'sort_id') int sortId)?
        subscribeButton,
    TResult? Function(String id, @JsonKey(name: 'story') String parentId,
            MediaContentBlockDao child, @JsonKey(name: 'sort_id') int sortId)?
        group,
    TResult? Function(
            String id,
            List<MediaContentBlockDao> blocks,
            @JsonKey(name: 'story') String parentId,
            @JsonKey(name: 'sort_id') int sortId)?
        numberedList,
    TResult? Function(
            String id,
            List<MediaContentBlockDao> blocks,
            @JsonKey(name: 'story') String parentId,
            @JsonKey(name: 'sort_id') int sortId)?
        list,
    TResult? Function(String id, @JsonKey(name: 'story') String parentId,
            String question, @JsonKey(name: 'sort_id') int sortId)?
        rateDialog,
    TResult? Function(String id, @JsonKey(name: 'group') String parentId,
            @JsonKey(name: 'sort_id') int sortId)?
        appeal,
    TResult? Function(String id, @JsonKey(name: 'group') String parentId,
            @JsonKey(name: 'sort_id') int sortId)?
        signature,
  }) {
    return title?.call(id, parentId, this.title, sortId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id, @JsonKey(name: 'story') String parentId,
            String title, @JsonKey(name: 'sort_id') int sortId)?
        title,
    TResult Function(String id, @JsonKey(name: 'story') String parentId,
            String subtitle, @JsonKey(name: 'sort_id') int sortId)?
        subtitle,
    TResult Function(String id, @JsonKey(name: 'story') String parentId,
            String subtitle, @JsonKey(name: 'sort_id') int sortId)?
        markedSubtitle,
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
    TResult Function(String id, @JsonKey(name: 'story') String parentId,
            String image, @JsonKey(name: 'sort_id') int sortId)?
        svg,
    TResult Function(
            String id,
            @JsonKey(name: 'story') String parentId,
            String link,
            @JsonKey(name: 'button_title') String title,
            @JsonKey(name: 'sort_id') int sortId)?
        linkButton,
    TResult Function(
            String id,
            @JsonKey(name: 'story') String parentId,
            MediaPlatformDao media,
            String link,
            @JsonKey(name: 'sort_id') int sortId)?
        subscribeButton,
    TResult Function(String id, @JsonKey(name: 'story') String parentId,
            MediaContentBlockDao child, @JsonKey(name: 'sort_id') int sortId)?
        group,
    TResult Function(
            String id,
            List<MediaContentBlockDao> blocks,
            @JsonKey(name: 'story') String parentId,
            @JsonKey(name: 'sort_id') int sortId)?
        numberedList,
    TResult Function(
            String id,
            List<MediaContentBlockDao> blocks,
            @JsonKey(name: 'story') String parentId,
            @JsonKey(name: 'sort_id') int sortId)?
        list,
    TResult Function(String id, @JsonKey(name: 'story') String parentId,
            String question, @JsonKey(name: 'sort_id') int sortId)?
        rateDialog,
    TResult Function(String id, @JsonKey(name: 'group') String parentId,
            @JsonKey(name: 'sort_id') int sortId)?
        appeal,
    TResult Function(String id, @JsonKey(name: 'group') String parentId,
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
    required TResult Function(MediaContentBlockSubtitleDao value) subtitle,
    required TResult Function(MediaContentBlockMarkedSubtitleDao value)
        markedSubtitle,
    required TResult Function(MediaContentBlockTextFieldDao value) textField,
    required TResult Function(MediaContentBlockImageDao value) image,
    required TResult Function(MediaContentBlockSvgDao value) svg,
    required TResult Function(MediaContentBlockLinkButtonDao value) linkButton,
    required TResult Function(MediaContentBlockSubscribeButtonDao value)
        subscribeButton,
    required TResult Function(MediaContentBlockGroupDao value) group,
    required TResult Function(MediaContentBlockNumberedListDao value)
        numberedList,
    required TResult Function(MediaContentBlockListDao value) list,
    required TResult Function(MediaContentBlockRateDialogDao value) rateDialog,
    required TResult Function(MediaContentBlockAppealDao value) appeal,
    required TResult Function(MediaContentBlockSignatureDao value) signature,
  }) {
    return title(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MediaContentBlockTitleDao value)? title,
    TResult? Function(MediaContentBlockSubtitleDao value)? subtitle,
    TResult? Function(MediaContentBlockMarkedSubtitleDao value)? markedSubtitle,
    TResult? Function(MediaContentBlockTextFieldDao value)? textField,
    TResult? Function(MediaContentBlockImageDao value)? image,
    TResult? Function(MediaContentBlockSvgDao value)? svg,
    TResult? Function(MediaContentBlockLinkButtonDao value)? linkButton,
    TResult? Function(MediaContentBlockSubscribeButtonDao value)?
        subscribeButton,
    TResult? Function(MediaContentBlockGroupDao value)? group,
    TResult? Function(MediaContentBlockNumberedListDao value)? numberedList,
    TResult? Function(MediaContentBlockListDao value)? list,
    TResult? Function(MediaContentBlockRateDialogDao value)? rateDialog,
    TResult? Function(MediaContentBlockAppealDao value)? appeal,
    TResult? Function(MediaContentBlockSignatureDao value)? signature,
  }) {
    return title?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MediaContentBlockTitleDao value)? title,
    TResult Function(MediaContentBlockSubtitleDao value)? subtitle,
    TResult Function(MediaContentBlockMarkedSubtitleDao value)? markedSubtitle,
    TResult Function(MediaContentBlockTextFieldDao value)? textField,
    TResult Function(MediaContentBlockImageDao value)? image,
    TResult Function(MediaContentBlockSvgDao value)? svg,
    TResult Function(MediaContentBlockLinkButtonDao value)? linkButton,
    TResult Function(MediaContentBlockSubscribeButtonDao value)?
        subscribeButton,
    TResult Function(MediaContentBlockGroupDao value)? group,
    TResult Function(MediaContentBlockNumberedListDao value)? numberedList,
    TResult Function(MediaContentBlockListDao value)? list,
    TResult Function(MediaContentBlockRateDialogDao value)? rateDialog,
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
          @JsonKey(name: 'story') required final String parentId,
          final String title,
          @JsonKey(name: 'sort_id') required final int sortId}) =
      _$MediaContentBlockTitleDaoImpl;

  factory MediaContentBlockTitleDao.fromJson(Map<String, dynamic> json) =
      _$MediaContentBlockTitleDaoImpl.fromJson;

  @override
  String get id;
  @override
  @JsonKey(name: 'story')
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
abstract class _$$MediaContentBlockSubtitleDaoImplCopyWith<$Res>
    implements $MediaContentBlockDaoCopyWith<$Res> {
  factory _$$MediaContentBlockSubtitleDaoImplCopyWith(
          _$MediaContentBlockSubtitleDaoImpl value,
          $Res Function(_$MediaContentBlockSubtitleDaoImpl) then) =
      __$$MediaContentBlockSubtitleDaoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      @JsonKey(name: 'story') String parentId,
      String subtitle,
      @JsonKey(name: 'sort_id') int sortId});
}

/// @nodoc
class __$$MediaContentBlockSubtitleDaoImplCopyWithImpl<$Res>
    extends _$MediaContentBlockDaoCopyWithImpl<$Res,
        _$MediaContentBlockSubtitleDaoImpl>
    implements _$$MediaContentBlockSubtitleDaoImplCopyWith<$Res> {
  __$$MediaContentBlockSubtitleDaoImplCopyWithImpl(
      _$MediaContentBlockSubtitleDaoImpl _value,
      $Res Function(_$MediaContentBlockSubtitleDaoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? parentId = null,
    Object? subtitle = null,
    Object? sortId = null,
  }) {
    return _then(_$MediaContentBlockSubtitleDaoImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      parentId: null == parentId
          ? _value.parentId
          : parentId // ignore: cast_nullable_to_non_nullable
              as String,
      subtitle: null == subtitle
          ? _value.subtitle
          : subtitle // ignore: cast_nullable_to_non_nullable
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
class _$MediaContentBlockSubtitleDaoImpl
    implements MediaContentBlockSubtitleDao {
  const _$MediaContentBlockSubtitleDaoImpl(
      {required this.id,
      @JsonKey(name: 'story') required this.parentId,
      this.subtitle = '',
      @JsonKey(name: 'sort_id') required this.sortId,
      final String? $type})
      : $type = $type ?? 'subtitle';

  factory _$MediaContentBlockSubtitleDaoImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$MediaContentBlockSubtitleDaoImplFromJson(json);

  @override
  final String id;
  @override
  @JsonKey(name: 'story')
  final String parentId;
  @override
  @JsonKey()
  final String subtitle;
  @override
  @JsonKey(name: 'sort_id')
  final int sortId;

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'MediaContentBlockDao.subtitle(id: $id, parentId: $parentId, subtitle: $subtitle, sortId: $sortId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MediaContentBlockSubtitleDaoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.parentId, parentId) ||
                other.parentId == parentId) &&
            (identical(other.subtitle, subtitle) ||
                other.subtitle == subtitle) &&
            (identical(other.sortId, sortId) || other.sortId == sortId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, parentId, subtitle, sortId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MediaContentBlockSubtitleDaoImplCopyWith<
          _$MediaContentBlockSubtitleDaoImpl>
      get copyWith => __$$MediaContentBlockSubtitleDaoImplCopyWithImpl<
          _$MediaContentBlockSubtitleDaoImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String id,
            @JsonKey(name: 'story') String parentId,
            String title,
            @JsonKey(name: 'sort_id') int sortId)
        title,
    required TResult Function(
            String id,
            @JsonKey(name: 'story') String parentId,
            String subtitle,
            @JsonKey(name: 'sort_id') int sortId)
        subtitle,
    required TResult Function(
            String id,
            @JsonKey(name: 'story') String parentId,
            String subtitle,
            @JsonKey(name: 'sort_id') int sortId)
        markedSubtitle,
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
            @JsonKey(name: 'story') String parentId,
            String image,
            @JsonKey(name: 'sort_id') int sortId)
        svg,
    required TResult Function(
            String id,
            @JsonKey(name: 'story') String parentId,
            String link,
            @JsonKey(name: 'button_title') String title,
            @JsonKey(name: 'sort_id') int sortId)
        linkButton,
    required TResult Function(
            String id,
            @JsonKey(name: 'story') String parentId,
            MediaPlatformDao media,
            String link,
            @JsonKey(name: 'sort_id') int sortId)
        subscribeButton,
    required TResult Function(
            String id,
            @JsonKey(name: 'story') String parentId,
            MediaContentBlockDao child,
            @JsonKey(name: 'sort_id') int sortId)
        group,
    required TResult Function(
            String id,
            List<MediaContentBlockDao> blocks,
            @JsonKey(name: 'story') String parentId,
            @JsonKey(name: 'sort_id') int sortId)
        numberedList,
    required TResult Function(
            String id,
            List<MediaContentBlockDao> blocks,
            @JsonKey(name: 'story') String parentId,
            @JsonKey(name: 'sort_id') int sortId)
        list,
    required TResult Function(
            String id,
            @JsonKey(name: 'story') String parentId,
            String question,
            @JsonKey(name: 'sort_id') int sortId)
        rateDialog,
    required TResult Function(
            String id,
            @JsonKey(name: 'group') String parentId,
            @JsonKey(name: 'sort_id') int sortId)
        appeal,
    required TResult Function(
            String id,
            @JsonKey(name: 'group') String parentId,
            @JsonKey(name: 'sort_id') int sortId)
        signature,
  }) {
    return subtitle(id, parentId, this.subtitle, sortId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id, @JsonKey(name: 'story') String parentId,
            String title, @JsonKey(name: 'sort_id') int sortId)?
        title,
    TResult? Function(String id, @JsonKey(name: 'story') String parentId,
            String subtitle, @JsonKey(name: 'sort_id') int sortId)?
        subtitle,
    TResult? Function(String id, @JsonKey(name: 'story') String parentId,
            String subtitle, @JsonKey(name: 'sort_id') int sortId)?
        markedSubtitle,
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
    TResult? Function(String id, @JsonKey(name: 'story') String parentId,
            String image, @JsonKey(name: 'sort_id') int sortId)?
        svg,
    TResult? Function(
            String id,
            @JsonKey(name: 'story') String parentId,
            String link,
            @JsonKey(name: 'button_title') String title,
            @JsonKey(name: 'sort_id') int sortId)?
        linkButton,
    TResult? Function(
            String id,
            @JsonKey(name: 'story') String parentId,
            MediaPlatformDao media,
            String link,
            @JsonKey(name: 'sort_id') int sortId)?
        subscribeButton,
    TResult? Function(String id, @JsonKey(name: 'story') String parentId,
            MediaContentBlockDao child, @JsonKey(name: 'sort_id') int sortId)?
        group,
    TResult? Function(
            String id,
            List<MediaContentBlockDao> blocks,
            @JsonKey(name: 'story') String parentId,
            @JsonKey(name: 'sort_id') int sortId)?
        numberedList,
    TResult? Function(
            String id,
            List<MediaContentBlockDao> blocks,
            @JsonKey(name: 'story') String parentId,
            @JsonKey(name: 'sort_id') int sortId)?
        list,
    TResult? Function(String id, @JsonKey(name: 'story') String parentId,
            String question, @JsonKey(name: 'sort_id') int sortId)?
        rateDialog,
    TResult? Function(String id, @JsonKey(name: 'group') String parentId,
            @JsonKey(name: 'sort_id') int sortId)?
        appeal,
    TResult? Function(String id, @JsonKey(name: 'group') String parentId,
            @JsonKey(name: 'sort_id') int sortId)?
        signature,
  }) {
    return subtitle?.call(id, parentId, this.subtitle, sortId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id, @JsonKey(name: 'story') String parentId,
            String title, @JsonKey(name: 'sort_id') int sortId)?
        title,
    TResult Function(String id, @JsonKey(name: 'story') String parentId,
            String subtitle, @JsonKey(name: 'sort_id') int sortId)?
        subtitle,
    TResult Function(String id, @JsonKey(name: 'story') String parentId,
            String subtitle, @JsonKey(name: 'sort_id') int sortId)?
        markedSubtitle,
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
    TResult Function(String id, @JsonKey(name: 'story') String parentId,
            String image, @JsonKey(name: 'sort_id') int sortId)?
        svg,
    TResult Function(
            String id,
            @JsonKey(name: 'story') String parentId,
            String link,
            @JsonKey(name: 'button_title') String title,
            @JsonKey(name: 'sort_id') int sortId)?
        linkButton,
    TResult Function(
            String id,
            @JsonKey(name: 'story') String parentId,
            MediaPlatformDao media,
            String link,
            @JsonKey(name: 'sort_id') int sortId)?
        subscribeButton,
    TResult Function(String id, @JsonKey(name: 'story') String parentId,
            MediaContentBlockDao child, @JsonKey(name: 'sort_id') int sortId)?
        group,
    TResult Function(
            String id,
            List<MediaContentBlockDao> blocks,
            @JsonKey(name: 'story') String parentId,
            @JsonKey(name: 'sort_id') int sortId)?
        numberedList,
    TResult Function(
            String id,
            List<MediaContentBlockDao> blocks,
            @JsonKey(name: 'story') String parentId,
            @JsonKey(name: 'sort_id') int sortId)?
        list,
    TResult Function(String id, @JsonKey(name: 'story') String parentId,
            String question, @JsonKey(name: 'sort_id') int sortId)?
        rateDialog,
    TResult Function(String id, @JsonKey(name: 'group') String parentId,
            @JsonKey(name: 'sort_id') int sortId)?
        appeal,
    TResult Function(String id, @JsonKey(name: 'group') String parentId,
            @JsonKey(name: 'sort_id') int sortId)?
        signature,
    required TResult orElse(),
  }) {
    if (subtitle != null) {
      return subtitle(id, parentId, this.subtitle, sortId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MediaContentBlockTitleDao value) title,
    required TResult Function(MediaContentBlockSubtitleDao value) subtitle,
    required TResult Function(MediaContentBlockMarkedSubtitleDao value)
        markedSubtitle,
    required TResult Function(MediaContentBlockTextFieldDao value) textField,
    required TResult Function(MediaContentBlockImageDao value) image,
    required TResult Function(MediaContentBlockSvgDao value) svg,
    required TResult Function(MediaContentBlockLinkButtonDao value) linkButton,
    required TResult Function(MediaContentBlockSubscribeButtonDao value)
        subscribeButton,
    required TResult Function(MediaContentBlockGroupDao value) group,
    required TResult Function(MediaContentBlockNumberedListDao value)
        numberedList,
    required TResult Function(MediaContentBlockListDao value) list,
    required TResult Function(MediaContentBlockRateDialogDao value) rateDialog,
    required TResult Function(MediaContentBlockAppealDao value) appeal,
    required TResult Function(MediaContentBlockSignatureDao value) signature,
  }) {
    return subtitle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MediaContentBlockTitleDao value)? title,
    TResult? Function(MediaContentBlockSubtitleDao value)? subtitle,
    TResult? Function(MediaContentBlockMarkedSubtitleDao value)? markedSubtitle,
    TResult? Function(MediaContentBlockTextFieldDao value)? textField,
    TResult? Function(MediaContentBlockImageDao value)? image,
    TResult? Function(MediaContentBlockSvgDao value)? svg,
    TResult? Function(MediaContentBlockLinkButtonDao value)? linkButton,
    TResult? Function(MediaContentBlockSubscribeButtonDao value)?
        subscribeButton,
    TResult? Function(MediaContentBlockGroupDao value)? group,
    TResult? Function(MediaContentBlockNumberedListDao value)? numberedList,
    TResult? Function(MediaContentBlockListDao value)? list,
    TResult? Function(MediaContentBlockRateDialogDao value)? rateDialog,
    TResult? Function(MediaContentBlockAppealDao value)? appeal,
    TResult? Function(MediaContentBlockSignatureDao value)? signature,
  }) {
    return subtitle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MediaContentBlockTitleDao value)? title,
    TResult Function(MediaContentBlockSubtitleDao value)? subtitle,
    TResult Function(MediaContentBlockMarkedSubtitleDao value)? markedSubtitle,
    TResult Function(MediaContentBlockTextFieldDao value)? textField,
    TResult Function(MediaContentBlockImageDao value)? image,
    TResult Function(MediaContentBlockSvgDao value)? svg,
    TResult Function(MediaContentBlockLinkButtonDao value)? linkButton,
    TResult Function(MediaContentBlockSubscribeButtonDao value)?
        subscribeButton,
    TResult Function(MediaContentBlockGroupDao value)? group,
    TResult Function(MediaContentBlockNumberedListDao value)? numberedList,
    TResult Function(MediaContentBlockListDao value)? list,
    TResult Function(MediaContentBlockRateDialogDao value)? rateDialog,
    TResult Function(MediaContentBlockAppealDao value)? appeal,
    TResult Function(MediaContentBlockSignatureDao value)? signature,
    required TResult orElse(),
  }) {
    if (subtitle != null) {
      return subtitle(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$MediaContentBlockSubtitleDaoImplToJson(
      this,
    );
  }
}

abstract class MediaContentBlockSubtitleDao implements MediaContentBlockDao {
  const factory MediaContentBlockSubtitleDao(
          {required final String id,
          @JsonKey(name: 'story') required final String parentId,
          final String subtitle,
          @JsonKey(name: 'sort_id') required final int sortId}) =
      _$MediaContentBlockSubtitleDaoImpl;

  factory MediaContentBlockSubtitleDao.fromJson(Map<String, dynamic> json) =
      _$MediaContentBlockSubtitleDaoImpl.fromJson;

  @override
  String get id;
  @override
  @JsonKey(name: 'story')
  String get parentId;
  String get subtitle;
  @override
  @JsonKey(name: 'sort_id')
  int get sortId;
  @override
  @JsonKey(ignore: true)
  _$$MediaContentBlockSubtitleDaoImplCopyWith<
          _$MediaContentBlockSubtitleDaoImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MediaContentBlockMarkedSubtitleDaoImplCopyWith<$Res>
    implements $MediaContentBlockDaoCopyWith<$Res> {
  factory _$$MediaContentBlockMarkedSubtitleDaoImplCopyWith(
          _$MediaContentBlockMarkedSubtitleDaoImpl value,
          $Res Function(_$MediaContentBlockMarkedSubtitleDaoImpl) then) =
      __$$MediaContentBlockMarkedSubtitleDaoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      @JsonKey(name: 'story') String parentId,
      String subtitle,
      @JsonKey(name: 'sort_id') int sortId});
}

/// @nodoc
class __$$MediaContentBlockMarkedSubtitleDaoImplCopyWithImpl<$Res>
    extends _$MediaContentBlockDaoCopyWithImpl<$Res,
        _$MediaContentBlockMarkedSubtitleDaoImpl>
    implements _$$MediaContentBlockMarkedSubtitleDaoImplCopyWith<$Res> {
  __$$MediaContentBlockMarkedSubtitleDaoImplCopyWithImpl(
      _$MediaContentBlockMarkedSubtitleDaoImpl _value,
      $Res Function(_$MediaContentBlockMarkedSubtitleDaoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? parentId = null,
    Object? subtitle = null,
    Object? sortId = null,
  }) {
    return _then(_$MediaContentBlockMarkedSubtitleDaoImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      parentId: null == parentId
          ? _value.parentId
          : parentId // ignore: cast_nullable_to_non_nullable
              as String,
      subtitle: null == subtitle
          ? _value.subtitle
          : subtitle // ignore: cast_nullable_to_non_nullable
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
class _$MediaContentBlockMarkedSubtitleDaoImpl
    implements MediaContentBlockMarkedSubtitleDao {
  const _$MediaContentBlockMarkedSubtitleDaoImpl(
      {required this.id,
      @JsonKey(name: 'story') required this.parentId,
      this.subtitle = '',
      @JsonKey(name: 'sort_id') required this.sortId,
      final String? $type})
      : $type = $type ?? 'marked_subtitle';

  factory _$MediaContentBlockMarkedSubtitleDaoImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$MediaContentBlockMarkedSubtitleDaoImplFromJson(json);

  @override
  final String id;
  @override
  @JsonKey(name: 'story')
  final String parentId;
  @override
  @JsonKey()
  final String subtitle;
  @override
  @JsonKey(name: 'sort_id')
  final int sortId;

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'MediaContentBlockDao.markedSubtitle(id: $id, parentId: $parentId, subtitle: $subtitle, sortId: $sortId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MediaContentBlockMarkedSubtitleDaoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.parentId, parentId) ||
                other.parentId == parentId) &&
            (identical(other.subtitle, subtitle) ||
                other.subtitle == subtitle) &&
            (identical(other.sortId, sortId) || other.sortId == sortId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, parentId, subtitle, sortId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MediaContentBlockMarkedSubtitleDaoImplCopyWith<
          _$MediaContentBlockMarkedSubtitleDaoImpl>
      get copyWith => __$$MediaContentBlockMarkedSubtitleDaoImplCopyWithImpl<
          _$MediaContentBlockMarkedSubtitleDaoImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String id,
            @JsonKey(name: 'story') String parentId,
            String title,
            @JsonKey(name: 'sort_id') int sortId)
        title,
    required TResult Function(
            String id,
            @JsonKey(name: 'story') String parentId,
            String subtitle,
            @JsonKey(name: 'sort_id') int sortId)
        subtitle,
    required TResult Function(
            String id,
            @JsonKey(name: 'story') String parentId,
            String subtitle,
            @JsonKey(name: 'sort_id') int sortId)
        markedSubtitle,
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
            @JsonKey(name: 'story') String parentId,
            String image,
            @JsonKey(name: 'sort_id') int sortId)
        svg,
    required TResult Function(
            String id,
            @JsonKey(name: 'story') String parentId,
            String link,
            @JsonKey(name: 'button_title') String title,
            @JsonKey(name: 'sort_id') int sortId)
        linkButton,
    required TResult Function(
            String id,
            @JsonKey(name: 'story') String parentId,
            MediaPlatformDao media,
            String link,
            @JsonKey(name: 'sort_id') int sortId)
        subscribeButton,
    required TResult Function(
            String id,
            @JsonKey(name: 'story') String parentId,
            MediaContentBlockDao child,
            @JsonKey(name: 'sort_id') int sortId)
        group,
    required TResult Function(
            String id,
            List<MediaContentBlockDao> blocks,
            @JsonKey(name: 'story') String parentId,
            @JsonKey(name: 'sort_id') int sortId)
        numberedList,
    required TResult Function(
            String id,
            List<MediaContentBlockDao> blocks,
            @JsonKey(name: 'story') String parentId,
            @JsonKey(name: 'sort_id') int sortId)
        list,
    required TResult Function(
            String id,
            @JsonKey(name: 'story') String parentId,
            String question,
            @JsonKey(name: 'sort_id') int sortId)
        rateDialog,
    required TResult Function(
            String id,
            @JsonKey(name: 'group') String parentId,
            @JsonKey(name: 'sort_id') int sortId)
        appeal,
    required TResult Function(
            String id,
            @JsonKey(name: 'group') String parentId,
            @JsonKey(name: 'sort_id') int sortId)
        signature,
  }) {
    return markedSubtitle(id, parentId, this.subtitle, sortId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id, @JsonKey(name: 'story') String parentId,
            String title, @JsonKey(name: 'sort_id') int sortId)?
        title,
    TResult? Function(String id, @JsonKey(name: 'story') String parentId,
            String subtitle, @JsonKey(name: 'sort_id') int sortId)?
        subtitle,
    TResult? Function(String id, @JsonKey(name: 'story') String parentId,
            String subtitle, @JsonKey(name: 'sort_id') int sortId)?
        markedSubtitle,
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
    TResult? Function(String id, @JsonKey(name: 'story') String parentId,
            String image, @JsonKey(name: 'sort_id') int sortId)?
        svg,
    TResult? Function(
            String id,
            @JsonKey(name: 'story') String parentId,
            String link,
            @JsonKey(name: 'button_title') String title,
            @JsonKey(name: 'sort_id') int sortId)?
        linkButton,
    TResult? Function(
            String id,
            @JsonKey(name: 'story') String parentId,
            MediaPlatformDao media,
            String link,
            @JsonKey(name: 'sort_id') int sortId)?
        subscribeButton,
    TResult? Function(String id, @JsonKey(name: 'story') String parentId,
            MediaContentBlockDao child, @JsonKey(name: 'sort_id') int sortId)?
        group,
    TResult? Function(
            String id,
            List<MediaContentBlockDao> blocks,
            @JsonKey(name: 'story') String parentId,
            @JsonKey(name: 'sort_id') int sortId)?
        numberedList,
    TResult? Function(
            String id,
            List<MediaContentBlockDao> blocks,
            @JsonKey(name: 'story') String parentId,
            @JsonKey(name: 'sort_id') int sortId)?
        list,
    TResult? Function(String id, @JsonKey(name: 'story') String parentId,
            String question, @JsonKey(name: 'sort_id') int sortId)?
        rateDialog,
    TResult? Function(String id, @JsonKey(name: 'group') String parentId,
            @JsonKey(name: 'sort_id') int sortId)?
        appeal,
    TResult? Function(String id, @JsonKey(name: 'group') String parentId,
            @JsonKey(name: 'sort_id') int sortId)?
        signature,
  }) {
    return markedSubtitle?.call(id, parentId, this.subtitle, sortId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id, @JsonKey(name: 'story') String parentId,
            String title, @JsonKey(name: 'sort_id') int sortId)?
        title,
    TResult Function(String id, @JsonKey(name: 'story') String parentId,
            String subtitle, @JsonKey(name: 'sort_id') int sortId)?
        subtitle,
    TResult Function(String id, @JsonKey(name: 'story') String parentId,
            String subtitle, @JsonKey(name: 'sort_id') int sortId)?
        markedSubtitle,
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
    TResult Function(String id, @JsonKey(name: 'story') String parentId,
            String image, @JsonKey(name: 'sort_id') int sortId)?
        svg,
    TResult Function(
            String id,
            @JsonKey(name: 'story') String parentId,
            String link,
            @JsonKey(name: 'button_title') String title,
            @JsonKey(name: 'sort_id') int sortId)?
        linkButton,
    TResult Function(
            String id,
            @JsonKey(name: 'story') String parentId,
            MediaPlatformDao media,
            String link,
            @JsonKey(name: 'sort_id') int sortId)?
        subscribeButton,
    TResult Function(String id, @JsonKey(name: 'story') String parentId,
            MediaContentBlockDao child, @JsonKey(name: 'sort_id') int sortId)?
        group,
    TResult Function(
            String id,
            List<MediaContentBlockDao> blocks,
            @JsonKey(name: 'story') String parentId,
            @JsonKey(name: 'sort_id') int sortId)?
        numberedList,
    TResult Function(
            String id,
            List<MediaContentBlockDao> blocks,
            @JsonKey(name: 'story') String parentId,
            @JsonKey(name: 'sort_id') int sortId)?
        list,
    TResult Function(String id, @JsonKey(name: 'story') String parentId,
            String question, @JsonKey(name: 'sort_id') int sortId)?
        rateDialog,
    TResult Function(String id, @JsonKey(name: 'group') String parentId,
            @JsonKey(name: 'sort_id') int sortId)?
        appeal,
    TResult Function(String id, @JsonKey(name: 'group') String parentId,
            @JsonKey(name: 'sort_id') int sortId)?
        signature,
    required TResult orElse(),
  }) {
    if (markedSubtitle != null) {
      return markedSubtitle(id, parentId, this.subtitle, sortId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MediaContentBlockTitleDao value) title,
    required TResult Function(MediaContentBlockSubtitleDao value) subtitle,
    required TResult Function(MediaContentBlockMarkedSubtitleDao value)
        markedSubtitle,
    required TResult Function(MediaContentBlockTextFieldDao value) textField,
    required TResult Function(MediaContentBlockImageDao value) image,
    required TResult Function(MediaContentBlockSvgDao value) svg,
    required TResult Function(MediaContentBlockLinkButtonDao value) linkButton,
    required TResult Function(MediaContentBlockSubscribeButtonDao value)
        subscribeButton,
    required TResult Function(MediaContentBlockGroupDao value) group,
    required TResult Function(MediaContentBlockNumberedListDao value)
        numberedList,
    required TResult Function(MediaContentBlockListDao value) list,
    required TResult Function(MediaContentBlockRateDialogDao value) rateDialog,
    required TResult Function(MediaContentBlockAppealDao value) appeal,
    required TResult Function(MediaContentBlockSignatureDao value) signature,
  }) {
    return markedSubtitle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MediaContentBlockTitleDao value)? title,
    TResult? Function(MediaContentBlockSubtitleDao value)? subtitle,
    TResult? Function(MediaContentBlockMarkedSubtitleDao value)? markedSubtitle,
    TResult? Function(MediaContentBlockTextFieldDao value)? textField,
    TResult? Function(MediaContentBlockImageDao value)? image,
    TResult? Function(MediaContentBlockSvgDao value)? svg,
    TResult? Function(MediaContentBlockLinkButtonDao value)? linkButton,
    TResult? Function(MediaContentBlockSubscribeButtonDao value)?
        subscribeButton,
    TResult? Function(MediaContentBlockGroupDao value)? group,
    TResult? Function(MediaContentBlockNumberedListDao value)? numberedList,
    TResult? Function(MediaContentBlockListDao value)? list,
    TResult? Function(MediaContentBlockRateDialogDao value)? rateDialog,
    TResult? Function(MediaContentBlockAppealDao value)? appeal,
    TResult? Function(MediaContentBlockSignatureDao value)? signature,
  }) {
    return markedSubtitle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MediaContentBlockTitleDao value)? title,
    TResult Function(MediaContentBlockSubtitleDao value)? subtitle,
    TResult Function(MediaContentBlockMarkedSubtitleDao value)? markedSubtitle,
    TResult Function(MediaContentBlockTextFieldDao value)? textField,
    TResult Function(MediaContentBlockImageDao value)? image,
    TResult Function(MediaContentBlockSvgDao value)? svg,
    TResult Function(MediaContentBlockLinkButtonDao value)? linkButton,
    TResult Function(MediaContentBlockSubscribeButtonDao value)?
        subscribeButton,
    TResult Function(MediaContentBlockGroupDao value)? group,
    TResult Function(MediaContentBlockNumberedListDao value)? numberedList,
    TResult Function(MediaContentBlockListDao value)? list,
    TResult Function(MediaContentBlockRateDialogDao value)? rateDialog,
    TResult Function(MediaContentBlockAppealDao value)? appeal,
    TResult Function(MediaContentBlockSignatureDao value)? signature,
    required TResult orElse(),
  }) {
    if (markedSubtitle != null) {
      return markedSubtitle(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$MediaContentBlockMarkedSubtitleDaoImplToJson(
      this,
    );
  }
}

abstract class MediaContentBlockMarkedSubtitleDao
    implements MediaContentBlockDao {
  const factory MediaContentBlockMarkedSubtitleDao(
          {required final String id,
          @JsonKey(name: 'story') required final String parentId,
          final String subtitle,
          @JsonKey(name: 'sort_id') required final int sortId}) =
      _$MediaContentBlockMarkedSubtitleDaoImpl;

  factory MediaContentBlockMarkedSubtitleDao.fromJson(
          Map<String, dynamic> json) =
      _$MediaContentBlockMarkedSubtitleDaoImpl.fromJson;

  @override
  String get id;
  @override
  @JsonKey(name: 'story')
  String get parentId;
  String get subtitle;
  @override
  @JsonKey(name: 'sort_id')
  int get sortId;
  @override
  @JsonKey(ignore: true)
  _$$MediaContentBlockMarkedSubtitleDaoImplCopyWith<
          _$MediaContentBlockMarkedSubtitleDaoImpl>
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
            @JsonKey(name: 'story') String parentId,
            String title,
            @JsonKey(name: 'sort_id') int sortId)
        title,
    required TResult Function(
            String id,
            @JsonKey(name: 'story') String parentId,
            String subtitle,
            @JsonKey(name: 'sort_id') int sortId)
        subtitle,
    required TResult Function(
            String id,
            @JsonKey(name: 'story') String parentId,
            String subtitle,
            @JsonKey(name: 'sort_id') int sortId)
        markedSubtitle,
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
            @JsonKey(name: 'story') String parentId,
            String image,
            @JsonKey(name: 'sort_id') int sortId)
        svg,
    required TResult Function(
            String id,
            @JsonKey(name: 'story') String parentId,
            String link,
            @JsonKey(name: 'button_title') String title,
            @JsonKey(name: 'sort_id') int sortId)
        linkButton,
    required TResult Function(
            String id,
            @JsonKey(name: 'story') String parentId,
            MediaPlatformDao media,
            String link,
            @JsonKey(name: 'sort_id') int sortId)
        subscribeButton,
    required TResult Function(
            String id,
            @JsonKey(name: 'story') String parentId,
            MediaContentBlockDao child,
            @JsonKey(name: 'sort_id') int sortId)
        group,
    required TResult Function(
            String id,
            List<MediaContentBlockDao> blocks,
            @JsonKey(name: 'story') String parentId,
            @JsonKey(name: 'sort_id') int sortId)
        numberedList,
    required TResult Function(
            String id,
            List<MediaContentBlockDao> blocks,
            @JsonKey(name: 'story') String parentId,
            @JsonKey(name: 'sort_id') int sortId)
        list,
    required TResult Function(
            String id,
            @JsonKey(name: 'story') String parentId,
            String question,
            @JsonKey(name: 'sort_id') int sortId)
        rateDialog,
    required TResult Function(
            String id,
            @JsonKey(name: 'group') String parentId,
            @JsonKey(name: 'sort_id') int sortId)
        appeal,
    required TResult Function(
            String id,
            @JsonKey(name: 'group') String parentId,
            @JsonKey(name: 'sort_id') int sortId)
        signature,
  }) {
    return textField(id, parentId, content, sortId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id, @JsonKey(name: 'story') String parentId,
            String title, @JsonKey(name: 'sort_id') int sortId)?
        title,
    TResult? Function(String id, @JsonKey(name: 'story') String parentId,
            String subtitle, @JsonKey(name: 'sort_id') int sortId)?
        subtitle,
    TResult? Function(String id, @JsonKey(name: 'story') String parentId,
            String subtitle, @JsonKey(name: 'sort_id') int sortId)?
        markedSubtitle,
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
    TResult? Function(String id, @JsonKey(name: 'story') String parentId,
            String image, @JsonKey(name: 'sort_id') int sortId)?
        svg,
    TResult? Function(
            String id,
            @JsonKey(name: 'story') String parentId,
            String link,
            @JsonKey(name: 'button_title') String title,
            @JsonKey(name: 'sort_id') int sortId)?
        linkButton,
    TResult? Function(
            String id,
            @JsonKey(name: 'story') String parentId,
            MediaPlatformDao media,
            String link,
            @JsonKey(name: 'sort_id') int sortId)?
        subscribeButton,
    TResult? Function(String id, @JsonKey(name: 'story') String parentId,
            MediaContentBlockDao child, @JsonKey(name: 'sort_id') int sortId)?
        group,
    TResult? Function(
            String id,
            List<MediaContentBlockDao> blocks,
            @JsonKey(name: 'story') String parentId,
            @JsonKey(name: 'sort_id') int sortId)?
        numberedList,
    TResult? Function(
            String id,
            List<MediaContentBlockDao> blocks,
            @JsonKey(name: 'story') String parentId,
            @JsonKey(name: 'sort_id') int sortId)?
        list,
    TResult? Function(String id, @JsonKey(name: 'story') String parentId,
            String question, @JsonKey(name: 'sort_id') int sortId)?
        rateDialog,
    TResult? Function(String id, @JsonKey(name: 'group') String parentId,
            @JsonKey(name: 'sort_id') int sortId)?
        appeal,
    TResult? Function(String id, @JsonKey(name: 'group') String parentId,
            @JsonKey(name: 'sort_id') int sortId)?
        signature,
  }) {
    return textField?.call(id, parentId, content, sortId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id, @JsonKey(name: 'story') String parentId,
            String title, @JsonKey(name: 'sort_id') int sortId)?
        title,
    TResult Function(String id, @JsonKey(name: 'story') String parentId,
            String subtitle, @JsonKey(name: 'sort_id') int sortId)?
        subtitle,
    TResult Function(String id, @JsonKey(name: 'story') String parentId,
            String subtitle, @JsonKey(name: 'sort_id') int sortId)?
        markedSubtitle,
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
    TResult Function(String id, @JsonKey(name: 'story') String parentId,
            String image, @JsonKey(name: 'sort_id') int sortId)?
        svg,
    TResult Function(
            String id,
            @JsonKey(name: 'story') String parentId,
            String link,
            @JsonKey(name: 'button_title') String title,
            @JsonKey(name: 'sort_id') int sortId)?
        linkButton,
    TResult Function(
            String id,
            @JsonKey(name: 'story') String parentId,
            MediaPlatformDao media,
            String link,
            @JsonKey(name: 'sort_id') int sortId)?
        subscribeButton,
    TResult Function(String id, @JsonKey(name: 'story') String parentId,
            MediaContentBlockDao child, @JsonKey(name: 'sort_id') int sortId)?
        group,
    TResult Function(
            String id,
            List<MediaContentBlockDao> blocks,
            @JsonKey(name: 'story') String parentId,
            @JsonKey(name: 'sort_id') int sortId)?
        numberedList,
    TResult Function(
            String id,
            List<MediaContentBlockDao> blocks,
            @JsonKey(name: 'story') String parentId,
            @JsonKey(name: 'sort_id') int sortId)?
        list,
    TResult Function(String id, @JsonKey(name: 'story') String parentId,
            String question, @JsonKey(name: 'sort_id') int sortId)?
        rateDialog,
    TResult Function(String id, @JsonKey(name: 'group') String parentId,
            @JsonKey(name: 'sort_id') int sortId)?
        appeal,
    TResult Function(String id, @JsonKey(name: 'group') String parentId,
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
    required TResult Function(MediaContentBlockSubtitleDao value) subtitle,
    required TResult Function(MediaContentBlockMarkedSubtitleDao value)
        markedSubtitle,
    required TResult Function(MediaContentBlockTextFieldDao value) textField,
    required TResult Function(MediaContentBlockImageDao value) image,
    required TResult Function(MediaContentBlockSvgDao value) svg,
    required TResult Function(MediaContentBlockLinkButtonDao value) linkButton,
    required TResult Function(MediaContentBlockSubscribeButtonDao value)
        subscribeButton,
    required TResult Function(MediaContentBlockGroupDao value) group,
    required TResult Function(MediaContentBlockNumberedListDao value)
        numberedList,
    required TResult Function(MediaContentBlockListDao value) list,
    required TResult Function(MediaContentBlockRateDialogDao value) rateDialog,
    required TResult Function(MediaContentBlockAppealDao value) appeal,
    required TResult Function(MediaContentBlockSignatureDao value) signature,
  }) {
    return textField(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MediaContentBlockTitleDao value)? title,
    TResult? Function(MediaContentBlockSubtitleDao value)? subtitle,
    TResult? Function(MediaContentBlockMarkedSubtitleDao value)? markedSubtitle,
    TResult? Function(MediaContentBlockTextFieldDao value)? textField,
    TResult? Function(MediaContentBlockImageDao value)? image,
    TResult? Function(MediaContentBlockSvgDao value)? svg,
    TResult? Function(MediaContentBlockLinkButtonDao value)? linkButton,
    TResult? Function(MediaContentBlockSubscribeButtonDao value)?
        subscribeButton,
    TResult? Function(MediaContentBlockGroupDao value)? group,
    TResult? Function(MediaContentBlockNumberedListDao value)? numberedList,
    TResult? Function(MediaContentBlockListDao value)? list,
    TResult? Function(MediaContentBlockRateDialogDao value)? rateDialog,
    TResult? Function(MediaContentBlockAppealDao value)? appeal,
    TResult? Function(MediaContentBlockSignatureDao value)? signature,
  }) {
    return textField?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MediaContentBlockTitleDao value)? title,
    TResult Function(MediaContentBlockSubtitleDao value)? subtitle,
    TResult Function(MediaContentBlockMarkedSubtitleDao value)? markedSubtitle,
    TResult Function(MediaContentBlockTextFieldDao value)? textField,
    TResult Function(MediaContentBlockImageDao value)? image,
    TResult Function(MediaContentBlockSvgDao value)? svg,
    TResult Function(MediaContentBlockLinkButtonDao value)? linkButton,
    TResult Function(MediaContentBlockSubscribeButtonDao value)?
        subscribeButton,
    TResult Function(MediaContentBlockGroupDao value)? group,
    TResult Function(MediaContentBlockNumberedListDao value)? numberedList,
    TResult Function(MediaContentBlockListDao value)? list,
    TResult Function(MediaContentBlockRateDialogDao value)? rateDialog,
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
            @JsonKey(name: 'story') String parentId,
            String title,
            @JsonKey(name: 'sort_id') int sortId)
        title,
    required TResult Function(
            String id,
            @JsonKey(name: 'story') String parentId,
            String subtitle,
            @JsonKey(name: 'sort_id') int sortId)
        subtitle,
    required TResult Function(
            String id,
            @JsonKey(name: 'story') String parentId,
            String subtitle,
            @JsonKey(name: 'sort_id') int sortId)
        markedSubtitle,
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
            @JsonKey(name: 'story') String parentId,
            String image,
            @JsonKey(name: 'sort_id') int sortId)
        svg,
    required TResult Function(
            String id,
            @JsonKey(name: 'story') String parentId,
            String link,
            @JsonKey(name: 'button_title') String title,
            @JsonKey(name: 'sort_id') int sortId)
        linkButton,
    required TResult Function(
            String id,
            @JsonKey(name: 'story') String parentId,
            MediaPlatformDao media,
            String link,
            @JsonKey(name: 'sort_id') int sortId)
        subscribeButton,
    required TResult Function(
            String id,
            @JsonKey(name: 'story') String parentId,
            MediaContentBlockDao child,
            @JsonKey(name: 'sort_id') int sortId)
        group,
    required TResult Function(
            String id,
            List<MediaContentBlockDao> blocks,
            @JsonKey(name: 'story') String parentId,
            @JsonKey(name: 'sort_id') int sortId)
        numberedList,
    required TResult Function(
            String id,
            List<MediaContentBlockDao> blocks,
            @JsonKey(name: 'story') String parentId,
            @JsonKey(name: 'sort_id') int sortId)
        list,
    required TResult Function(
            String id,
            @JsonKey(name: 'story') String parentId,
            String question,
            @JsonKey(name: 'sort_id') int sortId)
        rateDialog,
    required TResult Function(
            String id,
            @JsonKey(name: 'group') String parentId,
            @JsonKey(name: 'sort_id') int sortId)
        appeal,
    required TResult Function(
            String id,
            @JsonKey(name: 'group') String parentId,
            @JsonKey(name: 'sort_id') int sortId)
        signature,
  }) {
    return image(id, parentId, this.image, sortId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id, @JsonKey(name: 'story') String parentId,
            String title, @JsonKey(name: 'sort_id') int sortId)?
        title,
    TResult? Function(String id, @JsonKey(name: 'story') String parentId,
            String subtitle, @JsonKey(name: 'sort_id') int sortId)?
        subtitle,
    TResult? Function(String id, @JsonKey(name: 'story') String parentId,
            String subtitle, @JsonKey(name: 'sort_id') int sortId)?
        markedSubtitle,
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
    TResult? Function(String id, @JsonKey(name: 'story') String parentId,
            String image, @JsonKey(name: 'sort_id') int sortId)?
        svg,
    TResult? Function(
            String id,
            @JsonKey(name: 'story') String parentId,
            String link,
            @JsonKey(name: 'button_title') String title,
            @JsonKey(name: 'sort_id') int sortId)?
        linkButton,
    TResult? Function(
            String id,
            @JsonKey(name: 'story') String parentId,
            MediaPlatformDao media,
            String link,
            @JsonKey(name: 'sort_id') int sortId)?
        subscribeButton,
    TResult? Function(String id, @JsonKey(name: 'story') String parentId,
            MediaContentBlockDao child, @JsonKey(name: 'sort_id') int sortId)?
        group,
    TResult? Function(
            String id,
            List<MediaContentBlockDao> blocks,
            @JsonKey(name: 'story') String parentId,
            @JsonKey(name: 'sort_id') int sortId)?
        numberedList,
    TResult? Function(
            String id,
            List<MediaContentBlockDao> blocks,
            @JsonKey(name: 'story') String parentId,
            @JsonKey(name: 'sort_id') int sortId)?
        list,
    TResult? Function(String id, @JsonKey(name: 'story') String parentId,
            String question, @JsonKey(name: 'sort_id') int sortId)?
        rateDialog,
    TResult? Function(String id, @JsonKey(name: 'group') String parentId,
            @JsonKey(name: 'sort_id') int sortId)?
        appeal,
    TResult? Function(String id, @JsonKey(name: 'group') String parentId,
            @JsonKey(name: 'sort_id') int sortId)?
        signature,
  }) {
    return image?.call(id, parentId, this.image, sortId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id, @JsonKey(name: 'story') String parentId,
            String title, @JsonKey(name: 'sort_id') int sortId)?
        title,
    TResult Function(String id, @JsonKey(name: 'story') String parentId,
            String subtitle, @JsonKey(name: 'sort_id') int sortId)?
        subtitle,
    TResult Function(String id, @JsonKey(name: 'story') String parentId,
            String subtitle, @JsonKey(name: 'sort_id') int sortId)?
        markedSubtitle,
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
    TResult Function(String id, @JsonKey(name: 'story') String parentId,
            String image, @JsonKey(name: 'sort_id') int sortId)?
        svg,
    TResult Function(
            String id,
            @JsonKey(name: 'story') String parentId,
            String link,
            @JsonKey(name: 'button_title') String title,
            @JsonKey(name: 'sort_id') int sortId)?
        linkButton,
    TResult Function(
            String id,
            @JsonKey(name: 'story') String parentId,
            MediaPlatformDao media,
            String link,
            @JsonKey(name: 'sort_id') int sortId)?
        subscribeButton,
    TResult Function(String id, @JsonKey(name: 'story') String parentId,
            MediaContentBlockDao child, @JsonKey(name: 'sort_id') int sortId)?
        group,
    TResult Function(
            String id,
            List<MediaContentBlockDao> blocks,
            @JsonKey(name: 'story') String parentId,
            @JsonKey(name: 'sort_id') int sortId)?
        numberedList,
    TResult Function(
            String id,
            List<MediaContentBlockDao> blocks,
            @JsonKey(name: 'story') String parentId,
            @JsonKey(name: 'sort_id') int sortId)?
        list,
    TResult Function(String id, @JsonKey(name: 'story') String parentId,
            String question, @JsonKey(name: 'sort_id') int sortId)?
        rateDialog,
    TResult Function(String id, @JsonKey(name: 'group') String parentId,
            @JsonKey(name: 'sort_id') int sortId)?
        appeal,
    TResult Function(String id, @JsonKey(name: 'group') String parentId,
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
    required TResult Function(MediaContentBlockSubtitleDao value) subtitle,
    required TResult Function(MediaContentBlockMarkedSubtitleDao value)
        markedSubtitle,
    required TResult Function(MediaContentBlockTextFieldDao value) textField,
    required TResult Function(MediaContentBlockImageDao value) image,
    required TResult Function(MediaContentBlockSvgDao value) svg,
    required TResult Function(MediaContentBlockLinkButtonDao value) linkButton,
    required TResult Function(MediaContentBlockSubscribeButtonDao value)
        subscribeButton,
    required TResult Function(MediaContentBlockGroupDao value) group,
    required TResult Function(MediaContentBlockNumberedListDao value)
        numberedList,
    required TResult Function(MediaContentBlockListDao value) list,
    required TResult Function(MediaContentBlockRateDialogDao value) rateDialog,
    required TResult Function(MediaContentBlockAppealDao value) appeal,
    required TResult Function(MediaContentBlockSignatureDao value) signature,
  }) {
    return image(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MediaContentBlockTitleDao value)? title,
    TResult? Function(MediaContentBlockSubtitleDao value)? subtitle,
    TResult? Function(MediaContentBlockMarkedSubtitleDao value)? markedSubtitle,
    TResult? Function(MediaContentBlockTextFieldDao value)? textField,
    TResult? Function(MediaContentBlockImageDao value)? image,
    TResult? Function(MediaContentBlockSvgDao value)? svg,
    TResult? Function(MediaContentBlockLinkButtonDao value)? linkButton,
    TResult? Function(MediaContentBlockSubscribeButtonDao value)?
        subscribeButton,
    TResult? Function(MediaContentBlockGroupDao value)? group,
    TResult? Function(MediaContentBlockNumberedListDao value)? numberedList,
    TResult? Function(MediaContentBlockListDao value)? list,
    TResult? Function(MediaContentBlockRateDialogDao value)? rateDialog,
    TResult? Function(MediaContentBlockAppealDao value)? appeal,
    TResult? Function(MediaContentBlockSignatureDao value)? signature,
  }) {
    return image?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MediaContentBlockTitleDao value)? title,
    TResult Function(MediaContentBlockSubtitleDao value)? subtitle,
    TResult Function(MediaContentBlockMarkedSubtitleDao value)? markedSubtitle,
    TResult Function(MediaContentBlockTextFieldDao value)? textField,
    TResult Function(MediaContentBlockImageDao value)? image,
    TResult Function(MediaContentBlockSvgDao value)? svg,
    TResult Function(MediaContentBlockLinkButtonDao value)? linkButton,
    TResult Function(MediaContentBlockSubscribeButtonDao value)?
        subscribeButton,
    TResult Function(MediaContentBlockGroupDao value)? group,
    TResult Function(MediaContentBlockNumberedListDao value)? numberedList,
    TResult Function(MediaContentBlockListDao value)? list,
    TResult Function(MediaContentBlockRateDialogDao value)? rateDialog,
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
abstract class _$$MediaContentBlockSvgDaoImplCopyWith<$Res>
    implements $MediaContentBlockDaoCopyWith<$Res> {
  factory _$$MediaContentBlockSvgDaoImplCopyWith(
          _$MediaContentBlockSvgDaoImpl value,
          $Res Function(_$MediaContentBlockSvgDaoImpl) then) =
      __$$MediaContentBlockSvgDaoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      @JsonKey(name: 'story') String parentId,
      String image,
      @JsonKey(name: 'sort_id') int sortId});
}

/// @nodoc
class __$$MediaContentBlockSvgDaoImplCopyWithImpl<$Res>
    extends _$MediaContentBlockDaoCopyWithImpl<$Res,
        _$MediaContentBlockSvgDaoImpl>
    implements _$$MediaContentBlockSvgDaoImplCopyWith<$Res> {
  __$$MediaContentBlockSvgDaoImplCopyWithImpl(
      _$MediaContentBlockSvgDaoImpl _value,
      $Res Function(_$MediaContentBlockSvgDaoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? parentId = null,
    Object? image = null,
    Object? sortId = null,
  }) {
    return _then(_$MediaContentBlockSvgDaoImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      parentId: null == parentId
          ? _value.parentId
          : parentId // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
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
class _$MediaContentBlockSvgDaoImpl implements MediaContentBlockSvgDao {
  const _$MediaContentBlockSvgDaoImpl(
      {required this.id,
      @JsonKey(name: 'story') required this.parentId,
      required this.image,
      @JsonKey(name: 'sort_id') required this.sortId,
      final String? $type})
      : $type = $type ?? 'svg';

  factory _$MediaContentBlockSvgDaoImpl.fromJson(Map<String, dynamic> json) =>
      _$$MediaContentBlockSvgDaoImplFromJson(json);

  @override
  final String id;
  @override
  @JsonKey(name: 'story')
  final String parentId;
  @override
  final String image;
  @override
  @JsonKey(name: 'sort_id')
  final int sortId;

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'MediaContentBlockDao.svg(id: $id, parentId: $parentId, image: $image, sortId: $sortId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MediaContentBlockSvgDaoImpl &&
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
  _$$MediaContentBlockSvgDaoImplCopyWith<_$MediaContentBlockSvgDaoImpl>
      get copyWith => __$$MediaContentBlockSvgDaoImplCopyWithImpl<
          _$MediaContentBlockSvgDaoImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String id,
            @JsonKey(name: 'story') String parentId,
            String title,
            @JsonKey(name: 'sort_id') int sortId)
        title,
    required TResult Function(
            String id,
            @JsonKey(name: 'story') String parentId,
            String subtitle,
            @JsonKey(name: 'sort_id') int sortId)
        subtitle,
    required TResult Function(
            String id,
            @JsonKey(name: 'story') String parentId,
            String subtitle,
            @JsonKey(name: 'sort_id') int sortId)
        markedSubtitle,
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
            @JsonKey(name: 'story') String parentId,
            String image,
            @JsonKey(name: 'sort_id') int sortId)
        svg,
    required TResult Function(
            String id,
            @JsonKey(name: 'story') String parentId,
            String link,
            @JsonKey(name: 'button_title') String title,
            @JsonKey(name: 'sort_id') int sortId)
        linkButton,
    required TResult Function(
            String id,
            @JsonKey(name: 'story') String parentId,
            MediaPlatformDao media,
            String link,
            @JsonKey(name: 'sort_id') int sortId)
        subscribeButton,
    required TResult Function(
            String id,
            @JsonKey(name: 'story') String parentId,
            MediaContentBlockDao child,
            @JsonKey(name: 'sort_id') int sortId)
        group,
    required TResult Function(
            String id,
            List<MediaContentBlockDao> blocks,
            @JsonKey(name: 'story') String parentId,
            @JsonKey(name: 'sort_id') int sortId)
        numberedList,
    required TResult Function(
            String id,
            List<MediaContentBlockDao> blocks,
            @JsonKey(name: 'story') String parentId,
            @JsonKey(name: 'sort_id') int sortId)
        list,
    required TResult Function(
            String id,
            @JsonKey(name: 'story') String parentId,
            String question,
            @JsonKey(name: 'sort_id') int sortId)
        rateDialog,
    required TResult Function(
            String id,
            @JsonKey(name: 'group') String parentId,
            @JsonKey(name: 'sort_id') int sortId)
        appeal,
    required TResult Function(
            String id,
            @JsonKey(name: 'group') String parentId,
            @JsonKey(name: 'sort_id') int sortId)
        signature,
  }) {
    return svg(id, parentId, this.image, sortId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id, @JsonKey(name: 'story') String parentId,
            String title, @JsonKey(name: 'sort_id') int sortId)?
        title,
    TResult? Function(String id, @JsonKey(name: 'story') String parentId,
            String subtitle, @JsonKey(name: 'sort_id') int sortId)?
        subtitle,
    TResult? Function(String id, @JsonKey(name: 'story') String parentId,
            String subtitle, @JsonKey(name: 'sort_id') int sortId)?
        markedSubtitle,
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
    TResult? Function(String id, @JsonKey(name: 'story') String parentId,
            String image, @JsonKey(name: 'sort_id') int sortId)?
        svg,
    TResult? Function(
            String id,
            @JsonKey(name: 'story') String parentId,
            String link,
            @JsonKey(name: 'button_title') String title,
            @JsonKey(name: 'sort_id') int sortId)?
        linkButton,
    TResult? Function(
            String id,
            @JsonKey(name: 'story') String parentId,
            MediaPlatformDao media,
            String link,
            @JsonKey(name: 'sort_id') int sortId)?
        subscribeButton,
    TResult? Function(String id, @JsonKey(name: 'story') String parentId,
            MediaContentBlockDao child, @JsonKey(name: 'sort_id') int sortId)?
        group,
    TResult? Function(
            String id,
            List<MediaContentBlockDao> blocks,
            @JsonKey(name: 'story') String parentId,
            @JsonKey(name: 'sort_id') int sortId)?
        numberedList,
    TResult? Function(
            String id,
            List<MediaContentBlockDao> blocks,
            @JsonKey(name: 'story') String parentId,
            @JsonKey(name: 'sort_id') int sortId)?
        list,
    TResult? Function(String id, @JsonKey(name: 'story') String parentId,
            String question, @JsonKey(name: 'sort_id') int sortId)?
        rateDialog,
    TResult? Function(String id, @JsonKey(name: 'group') String parentId,
            @JsonKey(name: 'sort_id') int sortId)?
        appeal,
    TResult? Function(String id, @JsonKey(name: 'group') String parentId,
            @JsonKey(name: 'sort_id') int sortId)?
        signature,
  }) {
    return svg?.call(id, parentId, this.image, sortId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id, @JsonKey(name: 'story') String parentId,
            String title, @JsonKey(name: 'sort_id') int sortId)?
        title,
    TResult Function(String id, @JsonKey(name: 'story') String parentId,
            String subtitle, @JsonKey(name: 'sort_id') int sortId)?
        subtitle,
    TResult Function(String id, @JsonKey(name: 'story') String parentId,
            String subtitle, @JsonKey(name: 'sort_id') int sortId)?
        markedSubtitle,
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
    TResult Function(String id, @JsonKey(name: 'story') String parentId,
            String image, @JsonKey(name: 'sort_id') int sortId)?
        svg,
    TResult Function(
            String id,
            @JsonKey(name: 'story') String parentId,
            String link,
            @JsonKey(name: 'button_title') String title,
            @JsonKey(name: 'sort_id') int sortId)?
        linkButton,
    TResult Function(
            String id,
            @JsonKey(name: 'story') String parentId,
            MediaPlatformDao media,
            String link,
            @JsonKey(name: 'sort_id') int sortId)?
        subscribeButton,
    TResult Function(String id, @JsonKey(name: 'story') String parentId,
            MediaContentBlockDao child, @JsonKey(name: 'sort_id') int sortId)?
        group,
    TResult Function(
            String id,
            List<MediaContentBlockDao> blocks,
            @JsonKey(name: 'story') String parentId,
            @JsonKey(name: 'sort_id') int sortId)?
        numberedList,
    TResult Function(
            String id,
            List<MediaContentBlockDao> blocks,
            @JsonKey(name: 'story') String parentId,
            @JsonKey(name: 'sort_id') int sortId)?
        list,
    TResult Function(String id, @JsonKey(name: 'story') String parentId,
            String question, @JsonKey(name: 'sort_id') int sortId)?
        rateDialog,
    TResult Function(String id, @JsonKey(name: 'group') String parentId,
            @JsonKey(name: 'sort_id') int sortId)?
        appeal,
    TResult Function(String id, @JsonKey(name: 'group') String parentId,
            @JsonKey(name: 'sort_id') int sortId)?
        signature,
    required TResult orElse(),
  }) {
    if (svg != null) {
      return svg(id, parentId, this.image, sortId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MediaContentBlockTitleDao value) title,
    required TResult Function(MediaContentBlockSubtitleDao value) subtitle,
    required TResult Function(MediaContentBlockMarkedSubtitleDao value)
        markedSubtitle,
    required TResult Function(MediaContentBlockTextFieldDao value) textField,
    required TResult Function(MediaContentBlockImageDao value) image,
    required TResult Function(MediaContentBlockSvgDao value) svg,
    required TResult Function(MediaContentBlockLinkButtonDao value) linkButton,
    required TResult Function(MediaContentBlockSubscribeButtonDao value)
        subscribeButton,
    required TResult Function(MediaContentBlockGroupDao value) group,
    required TResult Function(MediaContentBlockNumberedListDao value)
        numberedList,
    required TResult Function(MediaContentBlockListDao value) list,
    required TResult Function(MediaContentBlockRateDialogDao value) rateDialog,
    required TResult Function(MediaContentBlockAppealDao value) appeal,
    required TResult Function(MediaContentBlockSignatureDao value) signature,
  }) {
    return svg(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MediaContentBlockTitleDao value)? title,
    TResult? Function(MediaContentBlockSubtitleDao value)? subtitle,
    TResult? Function(MediaContentBlockMarkedSubtitleDao value)? markedSubtitle,
    TResult? Function(MediaContentBlockTextFieldDao value)? textField,
    TResult? Function(MediaContentBlockImageDao value)? image,
    TResult? Function(MediaContentBlockSvgDao value)? svg,
    TResult? Function(MediaContentBlockLinkButtonDao value)? linkButton,
    TResult? Function(MediaContentBlockSubscribeButtonDao value)?
        subscribeButton,
    TResult? Function(MediaContentBlockGroupDao value)? group,
    TResult? Function(MediaContentBlockNumberedListDao value)? numberedList,
    TResult? Function(MediaContentBlockListDao value)? list,
    TResult? Function(MediaContentBlockRateDialogDao value)? rateDialog,
    TResult? Function(MediaContentBlockAppealDao value)? appeal,
    TResult? Function(MediaContentBlockSignatureDao value)? signature,
  }) {
    return svg?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MediaContentBlockTitleDao value)? title,
    TResult Function(MediaContentBlockSubtitleDao value)? subtitle,
    TResult Function(MediaContentBlockMarkedSubtitleDao value)? markedSubtitle,
    TResult Function(MediaContentBlockTextFieldDao value)? textField,
    TResult Function(MediaContentBlockImageDao value)? image,
    TResult Function(MediaContentBlockSvgDao value)? svg,
    TResult Function(MediaContentBlockLinkButtonDao value)? linkButton,
    TResult Function(MediaContentBlockSubscribeButtonDao value)?
        subscribeButton,
    TResult Function(MediaContentBlockGroupDao value)? group,
    TResult Function(MediaContentBlockNumberedListDao value)? numberedList,
    TResult Function(MediaContentBlockListDao value)? list,
    TResult Function(MediaContentBlockRateDialogDao value)? rateDialog,
    TResult Function(MediaContentBlockAppealDao value)? appeal,
    TResult Function(MediaContentBlockSignatureDao value)? signature,
    required TResult orElse(),
  }) {
    if (svg != null) {
      return svg(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$MediaContentBlockSvgDaoImplToJson(
      this,
    );
  }
}

abstract class MediaContentBlockSvgDao implements MediaContentBlockDao {
  const factory MediaContentBlockSvgDao(
          {required final String id,
          @JsonKey(name: 'story') required final String parentId,
          required final String image,
          @JsonKey(name: 'sort_id') required final int sortId}) =
      _$MediaContentBlockSvgDaoImpl;

  factory MediaContentBlockSvgDao.fromJson(Map<String, dynamic> json) =
      _$MediaContentBlockSvgDaoImpl.fromJson;

  @override
  String get id;
  @override
  @JsonKey(name: 'story')
  String get parentId;
  String get image;
  @override
  @JsonKey(name: 'sort_id')
  int get sortId;
  @override
  @JsonKey(ignore: true)
  _$$MediaContentBlockSvgDaoImplCopyWith<_$MediaContentBlockSvgDaoImpl>
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
      @JsonKey(name: 'story') String parentId,
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
      @JsonKey(name: 'story') required this.parentId,
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
  @JsonKey(name: 'story')
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
            @JsonKey(name: 'story') String parentId,
            String title,
            @JsonKey(name: 'sort_id') int sortId)
        title,
    required TResult Function(
            String id,
            @JsonKey(name: 'story') String parentId,
            String subtitle,
            @JsonKey(name: 'sort_id') int sortId)
        subtitle,
    required TResult Function(
            String id,
            @JsonKey(name: 'story') String parentId,
            String subtitle,
            @JsonKey(name: 'sort_id') int sortId)
        markedSubtitle,
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
            @JsonKey(name: 'story') String parentId,
            String image,
            @JsonKey(name: 'sort_id') int sortId)
        svg,
    required TResult Function(
            String id,
            @JsonKey(name: 'story') String parentId,
            String link,
            @JsonKey(name: 'button_title') String title,
            @JsonKey(name: 'sort_id') int sortId)
        linkButton,
    required TResult Function(
            String id,
            @JsonKey(name: 'story') String parentId,
            MediaPlatformDao media,
            String link,
            @JsonKey(name: 'sort_id') int sortId)
        subscribeButton,
    required TResult Function(
            String id,
            @JsonKey(name: 'story') String parentId,
            MediaContentBlockDao child,
            @JsonKey(name: 'sort_id') int sortId)
        group,
    required TResult Function(
            String id,
            List<MediaContentBlockDao> blocks,
            @JsonKey(name: 'story') String parentId,
            @JsonKey(name: 'sort_id') int sortId)
        numberedList,
    required TResult Function(
            String id,
            List<MediaContentBlockDao> blocks,
            @JsonKey(name: 'story') String parentId,
            @JsonKey(name: 'sort_id') int sortId)
        list,
    required TResult Function(
            String id,
            @JsonKey(name: 'story') String parentId,
            String question,
            @JsonKey(name: 'sort_id') int sortId)
        rateDialog,
    required TResult Function(
            String id,
            @JsonKey(name: 'group') String parentId,
            @JsonKey(name: 'sort_id') int sortId)
        appeal,
    required TResult Function(
            String id,
            @JsonKey(name: 'group') String parentId,
            @JsonKey(name: 'sort_id') int sortId)
        signature,
  }) {
    return linkButton(id, parentId, link, this.title, sortId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id, @JsonKey(name: 'story') String parentId,
            String title, @JsonKey(name: 'sort_id') int sortId)?
        title,
    TResult? Function(String id, @JsonKey(name: 'story') String parentId,
            String subtitle, @JsonKey(name: 'sort_id') int sortId)?
        subtitle,
    TResult? Function(String id, @JsonKey(name: 'story') String parentId,
            String subtitle, @JsonKey(name: 'sort_id') int sortId)?
        markedSubtitle,
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
    TResult? Function(String id, @JsonKey(name: 'story') String parentId,
            String image, @JsonKey(name: 'sort_id') int sortId)?
        svg,
    TResult? Function(
            String id,
            @JsonKey(name: 'story') String parentId,
            String link,
            @JsonKey(name: 'button_title') String title,
            @JsonKey(name: 'sort_id') int sortId)?
        linkButton,
    TResult? Function(
            String id,
            @JsonKey(name: 'story') String parentId,
            MediaPlatformDao media,
            String link,
            @JsonKey(name: 'sort_id') int sortId)?
        subscribeButton,
    TResult? Function(String id, @JsonKey(name: 'story') String parentId,
            MediaContentBlockDao child, @JsonKey(name: 'sort_id') int sortId)?
        group,
    TResult? Function(
            String id,
            List<MediaContentBlockDao> blocks,
            @JsonKey(name: 'story') String parentId,
            @JsonKey(name: 'sort_id') int sortId)?
        numberedList,
    TResult? Function(
            String id,
            List<MediaContentBlockDao> blocks,
            @JsonKey(name: 'story') String parentId,
            @JsonKey(name: 'sort_id') int sortId)?
        list,
    TResult? Function(String id, @JsonKey(name: 'story') String parentId,
            String question, @JsonKey(name: 'sort_id') int sortId)?
        rateDialog,
    TResult? Function(String id, @JsonKey(name: 'group') String parentId,
            @JsonKey(name: 'sort_id') int sortId)?
        appeal,
    TResult? Function(String id, @JsonKey(name: 'group') String parentId,
            @JsonKey(name: 'sort_id') int sortId)?
        signature,
  }) {
    return linkButton?.call(id, parentId, link, this.title, sortId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id, @JsonKey(name: 'story') String parentId,
            String title, @JsonKey(name: 'sort_id') int sortId)?
        title,
    TResult Function(String id, @JsonKey(name: 'story') String parentId,
            String subtitle, @JsonKey(name: 'sort_id') int sortId)?
        subtitle,
    TResult Function(String id, @JsonKey(name: 'story') String parentId,
            String subtitle, @JsonKey(name: 'sort_id') int sortId)?
        markedSubtitle,
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
    TResult Function(String id, @JsonKey(name: 'story') String parentId,
            String image, @JsonKey(name: 'sort_id') int sortId)?
        svg,
    TResult Function(
            String id,
            @JsonKey(name: 'story') String parentId,
            String link,
            @JsonKey(name: 'button_title') String title,
            @JsonKey(name: 'sort_id') int sortId)?
        linkButton,
    TResult Function(
            String id,
            @JsonKey(name: 'story') String parentId,
            MediaPlatformDao media,
            String link,
            @JsonKey(name: 'sort_id') int sortId)?
        subscribeButton,
    TResult Function(String id, @JsonKey(name: 'story') String parentId,
            MediaContentBlockDao child, @JsonKey(name: 'sort_id') int sortId)?
        group,
    TResult Function(
            String id,
            List<MediaContentBlockDao> blocks,
            @JsonKey(name: 'story') String parentId,
            @JsonKey(name: 'sort_id') int sortId)?
        numberedList,
    TResult Function(
            String id,
            List<MediaContentBlockDao> blocks,
            @JsonKey(name: 'story') String parentId,
            @JsonKey(name: 'sort_id') int sortId)?
        list,
    TResult Function(String id, @JsonKey(name: 'story') String parentId,
            String question, @JsonKey(name: 'sort_id') int sortId)?
        rateDialog,
    TResult Function(String id, @JsonKey(name: 'group') String parentId,
            @JsonKey(name: 'sort_id') int sortId)?
        appeal,
    TResult Function(String id, @JsonKey(name: 'group') String parentId,
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
    required TResult Function(MediaContentBlockSubtitleDao value) subtitle,
    required TResult Function(MediaContentBlockMarkedSubtitleDao value)
        markedSubtitle,
    required TResult Function(MediaContentBlockTextFieldDao value) textField,
    required TResult Function(MediaContentBlockImageDao value) image,
    required TResult Function(MediaContentBlockSvgDao value) svg,
    required TResult Function(MediaContentBlockLinkButtonDao value) linkButton,
    required TResult Function(MediaContentBlockSubscribeButtonDao value)
        subscribeButton,
    required TResult Function(MediaContentBlockGroupDao value) group,
    required TResult Function(MediaContentBlockNumberedListDao value)
        numberedList,
    required TResult Function(MediaContentBlockListDao value) list,
    required TResult Function(MediaContentBlockRateDialogDao value) rateDialog,
    required TResult Function(MediaContentBlockAppealDao value) appeal,
    required TResult Function(MediaContentBlockSignatureDao value) signature,
  }) {
    return linkButton(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MediaContentBlockTitleDao value)? title,
    TResult? Function(MediaContentBlockSubtitleDao value)? subtitle,
    TResult? Function(MediaContentBlockMarkedSubtitleDao value)? markedSubtitle,
    TResult? Function(MediaContentBlockTextFieldDao value)? textField,
    TResult? Function(MediaContentBlockImageDao value)? image,
    TResult? Function(MediaContentBlockSvgDao value)? svg,
    TResult? Function(MediaContentBlockLinkButtonDao value)? linkButton,
    TResult? Function(MediaContentBlockSubscribeButtonDao value)?
        subscribeButton,
    TResult? Function(MediaContentBlockGroupDao value)? group,
    TResult? Function(MediaContentBlockNumberedListDao value)? numberedList,
    TResult? Function(MediaContentBlockListDao value)? list,
    TResult? Function(MediaContentBlockRateDialogDao value)? rateDialog,
    TResult? Function(MediaContentBlockAppealDao value)? appeal,
    TResult? Function(MediaContentBlockSignatureDao value)? signature,
  }) {
    return linkButton?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MediaContentBlockTitleDao value)? title,
    TResult Function(MediaContentBlockSubtitleDao value)? subtitle,
    TResult Function(MediaContentBlockMarkedSubtitleDao value)? markedSubtitle,
    TResult Function(MediaContentBlockTextFieldDao value)? textField,
    TResult Function(MediaContentBlockImageDao value)? image,
    TResult Function(MediaContentBlockSvgDao value)? svg,
    TResult Function(MediaContentBlockLinkButtonDao value)? linkButton,
    TResult Function(MediaContentBlockSubscribeButtonDao value)?
        subscribeButton,
    TResult Function(MediaContentBlockGroupDao value)? group,
    TResult Function(MediaContentBlockNumberedListDao value)? numberedList,
    TResult Function(MediaContentBlockListDao value)? list,
    TResult Function(MediaContentBlockRateDialogDao value)? rateDialog,
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
          @JsonKey(name: 'story') required final String parentId,
          required final String link,
          @JsonKey(name: 'button_title') required final String title,
          @JsonKey(name: 'sort_id') required final int sortId}) =
      _$MediaContentBlockLinkButtonDaoImpl;

  factory MediaContentBlockLinkButtonDao.fromJson(Map<String, dynamic> json) =
      _$MediaContentBlockLinkButtonDaoImpl.fromJson;

  @override
  String get id;
  @override
  @JsonKey(name: 'story')
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
abstract class _$$MediaContentBlockSubscribeButtonDaoImplCopyWith<$Res>
    implements $MediaContentBlockDaoCopyWith<$Res> {
  factory _$$MediaContentBlockSubscribeButtonDaoImplCopyWith(
          _$MediaContentBlockSubscribeButtonDaoImpl value,
          $Res Function(_$MediaContentBlockSubscribeButtonDaoImpl) then) =
      __$$MediaContentBlockSubscribeButtonDaoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      @JsonKey(name: 'story') String parentId,
      MediaPlatformDao media,
      String link,
      @JsonKey(name: 'sort_id') int sortId});
}

/// @nodoc
class __$$MediaContentBlockSubscribeButtonDaoImplCopyWithImpl<$Res>
    extends _$MediaContentBlockDaoCopyWithImpl<$Res,
        _$MediaContentBlockSubscribeButtonDaoImpl>
    implements _$$MediaContentBlockSubscribeButtonDaoImplCopyWith<$Res> {
  __$$MediaContentBlockSubscribeButtonDaoImplCopyWithImpl(
      _$MediaContentBlockSubscribeButtonDaoImpl _value,
      $Res Function(_$MediaContentBlockSubscribeButtonDaoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? parentId = null,
    Object? media = null,
    Object? link = null,
    Object? sortId = null,
  }) {
    return _then(_$MediaContentBlockSubscribeButtonDaoImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      parentId: null == parentId
          ? _value.parentId
          : parentId // ignore: cast_nullable_to_non_nullable
              as String,
      media: null == media
          ? _value.media
          : media // ignore: cast_nullable_to_non_nullable
              as MediaPlatformDao,
      link: null == link
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
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
class _$MediaContentBlockSubscribeButtonDaoImpl
    implements MediaContentBlockSubscribeButtonDao {
  const _$MediaContentBlockSubscribeButtonDaoImpl(
      {required this.id,
      @JsonKey(name: 'story') required this.parentId,
      required this.media,
      required this.link,
      @JsonKey(name: 'sort_id') required this.sortId,
      final String? $type})
      : $type = $type ?? 'subscribe_button';

  factory _$MediaContentBlockSubscribeButtonDaoImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$MediaContentBlockSubscribeButtonDaoImplFromJson(json);

  @override
  final String id;
  @override
  @JsonKey(name: 'story')
  final String parentId;
  @override
  final MediaPlatformDao media;
  @override
  final String link;
  @override
  @JsonKey(name: 'sort_id')
  final int sortId;

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'MediaContentBlockDao.subscribeButton(id: $id, parentId: $parentId, media: $media, link: $link, sortId: $sortId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MediaContentBlockSubscribeButtonDaoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.parentId, parentId) ||
                other.parentId == parentId) &&
            (identical(other.media, media) || other.media == media) &&
            (identical(other.link, link) || other.link == link) &&
            (identical(other.sortId, sortId) || other.sortId == sortId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, parentId, media, link, sortId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MediaContentBlockSubscribeButtonDaoImplCopyWith<
          _$MediaContentBlockSubscribeButtonDaoImpl>
      get copyWith => __$$MediaContentBlockSubscribeButtonDaoImplCopyWithImpl<
          _$MediaContentBlockSubscribeButtonDaoImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String id,
            @JsonKey(name: 'story') String parentId,
            String title,
            @JsonKey(name: 'sort_id') int sortId)
        title,
    required TResult Function(
            String id,
            @JsonKey(name: 'story') String parentId,
            String subtitle,
            @JsonKey(name: 'sort_id') int sortId)
        subtitle,
    required TResult Function(
            String id,
            @JsonKey(name: 'story') String parentId,
            String subtitle,
            @JsonKey(name: 'sort_id') int sortId)
        markedSubtitle,
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
            @JsonKey(name: 'story') String parentId,
            String image,
            @JsonKey(name: 'sort_id') int sortId)
        svg,
    required TResult Function(
            String id,
            @JsonKey(name: 'story') String parentId,
            String link,
            @JsonKey(name: 'button_title') String title,
            @JsonKey(name: 'sort_id') int sortId)
        linkButton,
    required TResult Function(
            String id,
            @JsonKey(name: 'story') String parentId,
            MediaPlatformDao media,
            String link,
            @JsonKey(name: 'sort_id') int sortId)
        subscribeButton,
    required TResult Function(
            String id,
            @JsonKey(name: 'story') String parentId,
            MediaContentBlockDao child,
            @JsonKey(name: 'sort_id') int sortId)
        group,
    required TResult Function(
            String id,
            List<MediaContentBlockDao> blocks,
            @JsonKey(name: 'story') String parentId,
            @JsonKey(name: 'sort_id') int sortId)
        numberedList,
    required TResult Function(
            String id,
            List<MediaContentBlockDao> blocks,
            @JsonKey(name: 'story') String parentId,
            @JsonKey(name: 'sort_id') int sortId)
        list,
    required TResult Function(
            String id,
            @JsonKey(name: 'story') String parentId,
            String question,
            @JsonKey(name: 'sort_id') int sortId)
        rateDialog,
    required TResult Function(
            String id,
            @JsonKey(name: 'group') String parentId,
            @JsonKey(name: 'sort_id') int sortId)
        appeal,
    required TResult Function(
            String id,
            @JsonKey(name: 'group') String parentId,
            @JsonKey(name: 'sort_id') int sortId)
        signature,
  }) {
    return subscribeButton(id, parentId, media, link, sortId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id, @JsonKey(name: 'story') String parentId,
            String title, @JsonKey(name: 'sort_id') int sortId)?
        title,
    TResult? Function(String id, @JsonKey(name: 'story') String parentId,
            String subtitle, @JsonKey(name: 'sort_id') int sortId)?
        subtitle,
    TResult? Function(String id, @JsonKey(name: 'story') String parentId,
            String subtitle, @JsonKey(name: 'sort_id') int sortId)?
        markedSubtitle,
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
    TResult? Function(String id, @JsonKey(name: 'story') String parentId,
            String image, @JsonKey(name: 'sort_id') int sortId)?
        svg,
    TResult? Function(
            String id,
            @JsonKey(name: 'story') String parentId,
            String link,
            @JsonKey(name: 'button_title') String title,
            @JsonKey(name: 'sort_id') int sortId)?
        linkButton,
    TResult? Function(
            String id,
            @JsonKey(name: 'story') String parentId,
            MediaPlatformDao media,
            String link,
            @JsonKey(name: 'sort_id') int sortId)?
        subscribeButton,
    TResult? Function(String id, @JsonKey(name: 'story') String parentId,
            MediaContentBlockDao child, @JsonKey(name: 'sort_id') int sortId)?
        group,
    TResult? Function(
            String id,
            List<MediaContentBlockDao> blocks,
            @JsonKey(name: 'story') String parentId,
            @JsonKey(name: 'sort_id') int sortId)?
        numberedList,
    TResult? Function(
            String id,
            List<MediaContentBlockDao> blocks,
            @JsonKey(name: 'story') String parentId,
            @JsonKey(name: 'sort_id') int sortId)?
        list,
    TResult? Function(String id, @JsonKey(name: 'story') String parentId,
            String question, @JsonKey(name: 'sort_id') int sortId)?
        rateDialog,
    TResult? Function(String id, @JsonKey(name: 'group') String parentId,
            @JsonKey(name: 'sort_id') int sortId)?
        appeal,
    TResult? Function(String id, @JsonKey(name: 'group') String parentId,
            @JsonKey(name: 'sort_id') int sortId)?
        signature,
  }) {
    return subscribeButton?.call(id, parentId, media, link, sortId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id, @JsonKey(name: 'story') String parentId,
            String title, @JsonKey(name: 'sort_id') int sortId)?
        title,
    TResult Function(String id, @JsonKey(name: 'story') String parentId,
            String subtitle, @JsonKey(name: 'sort_id') int sortId)?
        subtitle,
    TResult Function(String id, @JsonKey(name: 'story') String parentId,
            String subtitle, @JsonKey(name: 'sort_id') int sortId)?
        markedSubtitle,
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
    TResult Function(String id, @JsonKey(name: 'story') String parentId,
            String image, @JsonKey(name: 'sort_id') int sortId)?
        svg,
    TResult Function(
            String id,
            @JsonKey(name: 'story') String parentId,
            String link,
            @JsonKey(name: 'button_title') String title,
            @JsonKey(name: 'sort_id') int sortId)?
        linkButton,
    TResult Function(
            String id,
            @JsonKey(name: 'story') String parentId,
            MediaPlatformDao media,
            String link,
            @JsonKey(name: 'sort_id') int sortId)?
        subscribeButton,
    TResult Function(String id, @JsonKey(name: 'story') String parentId,
            MediaContentBlockDao child, @JsonKey(name: 'sort_id') int sortId)?
        group,
    TResult Function(
            String id,
            List<MediaContentBlockDao> blocks,
            @JsonKey(name: 'story') String parentId,
            @JsonKey(name: 'sort_id') int sortId)?
        numberedList,
    TResult Function(
            String id,
            List<MediaContentBlockDao> blocks,
            @JsonKey(name: 'story') String parentId,
            @JsonKey(name: 'sort_id') int sortId)?
        list,
    TResult Function(String id, @JsonKey(name: 'story') String parentId,
            String question, @JsonKey(name: 'sort_id') int sortId)?
        rateDialog,
    TResult Function(String id, @JsonKey(name: 'group') String parentId,
            @JsonKey(name: 'sort_id') int sortId)?
        appeal,
    TResult Function(String id, @JsonKey(name: 'group') String parentId,
            @JsonKey(name: 'sort_id') int sortId)?
        signature,
    required TResult orElse(),
  }) {
    if (subscribeButton != null) {
      return subscribeButton(id, parentId, media, link, sortId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MediaContentBlockTitleDao value) title,
    required TResult Function(MediaContentBlockSubtitleDao value) subtitle,
    required TResult Function(MediaContentBlockMarkedSubtitleDao value)
        markedSubtitle,
    required TResult Function(MediaContentBlockTextFieldDao value) textField,
    required TResult Function(MediaContentBlockImageDao value) image,
    required TResult Function(MediaContentBlockSvgDao value) svg,
    required TResult Function(MediaContentBlockLinkButtonDao value) linkButton,
    required TResult Function(MediaContentBlockSubscribeButtonDao value)
        subscribeButton,
    required TResult Function(MediaContentBlockGroupDao value) group,
    required TResult Function(MediaContentBlockNumberedListDao value)
        numberedList,
    required TResult Function(MediaContentBlockListDao value) list,
    required TResult Function(MediaContentBlockRateDialogDao value) rateDialog,
    required TResult Function(MediaContentBlockAppealDao value) appeal,
    required TResult Function(MediaContentBlockSignatureDao value) signature,
  }) {
    return subscribeButton(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MediaContentBlockTitleDao value)? title,
    TResult? Function(MediaContentBlockSubtitleDao value)? subtitle,
    TResult? Function(MediaContentBlockMarkedSubtitleDao value)? markedSubtitle,
    TResult? Function(MediaContentBlockTextFieldDao value)? textField,
    TResult? Function(MediaContentBlockImageDao value)? image,
    TResult? Function(MediaContentBlockSvgDao value)? svg,
    TResult? Function(MediaContentBlockLinkButtonDao value)? linkButton,
    TResult? Function(MediaContentBlockSubscribeButtonDao value)?
        subscribeButton,
    TResult? Function(MediaContentBlockGroupDao value)? group,
    TResult? Function(MediaContentBlockNumberedListDao value)? numberedList,
    TResult? Function(MediaContentBlockListDao value)? list,
    TResult? Function(MediaContentBlockRateDialogDao value)? rateDialog,
    TResult? Function(MediaContentBlockAppealDao value)? appeal,
    TResult? Function(MediaContentBlockSignatureDao value)? signature,
  }) {
    return subscribeButton?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MediaContentBlockTitleDao value)? title,
    TResult Function(MediaContentBlockSubtitleDao value)? subtitle,
    TResult Function(MediaContentBlockMarkedSubtitleDao value)? markedSubtitle,
    TResult Function(MediaContentBlockTextFieldDao value)? textField,
    TResult Function(MediaContentBlockImageDao value)? image,
    TResult Function(MediaContentBlockSvgDao value)? svg,
    TResult Function(MediaContentBlockLinkButtonDao value)? linkButton,
    TResult Function(MediaContentBlockSubscribeButtonDao value)?
        subscribeButton,
    TResult Function(MediaContentBlockGroupDao value)? group,
    TResult Function(MediaContentBlockNumberedListDao value)? numberedList,
    TResult Function(MediaContentBlockListDao value)? list,
    TResult Function(MediaContentBlockRateDialogDao value)? rateDialog,
    TResult Function(MediaContentBlockAppealDao value)? appeal,
    TResult Function(MediaContentBlockSignatureDao value)? signature,
    required TResult orElse(),
  }) {
    if (subscribeButton != null) {
      return subscribeButton(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$MediaContentBlockSubscribeButtonDaoImplToJson(
      this,
    );
  }
}

abstract class MediaContentBlockSubscribeButtonDao
    implements MediaContentBlockDao {
  const factory MediaContentBlockSubscribeButtonDao(
          {required final String id,
          @JsonKey(name: 'story') required final String parentId,
          required final MediaPlatformDao media,
          required final String link,
          @JsonKey(name: 'sort_id') required final int sortId}) =
      _$MediaContentBlockSubscribeButtonDaoImpl;

  factory MediaContentBlockSubscribeButtonDao.fromJson(
          Map<String, dynamic> json) =
      _$MediaContentBlockSubscribeButtonDaoImpl.fromJson;

  @override
  String get id;
  @override
  @JsonKey(name: 'story')
  String get parentId;
  MediaPlatformDao get media;
  String get link;
  @override
  @JsonKey(name: 'sort_id')
  int get sortId;
  @override
  @JsonKey(ignore: true)
  _$$MediaContentBlockSubscribeButtonDaoImplCopyWith<
          _$MediaContentBlockSubscribeButtonDaoImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MediaContentBlockGroupDaoImplCopyWith<$Res>
    implements $MediaContentBlockDaoCopyWith<$Res> {
  factory _$$MediaContentBlockGroupDaoImplCopyWith(
          _$MediaContentBlockGroupDaoImpl value,
          $Res Function(_$MediaContentBlockGroupDaoImpl) then) =
      __$$MediaContentBlockGroupDaoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      @JsonKey(name: 'story') String parentId,
      MediaContentBlockDao child,
      @JsonKey(name: 'sort_id') int sortId});

  $MediaContentBlockDaoCopyWith<$Res> get child;
}

/// @nodoc
class __$$MediaContentBlockGroupDaoImplCopyWithImpl<$Res>
    extends _$MediaContentBlockDaoCopyWithImpl<$Res,
        _$MediaContentBlockGroupDaoImpl>
    implements _$$MediaContentBlockGroupDaoImplCopyWith<$Res> {
  __$$MediaContentBlockGroupDaoImplCopyWithImpl(
      _$MediaContentBlockGroupDaoImpl _value,
      $Res Function(_$MediaContentBlockGroupDaoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? parentId = null,
    Object? child = null,
    Object? sortId = null,
  }) {
    return _then(_$MediaContentBlockGroupDaoImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      parentId: null == parentId
          ? _value.parentId
          : parentId // ignore: cast_nullable_to_non_nullable
              as String,
      child: null == child
          ? _value.child
          : child // ignore: cast_nullable_to_non_nullable
              as MediaContentBlockDao,
      sortId: null == sortId
          ? _value.sortId
          : sortId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $MediaContentBlockDaoCopyWith<$Res> get child {
    return $MediaContentBlockDaoCopyWith<$Res>(_value.child, (value) {
      return _then(_value.copyWith(child: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$MediaContentBlockGroupDaoImpl implements MediaContentBlockGroupDao {
  const _$MediaContentBlockGroupDaoImpl(
      {required this.id,
      @JsonKey(name: 'story') required this.parentId,
      required this.child,
      @JsonKey(name: 'sort_id') required this.sortId,
      final String? $type})
      : $type = $type ?? 'group';

  factory _$MediaContentBlockGroupDaoImpl.fromJson(Map<String, dynamic> json) =>
      _$$MediaContentBlockGroupDaoImplFromJson(json);

  @override
  final String id;
  @override
  @JsonKey(name: 'story')
  final String parentId;
  @override
  final MediaContentBlockDao child;
  @override
  @JsonKey(name: 'sort_id')
  final int sortId;

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'MediaContentBlockDao.group(id: $id, parentId: $parentId, child: $child, sortId: $sortId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MediaContentBlockGroupDaoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.parentId, parentId) ||
                other.parentId == parentId) &&
            (identical(other.child, child) || other.child == child) &&
            (identical(other.sortId, sortId) || other.sortId == sortId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, parentId, child, sortId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MediaContentBlockGroupDaoImplCopyWith<_$MediaContentBlockGroupDaoImpl>
      get copyWith => __$$MediaContentBlockGroupDaoImplCopyWithImpl<
          _$MediaContentBlockGroupDaoImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String id,
            @JsonKey(name: 'story') String parentId,
            String title,
            @JsonKey(name: 'sort_id') int sortId)
        title,
    required TResult Function(
            String id,
            @JsonKey(name: 'story') String parentId,
            String subtitle,
            @JsonKey(name: 'sort_id') int sortId)
        subtitle,
    required TResult Function(
            String id,
            @JsonKey(name: 'story') String parentId,
            String subtitle,
            @JsonKey(name: 'sort_id') int sortId)
        markedSubtitle,
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
            @JsonKey(name: 'story') String parentId,
            String image,
            @JsonKey(name: 'sort_id') int sortId)
        svg,
    required TResult Function(
            String id,
            @JsonKey(name: 'story') String parentId,
            String link,
            @JsonKey(name: 'button_title') String title,
            @JsonKey(name: 'sort_id') int sortId)
        linkButton,
    required TResult Function(
            String id,
            @JsonKey(name: 'story') String parentId,
            MediaPlatformDao media,
            String link,
            @JsonKey(name: 'sort_id') int sortId)
        subscribeButton,
    required TResult Function(
            String id,
            @JsonKey(name: 'story') String parentId,
            MediaContentBlockDao child,
            @JsonKey(name: 'sort_id') int sortId)
        group,
    required TResult Function(
            String id,
            List<MediaContentBlockDao> blocks,
            @JsonKey(name: 'story') String parentId,
            @JsonKey(name: 'sort_id') int sortId)
        numberedList,
    required TResult Function(
            String id,
            List<MediaContentBlockDao> blocks,
            @JsonKey(name: 'story') String parentId,
            @JsonKey(name: 'sort_id') int sortId)
        list,
    required TResult Function(
            String id,
            @JsonKey(name: 'story') String parentId,
            String question,
            @JsonKey(name: 'sort_id') int sortId)
        rateDialog,
    required TResult Function(
            String id,
            @JsonKey(name: 'group') String parentId,
            @JsonKey(name: 'sort_id') int sortId)
        appeal,
    required TResult Function(
            String id,
            @JsonKey(name: 'group') String parentId,
            @JsonKey(name: 'sort_id') int sortId)
        signature,
  }) {
    return group(id, parentId, child, sortId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id, @JsonKey(name: 'story') String parentId,
            String title, @JsonKey(name: 'sort_id') int sortId)?
        title,
    TResult? Function(String id, @JsonKey(name: 'story') String parentId,
            String subtitle, @JsonKey(name: 'sort_id') int sortId)?
        subtitle,
    TResult? Function(String id, @JsonKey(name: 'story') String parentId,
            String subtitle, @JsonKey(name: 'sort_id') int sortId)?
        markedSubtitle,
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
    TResult? Function(String id, @JsonKey(name: 'story') String parentId,
            String image, @JsonKey(name: 'sort_id') int sortId)?
        svg,
    TResult? Function(
            String id,
            @JsonKey(name: 'story') String parentId,
            String link,
            @JsonKey(name: 'button_title') String title,
            @JsonKey(name: 'sort_id') int sortId)?
        linkButton,
    TResult? Function(
            String id,
            @JsonKey(name: 'story') String parentId,
            MediaPlatformDao media,
            String link,
            @JsonKey(name: 'sort_id') int sortId)?
        subscribeButton,
    TResult? Function(String id, @JsonKey(name: 'story') String parentId,
            MediaContentBlockDao child, @JsonKey(name: 'sort_id') int sortId)?
        group,
    TResult? Function(
            String id,
            List<MediaContentBlockDao> blocks,
            @JsonKey(name: 'story') String parentId,
            @JsonKey(name: 'sort_id') int sortId)?
        numberedList,
    TResult? Function(
            String id,
            List<MediaContentBlockDao> blocks,
            @JsonKey(name: 'story') String parentId,
            @JsonKey(name: 'sort_id') int sortId)?
        list,
    TResult? Function(String id, @JsonKey(name: 'story') String parentId,
            String question, @JsonKey(name: 'sort_id') int sortId)?
        rateDialog,
    TResult? Function(String id, @JsonKey(name: 'group') String parentId,
            @JsonKey(name: 'sort_id') int sortId)?
        appeal,
    TResult? Function(String id, @JsonKey(name: 'group') String parentId,
            @JsonKey(name: 'sort_id') int sortId)?
        signature,
  }) {
    return group?.call(id, parentId, child, sortId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id, @JsonKey(name: 'story') String parentId,
            String title, @JsonKey(name: 'sort_id') int sortId)?
        title,
    TResult Function(String id, @JsonKey(name: 'story') String parentId,
            String subtitle, @JsonKey(name: 'sort_id') int sortId)?
        subtitle,
    TResult Function(String id, @JsonKey(name: 'story') String parentId,
            String subtitle, @JsonKey(name: 'sort_id') int sortId)?
        markedSubtitle,
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
    TResult Function(String id, @JsonKey(name: 'story') String parentId,
            String image, @JsonKey(name: 'sort_id') int sortId)?
        svg,
    TResult Function(
            String id,
            @JsonKey(name: 'story') String parentId,
            String link,
            @JsonKey(name: 'button_title') String title,
            @JsonKey(name: 'sort_id') int sortId)?
        linkButton,
    TResult Function(
            String id,
            @JsonKey(name: 'story') String parentId,
            MediaPlatformDao media,
            String link,
            @JsonKey(name: 'sort_id') int sortId)?
        subscribeButton,
    TResult Function(String id, @JsonKey(name: 'story') String parentId,
            MediaContentBlockDao child, @JsonKey(name: 'sort_id') int sortId)?
        group,
    TResult Function(
            String id,
            List<MediaContentBlockDao> blocks,
            @JsonKey(name: 'story') String parentId,
            @JsonKey(name: 'sort_id') int sortId)?
        numberedList,
    TResult Function(
            String id,
            List<MediaContentBlockDao> blocks,
            @JsonKey(name: 'story') String parentId,
            @JsonKey(name: 'sort_id') int sortId)?
        list,
    TResult Function(String id, @JsonKey(name: 'story') String parentId,
            String question, @JsonKey(name: 'sort_id') int sortId)?
        rateDialog,
    TResult Function(String id, @JsonKey(name: 'group') String parentId,
            @JsonKey(name: 'sort_id') int sortId)?
        appeal,
    TResult Function(String id, @JsonKey(name: 'group') String parentId,
            @JsonKey(name: 'sort_id') int sortId)?
        signature,
    required TResult orElse(),
  }) {
    if (group != null) {
      return group(id, parentId, child, sortId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MediaContentBlockTitleDao value) title,
    required TResult Function(MediaContentBlockSubtitleDao value) subtitle,
    required TResult Function(MediaContentBlockMarkedSubtitleDao value)
        markedSubtitle,
    required TResult Function(MediaContentBlockTextFieldDao value) textField,
    required TResult Function(MediaContentBlockImageDao value) image,
    required TResult Function(MediaContentBlockSvgDao value) svg,
    required TResult Function(MediaContentBlockLinkButtonDao value) linkButton,
    required TResult Function(MediaContentBlockSubscribeButtonDao value)
        subscribeButton,
    required TResult Function(MediaContentBlockGroupDao value) group,
    required TResult Function(MediaContentBlockNumberedListDao value)
        numberedList,
    required TResult Function(MediaContentBlockListDao value) list,
    required TResult Function(MediaContentBlockRateDialogDao value) rateDialog,
    required TResult Function(MediaContentBlockAppealDao value) appeal,
    required TResult Function(MediaContentBlockSignatureDao value) signature,
  }) {
    return group(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MediaContentBlockTitleDao value)? title,
    TResult? Function(MediaContentBlockSubtitleDao value)? subtitle,
    TResult? Function(MediaContentBlockMarkedSubtitleDao value)? markedSubtitle,
    TResult? Function(MediaContentBlockTextFieldDao value)? textField,
    TResult? Function(MediaContentBlockImageDao value)? image,
    TResult? Function(MediaContentBlockSvgDao value)? svg,
    TResult? Function(MediaContentBlockLinkButtonDao value)? linkButton,
    TResult? Function(MediaContentBlockSubscribeButtonDao value)?
        subscribeButton,
    TResult? Function(MediaContentBlockGroupDao value)? group,
    TResult? Function(MediaContentBlockNumberedListDao value)? numberedList,
    TResult? Function(MediaContentBlockListDao value)? list,
    TResult? Function(MediaContentBlockRateDialogDao value)? rateDialog,
    TResult? Function(MediaContentBlockAppealDao value)? appeal,
    TResult? Function(MediaContentBlockSignatureDao value)? signature,
  }) {
    return group?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MediaContentBlockTitleDao value)? title,
    TResult Function(MediaContentBlockSubtitleDao value)? subtitle,
    TResult Function(MediaContentBlockMarkedSubtitleDao value)? markedSubtitle,
    TResult Function(MediaContentBlockTextFieldDao value)? textField,
    TResult Function(MediaContentBlockImageDao value)? image,
    TResult Function(MediaContentBlockSvgDao value)? svg,
    TResult Function(MediaContentBlockLinkButtonDao value)? linkButton,
    TResult Function(MediaContentBlockSubscribeButtonDao value)?
        subscribeButton,
    TResult Function(MediaContentBlockGroupDao value)? group,
    TResult Function(MediaContentBlockNumberedListDao value)? numberedList,
    TResult Function(MediaContentBlockListDao value)? list,
    TResult Function(MediaContentBlockRateDialogDao value)? rateDialog,
    TResult Function(MediaContentBlockAppealDao value)? appeal,
    TResult Function(MediaContentBlockSignatureDao value)? signature,
    required TResult orElse(),
  }) {
    if (group != null) {
      return group(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$MediaContentBlockGroupDaoImplToJson(
      this,
    );
  }
}

abstract class MediaContentBlockGroupDao implements MediaContentBlockDao {
  const factory MediaContentBlockGroupDao(
          {required final String id,
          @JsonKey(name: 'story') required final String parentId,
          required final MediaContentBlockDao child,
          @JsonKey(name: 'sort_id') required final int sortId}) =
      _$MediaContentBlockGroupDaoImpl;

  factory MediaContentBlockGroupDao.fromJson(Map<String, dynamic> json) =
      _$MediaContentBlockGroupDaoImpl.fromJson;

  @override
  String get id;
  @override
  @JsonKey(name: 'story')
  String get parentId;
  MediaContentBlockDao get child;
  @override
  @JsonKey(name: 'sort_id')
  int get sortId;
  @override
  @JsonKey(ignore: true)
  _$$MediaContentBlockGroupDaoImplCopyWith<_$MediaContentBlockGroupDaoImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MediaContentBlockNumberedListDaoImplCopyWith<$Res>
    implements $MediaContentBlockDaoCopyWith<$Res> {
  factory _$$MediaContentBlockNumberedListDaoImplCopyWith(
          _$MediaContentBlockNumberedListDaoImpl value,
          $Res Function(_$MediaContentBlockNumberedListDaoImpl) then) =
      __$$MediaContentBlockNumberedListDaoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      List<MediaContentBlockDao> blocks,
      @JsonKey(name: 'story') String parentId,
      @JsonKey(name: 'sort_id') int sortId});
}

/// @nodoc
class __$$MediaContentBlockNumberedListDaoImplCopyWithImpl<$Res>
    extends _$MediaContentBlockDaoCopyWithImpl<$Res,
        _$MediaContentBlockNumberedListDaoImpl>
    implements _$$MediaContentBlockNumberedListDaoImplCopyWith<$Res> {
  __$$MediaContentBlockNumberedListDaoImplCopyWithImpl(
      _$MediaContentBlockNumberedListDaoImpl _value,
      $Res Function(_$MediaContentBlockNumberedListDaoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? blocks = null,
    Object? parentId = null,
    Object? sortId = null,
  }) {
    return _then(_$MediaContentBlockNumberedListDaoImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      blocks: null == blocks
          ? _value._blocks
          : blocks // ignore: cast_nullable_to_non_nullable
              as List<MediaContentBlockDao>,
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
class _$MediaContentBlockNumberedListDaoImpl
    implements MediaContentBlockNumberedListDao {
  const _$MediaContentBlockNumberedListDaoImpl(
      {required this.id,
      required final List<MediaContentBlockDao> blocks,
      @JsonKey(name: 'story') required this.parentId,
      @JsonKey(name: 'sort_id') required this.sortId,
      final String? $type})
      : _blocks = blocks,
        $type = $type ?? 'numbered_list';

  factory _$MediaContentBlockNumberedListDaoImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$MediaContentBlockNumberedListDaoImplFromJson(json);

  @override
  final String id;
  final List<MediaContentBlockDao> _blocks;
  @override
  List<MediaContentBlockDao> get blocks {
    if (_blocks is EqualUnmodifiableListView) return _blocks;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_blocks);
  }

  @override
  @JsonKey(name: 'story')
  final String parentId;
  @override
  @JsonKey(name: 'sort_id')
  final int sortId;

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'MediaContentBlockDao.numberedList(id: $id, blocks: $blocks, parentId: $parentId, sortId: $sortId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MediaContentBlockNumberedListDaoImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality().equals(other._blocks, _blocks) &&
            (identical(other.parentId, parentId) ||
                other.parentId == parentId) &&
            (identical(other.sortId, sortId) || other.sortId == sortId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id,
      const DeepCollectionEquality().hash(_blocks), parentId, sortId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MediaContentBlockNumberedListDaoImplCopyWith<
          _$MediaContentBlockNumberedListDaoImpl>
      get copyWith => __$$MediaContentBlockNumberedListDaoImplCopyWithImpl<
          _$MediaContentBlockNumberedListDaoImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String id,
            @JsonKey(name: 'story') String parentId,
            String title,
            @JsonKey(name: 'sort_id') int sortId)
        title,
    required TResult Function(
            String id,
            @JsonKey(name: 'story') String parentId,
            String subtitle,
            @JsonKey(name: 'sort_id') int sortId)
        subtitle,
    required TResult Function(
            String id,
            @JsonKey(name: 'story') String parentId,
            String subtitle,
            @JsonKey(name: 'sort_id') int sortId)
        markedSubtitle,
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
            @JsonKey(name: 'story') String parentId,
            String image,
            @JsonKey(name: 'sort_id') int sortId)
        svg,
    required TResult Function(
            String id,
            @JsonKey(name: 'story') String parentId,
            String link,
            @JsonKey(name: 'button_title') String title,
            @JsonKey(name: 'sort_id') int sortId)
        linkButton,
    required TResult Function(
            String id,
            @JsonKey(name: 'story') String parentId,
            MediaPlatformDao media,
            String link,
            @JsonKey(name: 'sort_id') int sortId)
        subscribeButton,
    required TResult Function(
            String id,
            @JsonKey(name: 'story') String parentId,
            MediaContentBlockDao child,
            @JsonKey(name: 'sort_id') int sortId)
        group,
    required TResult Function(
            String id,
            List<MediaContentBlockDao> blocks,
            @JsonKey(name: 'story') String parentId,
            @JsonKey(name: 'sort_id') int sortId)
        numberedList,
    required TResult Function(
            String id,
            List<MediaContentBlockDao> blocks,
            @JsonKey(name: 'story') String parentId,
            @JsonKey(name: 'sort_id') int sortId)
        list,
    required TResult Function(
            String id,
            @JsonKey(name: 'story') String parentId,
            String question,
            @JsonKey(name: 'sort_id') int sortId)
        rateDialog,
    required TResult Function(
            String id,
            @JsonKey(name: 'group') String parentId,
            @JsonKey(name: 'sort_id') int sortId)
        appeal,
    required TResult Function(
            String id,
            @JsonKey(name: 'group') String parentId,
            @JsonKey(name: 'sort_id') int sortId)
        signature,
  }) {
    return numberedList(id, blocks, parentId, sortId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id, @JsonKey(name: 'story') String parentId,
            String title, @JsonKey(name: 'sort_id') int sortId)?
        title,
    TResult? Function(String id, @JsonKey(name: 'story') String parentId,
            String subtitle, @JsonKey(name: 'sort_id') int sortId)?
        subtitle,
    TResult? Function(String id, @JsonKey(name: 'story') String parentId,
            String subtitle, @JsonKey(name: 'sort_id') int sortId)?
        markedSubtitle,
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
    TResult? Function(String id, @JsonKey(name: 'story') String parentId,
            String image, @JsonKey(name: 'sort_id') int sortId)?
        svg,
    TResult? Function(
            String id,
            @JsonKey(name: 'story') String parentId,
            String link,
            @JsonKey(name: 'button_title') String title,
            @JsonKey(name: 'sort_id') int sortId)?
        linkButton,
    TResult? Function(
            String id,
            @JsonKey(name: 'story') String parentId,
            MediaPlatformDao media,
            String link,
            @JsonKey(name: 'sort_id') int sortId)?
        subscribeButton,
    TResult? Function(String id, @JsonKey(name: 'story') String parentId,
            MediaContentBlockDao child, @JsonKey(name: 'sort_id') int sortId)?
        group,
    TResult? Function(
            String id,
            List<MediaContentBlockDao> blocks,
            @JsonKey(name: 'story') String parentId,
            @JsonKey(name: 'sort_id') int sortId)?
        numberedList,
    TResult? Function(
            String id,
            List<MediaContentBlockDao> blocks,
            @JsonKey(name: 'story') String parentId,
            @JsonKey(name: 'sort_id') int sortId)?
        list,
    TResult? Function(String id, @JsonKey(name: 'story') String parentId,
            String question, @JsonKey(name: 'sort_id') int sortId)?
        rateDialog,
    TResult? Function(String id, @JsonKey(name: 'group') String parentId,
            @JsonKey(name: 'sort_id') int sortId)?
        appeal,
    TResult? Function(String id, @JsonKey(name: 'group') String parentId,
            @JsonKey(name: 'sort_id') int sortId)?
        signature,
  }) {
    return numberedList?.call(id, blocks, parentId, sortId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id, @JsonKey(name: 'story') String parentId,
            String title, @JsonKey(name: 'sort_id') int sortId)?
        title,
    TResult Function(String id, @JsonKey(name: 'story') String parentId,
            String subtitle, @JsonKey(name: 'sort_id') int sortId)?
        subtitle,
    TResult Function(String id, @JsonKey(name: 'story') String parentId,
            String subtitle, @JsonKey(name: 'sort_id') int sortId)?
        markedSubtitle,
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
    TResult Function(String id, @JsonKey(name: 'story') String parentId,
            String image, @JsonKey(name: 'sort_id') int sortId)?
        svg,
    TResult Function(
            String id,
            @JsonKey(name: 'story') String parentId,
            String link,
            @JsonKey(name: 'button_title') String title,
            @JsonKey(name: 'sort_id') int sortId)?
        linkButton,
    TResult Function(
            String id,
            @JsonKey(name: 'story') String parentId,
            MediaPlatformDao media,
            String link,
            @JsonKey(name: 'sort_id') int sortId)?
        subscribeButton,
    TResult Function(String id, @JsonKey(name: 'story') String parentId,
            MediaContentBlockDao child, @JsonKey(name: 'sort_id') int sortId)?
        group,
    TResult Function(
            String id,
            List<MediaContentBlockDao> blocks,
            @JsonKey(name: 'story') String parentId,
            @JsonKey(name: 'sort_id') int sortId)?
        numberedList,
    TResult Function(
            String id,
            List<MediaContentBlockDao> blocks,
            @JsonKey(name: 'story') String parentId,
            @JsonKey(name: 'sort_id') int sortId)?
        list,
    TResult Function(String id, @JsonKey(name: 'story') String parentId,
            String question, @JsonKey(name: 'sort_id') int sortId)?
        rateDialog,
    TResult Function(String id, @JsonKey(name: 'group') String parentId,
            @JsonKey(name: 'sort_id') int sortId)?
        appeal,
    TResult Function(String id, @JsonKey(name: 'group') String parentId,
            @JsonKey(name: 'sort_id') int sortId)?
        signature,
    required TResult orElse(),
  }) {
    if (numberedList != null) {
      return numberedList(id, blocks, parentId, sortId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MediaContentBlockTitleDao value) title,
    required TResult Function(MediaContentBlockSubtitleDao value) subtitle,
    required TResult Function(MediaContentBlockMarkedSubtitleDao value)
        markedSubtitle,
    required TResult Function(MediaContentBlockTextFieldDao value) textField,
    required TResult Function(MediaContentBlockImageDao value) image,
    required TResult Function(MediaContentBlockSvgDao value) svg,
    required TResult Function(MediaContentBlockLinkButtonDao value) linkButton,
    required TResult Function(MediaContentBlockSubscribeButtonDao value)
        subscribeButton,
    required TResult Function(MediaContentBlockGroupDao value) group,
    required TResult Function(MediaContentBlockNumberedListDao value)
        numberedList,
    required TResult Function(MediaContentBlockListDao value) list,
    required TResult Function(MediaContentBlockRateDialogDao value) rateDialog,
    required TResult Function(MediaContentBlockAppealDao value) appeal,
    required TResult Function(MediaContentBlockSignatureDao value) signature,
  }) {
    return numberedList(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MediaContentBlockTitleDao value)? title,
    TResult? Function(MediaContentBlockSubtitleDao value)? subtitle,
    TResult? Function(MediaContentBlockMarkedSubtitleDao value)? markedSubtitle,
    TResult? Function(MediaContentBlockTextFieldDao value)? textField,
    TResult? Function(MediaContentBlockImageDao value)? image,
    TResult? Function(MediaContentBlockSvgDao value)? svg,
    TResult? Function(MediaContentBlockLinkButtonDao value)? linkButton,
    TResult? Function(MediaContentBlockSubscribeButtonDao value)?
        subscribeButton,
    TResult? Function(MediaContentBlockGroupDao value)? group,
    TResult? Function(MediaContentBlockNumberedListDao value)? numberedList,
    TResult? Function(MediaContentBlockListDao value)? list,
    TResult? Function(MediaContentBlockRateDialogDao value)? rateDialog,
    TResult? Function(MediaContentBlockAppealDao value)? appeal,
    TResult? Function(MediaContentBlockSignatureDao value)? signature,
  }) {
    return numberedList?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MediaContentBlockTitleDao value)? title,
    TResult Function(MediaContentBlockSubtitleDao value)? subtitle,
    TResult Function(MediaContentBlockMarkedSubtitleDao value)? markedSubtitle,
    TResult Function(MediaContentBlockTextFieldDao value)? textField,
    TResult Function(MediaContentBlockImageDao value)? image,
    TResult Function(MediaContentBlockSvgDao value)? svg,
    TResult Function(MediaContentBlockLinkButtonDao value)? linkButton,
    TResult Function(MediaContentBlockSubscribeButtonDao value)?
        subscribeButton,
    TResult Function(MediaContentBlockGroupDao value)? group,
    TResult Function(MediaContentBlockNumberedListDao value)? numberedList,
    TResult Function(MediaContentBlockListDao value)? list,
    TResult Function(MediaContentBlockRateDialogDao value)? rateDialog,
    TResult Function(MediaContentBlockAppealDao value)? appeal,
    TResult Function(MediaContentBlockSignatureDao value)? signature,
    required TResult orElse(),
  }) {
    if (numberedList != null) {
      return numberedList(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$MediaContentBlockNumberedListDaoImplToJson(
      this,
    );
  }
}

abstract class MediaContentBlockNumberedListDao
    implements MediaContentBlockDao {
  const factory MediaContentBlockNumberedListDao(
          {required final String id,
          required final List<MediaContentBlockDao> blocks,
          @JsonKey(name: 'story') required final String parentId,
          @JsonKey(name: 'sort_id') required final int sortId}) =
      _$MediaContentBlockNumberedListDaoImpl;

  factory MediaContentBlockNumberedListDao.fromJson(Map<String, dynamic> json) =
      _$MediaContentBlockNumberedListDaoImpl.fromJson;

  @override
  String get id;
  List<MediaContentBlockDao> get blocks;
  @override
  @JsonKey(name: 'story')
  String get parentId;
  @override
  @JsonKey(name: 'sort_id')
  int get sortId;
  @override
  @JsonKey(ignore: true)
  _$$MediaContentBlockNumberedListDaoImplCopyWith<
          _$MediaContentBlockNumberedListDaoImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MediaContentBlockListDaoImplCopyWith<$Res>
    implements $MediaContentBlockDaoCopyWith<$Res> {
  factory _$$MediaContentBlockListDaoImplCopyWith(
          _$MediaContentBlockListDaoImpl value,
          $Res Function(_$MediaContentBlockListDaoImpl) then) =
      __$$MediaContentBlockListDaoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      List<MediaContentBlockDao> blocks,
      @JsonKey(name: 'story') String parentId,
      @JsonKey(name: 'sort_id') int sortId});
}

/// @nodoc
class __$$MediaContentBlockListDaoImplCopyWithImpl<$Res>
    extends _$MediaContentBlockDaoCopyWithImpl<$Res,
        _$MediaContentBlockListDaoImpl>
    implements _$$MediaContentBlockListDaoImplCopyWith<$Res> {
  __$$MediaContentBlockListDaoImplCopyWithImpl(
      _$MediaContentBlockListDaoImpl _value,
      $Res Function(_$MediaContentBlockListDaoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? blocks = null,
    Object? parentId = null,
    Object? sortId = null,
  }) {
    return _then(_$MediaContentBlockListDaoImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      blocks: null == blocks
          ? _value._blocks
          : blocks // ignore: cast_nullable_to_non_nullable
              as List<MediaContentBlockDao>,
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
class _$MediaContentBlockListDaoImpl implements MediaContentBlockListDao {
  const _$MediaContentBlockListDaoImpl(
      {required this.id,
      required final List<MediaContentBlockDao> blocks,
      @JsonKey(name: 'story') required this.parentId,
      @JsonKey(name: 'sort_id') required this.sortId,
      final String? $type})
      : _blocks = blocks,
        $type = $type ?? 'list';

  factory _$MediaContentBlockListDaoImpl.fromJson(Map<String, dynamic> json) =>
      _$$MediaContentBlockListDaoImplFromJson(json);

  @override
  final String id;
  final List<MediaContentBlockDao> _blocks;
  @override
  List<MediaContentBlockDao> get blocks {
    if (_blocks is EqualUnmodifiableListView) return _blocks;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_blocks);
  }

  @override
  @JsonKey(name: 'story')
  final String parentId;
  @override
  @JsonKey(name: 'sort_id')
  final int sortId;

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'MediaContentBlockDao.list(id: $id, blocks: $blocks, parentId: $parentId, sortId: $sortId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MediaContentBlockListDaoImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality().equals(other._blocks, _blocks) &&
            (identical(other.parentId, parentId) ||
                other.parentId == parentId) &&
            (identical(other.sortId, sortId) || other.sortId == sortId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id,
      const DeepCollectionEquality().hash(_blocks), parentId, sortId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MediaContentBlockListDaoImplCopyWith<_$MediaContentBlockListDaoImpl>
      get copyWith => __$$MediaContentBlockListDaoImplCopyWithImpl<
          _$MediaContentBlockListDaoImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String id,
            @JsonKey(name: 'story') String parentId,
            String title,
            @JsonKey(name: 'sort_id') int sortId)
        title,
    required TResult Function(
            String id,
            @JsonKey(name: 'story') String parentId,
            String subtitle,
            @JsonKey(name: 'sort_id') int sortId)
        subtitle,
    required TResult Function(
            String id,
            @JsonKey(name: 'story') String parentId,
            String subtitle,
            @JsonKey(name: 'sort_id') int sortId)
        markedSubtitle,
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
            @JsonKey(name: 'story') String parentId,
            String image,
            @JsonKey(name: 'sort_id') int sortId)
        svg,
    required TResult Function(
            String id,
            @JsonKey(name: 'story') String parentId,
            String link,
            @JsonKey(name: 'button_title') String title,
            @JsonKey(name: 'sort_id') int sortId)
        linkButton,
    required TResult Function(
            String id,
            @JsonKey(name: 'story') String parentId,
            MediaPlatformDao media,
            String link,
            @JsonKey(name: 'sort_id') int sortId)
        subscribeButton,
    required TResult Function(
            String id,
            @JsonKey(name: 'story') String parentId,
            MediaContentBlockDao child,
            @JsonKey(name: 'sort_id') int sortId)
        group,
    required TResult Function(
            String id,
            List<MediaContentBlockDao> blocks,
            @JsonKey(name: 'story') String parentId,
            @JsonKey(name: 'sort_id') int sortId)
        numberedList,
    required TResult Function(
            String id,
            List<MediaContentBlockDao> blocks,
            @JsonKey(name: 'story') String parentId,
            @JsonKey(name: 'sort_id') int sortId)
        list,
    required TResult Function(
            String id,
            @JsonKey(name: 'story') String parentId,
            String question,
            @JsonKey(name: 'sort_id') int sortId)
        rateDialog,
    required TResult Function(
            String id,
            @JsonKey(name: 'group') String parentId,
            @JsonKey(name: 'sort_id') int sortId)
        appeal,
    required TResult Function(
            String id,
            @JsonKey(name: 'group') String parentId,
            @JsonKey(name: 'sort_id') int sortId)
        signature,
  }) {
    return list(id, blocks, parentId, sortId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id, @JsonKey(name: 'story') String parentId,
            String title, @JsonKey(name: 'sort_id') int sortId)?
        title,
    TResult? Function(String id, @JsonKey(name: 'story') String parentId,
            String subtitle, @JsonKey(name: 'sort_id') int sortId)?
        subtitle,
    TResult? Function(String id, @JsonKey(name: 'story') String parentId,
            String subtitle, @JsonKey(name: 'sort_id') int sortId)?
        markedSubtitle,
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
    TResult? Function(String id, @JsonKey(name: 'story') String parentId,
            String image, @JsonKey(name: 'sort_id') int sortId)?
        svg,
    TResult? Function(
            String id,
            @JsonKey(name: 'story') String parentId,
            String link,
            @JsonKey(name: 'button_title') String title,
            @JsonKey(name: 'sort_id') int sortId)?
        linkButton,
    TResult? Function(
            String id,
            @JsonKey(name: 'story') String parentId,
            MediaPlatformDao media,
            String link,
            @JsonKey(name: 'sort_id') int sortId)?
        subscribeButton,
    TResult? Function(String id, @JsonKey(name: 'story') String parentId,
            MediaContentBlockDao child, @JsonKey(name: 'sort_id') int sortId)?
        group,
    TResult? Function(
            String id,
            List<MediaContentBlockDao> blocks,
            @JsonKey(name: 'story') String parentId,
            @JsonKey(name: 'sort_id') int sortId)?
        numberedList,
    TResult? Function(
            String id,
            List<MediaContentBlockDao> blocks,
            @JsonKey(name: 'story') String parentId,
            @JsonKey(name: 'sort_id') int sortId)?
        list,
    TResult? Function(String id, @JsonKey(name: 'story') String parentId,
            String question, @JsonKey(name: 'sort_id') int sortId)?
        rateDialog,
    TResult? Function(String id, @JsonKey(name: 'group') String parentId,
            @JsonKey(name: 'sort_id') int sortId)?
        appeal,
    TResult? Function(String id, @JsonKey(name: 'group') String parentId,
            @JsonKey(name: 'sort_id') int sortId)?
        signature,
  }) {
    return list?.call(id, blocks, parentId, sortId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id, @JsonKey(name: 'story') String parentId,
            String title, @JsonKey(name: 'sort_id') int sortId)?
        title,
    TResult Function(String id, @JsonKey(name: 'story') String parentId,
            String subtitle, @JsonKey(name: 'sort_id') int sortId)?
        subtitle,
    TResult Function(String id, @JsonKey(name: 'story') String parentId,
            String subtitle, @JsonKey(name: 'sort_id') int sortId)?
        markedSubtitle,
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
    TResult Function(String id, @JsonKey(name: 'story') String parentId,
            String image, @JsonKey(name: 'sort_id') int sortId)?
        svg,
    TResult Function(
            String id,
            @JsonKey(name: 'story') String parentId,
            String link,
            @JsonKey(name: 'button_title') String title,
            @JsonKey(name: 'sort_id') int sortId)?
        linkButton,
    TResult Function(
            String id,
            @JsonKey(name: 'story') String parentId,
            MediaPlatformDao media,
            String link,
            @JsonKey(name: 'sort_id') int sortId)?
        subscribeButton,
    TResult Function(String id, @JsonKey(name: 'story') String parentId,
            MediaContentBlockDao child, @JsonKey(name: 'sort_id') int sortId)?
        group,
    TResult Function(
            String id,
            List<MediaContentBlockDao> blocks,
            @JsonKey(name: 'story') String parentId,
            @JsonKey(name: 'sort_id') int sortId)?
        numberedList,
    TResult Function(
            String id,
            List<MediaContentBlockDao> blocks,
            @JsonKey(name: 'story') String parentId,
            @JsonKey(name: 'sort_id') int sortId)?
        list,
    TResult Function(String id, @JsonKey(name: 'story') String parentId,
            String question, @JsonKey(name: 'sort_id') int sortId)?
        rateDialog,
    TResult Function(String id, @JsonKey(name: 'group') String parentId,
            @JsonKey(name: 'sort_id') int sortId)?
        appeal,
    TResult Function(String id, @JsonKey(name: 'group') String parentId,
            @JsonKey(name: 'sort_id') int sortId)?
        signature,
    required TResult orElse(),
  }) {
    if (list != null) {
      return list(id, blocks, parentId, sortId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MediaContentBlockTitleDao value) title,
    required TResult Function(MediaContentBlockSubtitleDao value) subtitle,
    required TResult Function(MediaContentBlockMarkedSubtitleDao value)
        markedSubtitle,
    required TResult Function(MediaContentBlockTextFieldDao value) textField,
    required TResult Function(MediaContentBlockImageDao value) image,
    required TResult Function(MediaContentBlockSvgDao value) svg,
    required TResult Function(MediaContentBlockLinkButtonDao value) linkButton,
    required TResult Function(MediaContentBlockSubscribeButtonDao value)
        subscribeButton,
    required TResult Function(MediaContentBlockGroupDao value) group,
    required TResult Function(MediaContentBlockNumberedListDao value)
        numberedList,
    required TResult Function(MediaContentBlockListDao value) list,
    required TResult Function(MediaContentBlockRateDialogDao value) rateDialog,
    required TResult Function(MediaContentBlockAppealDao value) appeal,
    required TResult Function(MediaContentBlockSignatureDao value) signature,
  }) {
    return list(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MediaContentBlockTitleDao value)? title,
    TResult? Function(MediaContentBlockSubtitleDao value)? subtitle,
    TResult? Function(MediaContentBlockMarkedSubtitleDao value)? markedSubtitle,
    TResult? Function(MediaContentBlockTextFieldDao value)? textField,
    TResult? Function(MediaContentBlockImageDao value)? image,
    TResult? Function(MediaContentBlockSvgDao value)? svg,
    TResult? Function(MediaContentBlockLinkButtonDao value)? linkButton,
    TResult? Function(MediaContentBlockSubscribeButtonDao value)?
        subscribeButton,
    TResult? Function(MediaContentBlockGroupDao value)? group,
    TResult? Function(MediaContentBlockNumberedListDao value)? numberedList,
    TResult? Function(MediaContentBlockListDao value)? list,
    TResult? Function(MediaContentBlockRateDialogDao value)? rateDialog,
    TResult? Function(MediaContentBlockAppealDao value)? appeal,
    TResult? Function(MediaContentBlockSignatureDao value)? signature,
  }) {
    return list?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MediaContentBlockTitleDao value)? title,
    TResult Function(MediaContentBlockSubtitleDao value)? subtitle,
    TResult Function(MediaContentBlockMarkedSubtitleDao value)? markedSubtitle,
    TResult Function(MediaContentBlockTextFieldDao value)? textField,
    TResult Function(MediaContentBlockImageDao value)? image,
    TResult Function(MediaContentBlockSvgDao value)? svg,
    TResult Function(MediaContentBlockLinkButtonDao value)? linkButton,
    TResult Function(MediaContentBlockSubscribeButtonDao value)?
        subscribeButton,
    TResult Function(MediaContentBlockGroupDao value)? group,
    TResult Function(MediaContentBlockNumberedListDao value)? numberedList,
    TResult Function(MediaContentBlockListDao value)? list,
    TResult Function(MediaContentBlockRateDialogDao value)? rateDialog,
    TResult Function(MediaContentBlockAppealDao value)? appeal,
    TResult Function(MediaContentBlockSignatureDao value)? signature,
    required TResult orElse(),
  }) {
    if (list != null) {
      return list(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$MediaContentBlockListDaoImplToJson(
      this,
    );
  }
}

abstract class MediaContentBlockListDao implements MediaContentBlockDao {
  const factory MediaContentBlockListDao(
          {required final String id,
          required final List<MediaContentBlockDao> blocks,
          @JsonKey(name: 'story') required final String parentId,
          @JsonKey(name: 'sort_id') required final int sortId}) =
      _$MediaContentBlockListDaoImpl;

  factory MediaContentBlockListDao.fromJson(Map<String, dynamic> json) =
      _$MediaContentBlockListDaoImpl.fromJson;

  @override
  String get id;
  List<MediaContentBlockDao> get blocks;
  @override
  @JsonKey(name: 'story')
  String get parentId;
  @override
  @JsonKey(name: 'sort_id')
  int get sortId;
  @override
  @JsonKey(ignore: true)
  _$$MediaContentBlockListDaoImplCopyWith<_$MediaContentBlockListDaoImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MediaContentBlockRateDialogDaoImplCopyWith<$Res>
    implements $MediaContentBlockDaoCopyWith<$Res> {
  factory _$$MediaContentBlockRateDialogDaoImplCopyWith(
          _$MediaContentBlockRateDialogDaoImpl value,
          $Res Function(_$MediaContentBlockRateDialogDaoImpl) then) =
      __$$MediaContentBlockRateDialogDaoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      @JsonKey(name: 'story') String parentId,
      String question,
      @JsonKey(name: 'sort_id') int sortId});
}

/// @nodoc
class __$$MediaContentBlockRateDialogDaoImplCopyWithImpl<$Res>
    extends _$MediaContentBlockDaoCopyWithImpl<$Res,
        _$MediaContentBlockRateDialogDaoImpl>
    implements _$$MediaContentBlockRateDialogDaoImplCopyWith<$Res> {
  __$$MediaContentBlockRateDialogDaoImplCopyWithImpl(
      _$MediaContentBlockRateDialogDaoImpl _value,
      $Res Function(_$MediaContentBlockRateDialogDaoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? parentId = null,
    Object? question = null,
    Object? sortId = null,
  }) {
    return _then(_$MediaContentBlockRateDialogDaoImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      parentId: null == parentId
          ? _value.parentId
          : parentId // ignore: cast_nullable_to_non_nullable
              as String,
      question: null == question
          ? _value.question
          : question // ignore: cast_nullable_to_non_nullable
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
class _$MediaContentBlockRateDialogDaoImpl
    implements MediaContentBlockRateDialogDao {
  const _$MediaContentBlockRateDialogDaoImpl(
      {required this.id,
      @JsonKey(name: 'story') required this.parentId,
      this.question = '',
      @JsonKey(name: 'sort_id') required this.sortId,
      final String? $type})
      : $type = $type ?? 'rate_dialog';

  factory _$MediaContentBlockRateDialogDaoImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$MediaContentBlockRateDialogDaoImplFromJson(json);

  @override
  final String id;
  @override
  @JsonKey(name: 'story')
  final String parentId;
  @override
  @JsonKey()
  final String question;
  @override
  @JsonKey(name: 'sort_id')
  final int sortId;

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'MediaContentBlockDao.rateDialog(id: $id, parentId: $parentId, question: $question, sortId: $sortId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MediaContentBlockRateDialogDaoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.parentId, parentId) ||
                other.parentId == parentId) &&
            (identical(other.question, question) ||
                other.question == question) &&
            (identical(other.sortId, sortId) || other.sortId == sortId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, parentId, question, sortId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MediaContentBlockRateDialogDaoImplCopyWith<
          _$MediaContentBlockRateDialogDaoImpl>
      get copyWith => __$$MediaContentBlockRateDialogDaoImplCopyWithImpl<
          _$MediaContentBlockRateDialogDaoImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String id,
            @JsonKey(name: 'story') String parentId,
            String title,
            @JsonKey(name: 'sort_id') int sortId)
        title,
    required TResult Function(
            String id,
            @JsonKey(name: 'story') String parentId,
            String subtitle,
            @JsonKey(name: 'sort_id') int sortId)
        subtitle,
    required TResult Function(
            String id,
            @JsonKey(name: 'story') String parentId,
            String subtitle,
            @JsonKey(name: 'sort_id') int sortId)
        markedSubtitle,
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
            @JsonKey(name: 'story') String parentId,
            String image,
            @JsonKey(name: 'sort_id') int sortId)
        svg,
    required TResult Function(
            String id,
            @JsonKey(name: 'story') String parentId,
            String link,
            @JsonKey(name: 'button_title') String title,
            @JsonKey(name: 'sort_id') int sortId)
        linkButton,
    required TResult Function(
            String id,
            @JsonKey(name: 'story') String parentId,
            MediaPlatformDao media,
            String link,
            @JsonKey(name: 'sort_id') int sortId)
        subscribeButton,
    required TResult Function(
            String id,
            @JsonKey(name: 'story') String parentId,
            MediaContentBlockDao child,
            @JsonKey(name: 'sort_id') int sortId)
        group,
    required TResult Function(
            String id,
            List<MediaContentBlockDao> blocks,
            @JsonKey(name: 'story') String parentId,
            @JsonKey(name: 'sort_id') int sortId)
        numberedList,
    required TResult Function(
            String id,
            List<MediaContentBlockDao> blocks,
            @JsonKey(name: 'story') String parentId,
            @JsonKey(name: 'sort_id') int sortId)
        list,
    required TResult Function(
            String id,
            @JsonKey(name: 'story') String parentId,
            String question,
            @JsonKey(name: 'sort_id') int sortId)
        rateDialog,
    required TResult Function(
            String id,
            @JsonKey(name: 'group') String parentId,
            @JsonKey(name: 'sort_id') int sortId)
        appeal,
    required TResult Function(
            String id,
            @JsonKey(name: 'group') String parentId,
            @JsonKey(name: 'sort_id') int sortId)
        signature,
  }) {
    return rateDialog(id, parentId, question, sortId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id, @JsonKey(name: 'story') String parentId,
            String title, @JsonKey(name: 'sort_id') int sortId)?
        title,
    TResult? Function(String id, @JsonKey(name: 'story') String parentId,
            String subtitle, @JsonKey(name: 'sort_id') int sortId)?
        subtitle,
    TResult? Function(String id, @JsonKey(name: 'story') String parentId,
            String subtitle, @JsonKey(name: 'sort_id') int sortId)?
        markedSubtitle,
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
    TResult? Function(String id, @JsonKey(name: 'story') String parentId,
            String image, @JsonKey(name: 'sort_id') int sortId)?
        svg,
    TResult? Function(
            String id,
            @JsonKey(name: 'story') String parentId,
            String link,
            @JsonKey(name: 'button_title') String title,
            @JsonKey(name: 'sort_id') int sortId)?
        linkButton,
    TResult? Function(
            String id,
            @JsonKey(name: 'story') String parentId,
            MediaPlatformDao media,
            String link,
            @JsonKey(name: 'sort_id') int sortId)?
        subscribeButton,
    TResult? Function(String id, @JsonKey(name: 'story') String parentId,
            MediaContentBlockDao child, @JsonKey(name: 'sort_id') int sortId)?
        group,
    TResult? Function(
            String id,
            List<MediaContentBlockDao> blocks,
            @JsonKey(name: 'story') String parentId,
            @JsonKey(name: 'sort_id') int sortId)?
        numberedList,
    TResult? Function(
            String id,
            List<MediaContentBlockDao> blocks,
            @JsonKey(name: 'story') String parentId,
            @JsonKey(name: 'sort_id') int sortId)?
        list,
    TResult? Function(String id, @JsonKey(name: 'story') String parentId,
            String question, @JsonKey(name: 'sort_id') int sortId)?
        rateDialog,
    TResult? Function(String id, @JsonKey(name: 'group') String parentId,
            @JsonKey(name: 'sort_id') int sortId)?
        appeal,
    TResult? Function(String id, @JsonKey(name: 'group') String parentId,
            @JsonKey(name: 'sort_id') int sortId)?
        signature,
  }) {
    return rateDialog?.call(id, parentId, question, sortId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id, @JsonKey(name: 'story') String parentId,
            String title, @JsonKey(name: 'sort_id') int sortId)?
        title,
    TResult Function(String id, @JsonKey(name: 'story') String parentId,
            String subtitle, @JsonKey(name: 'sort_id') int sortId)?
        subtitle,
    TResult Function(String id, @JsonKey(name: 'story') String parentId,
            String subtitle, @JsonKey(name: 'sort_id') int sortId)?
        markedSubtitle,
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
    TResult Function(String id, @JsonKey(name: 'story') String parentId,
            String image, @JsonKey(name: 'sort_id') int sortId)?
        svg,
    TResult Function(
            String id,
            @JsonKey(name: 'story') String parentId,
            String link,
            @JsonKey(name: 'button_title') String title,
            @JsonKey(name: 'sort_id') int sortId)?
        linkButton,
    TResult Function(
            String id,
            @JsonKey(name: 'story') String parentId,
            MediaPlatformDao media,
            String link,
            @JsonKey(name: 'sort_id') int sortId)?
        subscribeButton,
    TResult Function(String id, @JsonKey(name: 'story') String parentId,
            MediaContentBlockDao child, @JsonKey(name: 'sort_id') int sortId)?
        group,
    TResult Function(
            String id,
            List<MediaContentBlockDao> blocks,
            @JsonKey(name: 'story') String parentId,
            @JsonKey(name: 'sort_id') int sortId)?
        numberedList,
    TResult Function(
            String id,
            List<MediaContentBlockDao> blocks,
            @JsonKey(name: 'story') String parentId,
            @JsonKey(name: 'sort_id') int sortId)?
        list,
    TResult Function(String id, @JsonKey(name: 'story') String parentId,
            String question, @JsonKey(name: 'sort_id') int sortId)?
        rateDialog,
    TResult Function(String id, @JsonKey(name: 'group') String parentId,
            @JsonKey(name: 'sort_id') int sortId)?
        appeal,
    TResult Function(String id, @JsonKey(name: 'group') String parentId,
            @JsonKey(name: 'sort_id') int sortId)?
        signature,
    required TResult orElse(),
  }) {
    if (rateDialog != null) {
      return rateDialog(id, parentId, question, sortId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MediaContentBlockTitleDao value) title,
    required TResult Function(MediaContentBlockSubtitleDao value) subtitle,
    required TResult Function(MediaContentBlockMarkedSubtitleDao value)
        markedSubtitle,
    required TResult Function(MediaContentBlockTextFieldDao value) textField,
    required TResult Function(MediaContentBlockImageDao value) image,
    required TResult Function(MediaContentBlockSvgDao value) svg,
    required TResult Function(MediaContentBlockLinkButtonDao value) linkButton,
    required TResult Function(MediaContentBlockSubscribeButtonDao value)
        subscribeButton,
    required TResult Function(MediaContentBlockGroupDao value) group,
    required TResult Function(MediaContentBlockNumberedListDao value)
        numberedList,
    required TResult Function(MediaContentBlockListDao value) list,
    required TResult Function(MediaContentBlockRateDialogDao value) rateDialog,
    required TResult Function(MediaContentBlockAppealDao value) appeal,
    required TResult Function(MediaContentBlockSignatureDao value) signature,
  }) {
    return rateDialog(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MediaContentBlockTitleDao value)? title,
    TResult? Function(MediaContentBlockSubtitleDao value)? subtitle,
    TResult? Function(MediaContentBlockMarkedSubtitleDao value)? markedSubtitle,
    TResult? Function(MediaContentBlockTextFieldDao value)? textField,
    TResult? Function(MediaContentBlockImageDao value)? image,
    TResult? Function(MediaContentBlockSvgDao value)? svg,
    TResult? Function(MediaContentBlockLinkButtonDao value)? linkButton,
    TResult? Function(MediaContentBlockSubscribeButtonDao value)?
        subscribeButton,
    TResult? Function(MediaContentBlockGroupDao value)? group,
    TResult? Function(MediaContentBlockNumberedListDao value)? numberedList,
    TResult? Function(MediaContentBlockListDao value)? list,
    TResult? Function(MediaContentBlockRateDialogDao value)? rateDialog,
    TResult? Function(MediaContentBlockAppealDao value)? appeal,
    TResult? Function(MediaContentBlockSignatureDao value)? signature,
  }) {
    return rateDialog?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MediaContentBlockTitleDao value)? title,
    TResult Function(MediaContentBlockSubtitleDao value)? subtitle,
    TResult Function(MediaContentBlockMarkedSubtitleDao value)? markedSubtitle,
    TResult Function(MediaContentBlockTextFieldDao value)? textField,
    TResult Function(MediaContentBlockImageDao value)? image,
    TResult Function(MediaContentBlockSvgDao value)? svg,
    TResult Function(MediaContentBlockLinkButtonDao value)? linkButton,
    TResult Function(MediaContentBlockSubscribeButtonDao value)?
        subscribeButton,
    TResult Function(MediaContentBlockGroupDao value)? group,
    TResult Function(MediaContentBlockNumberedListDao value)? numberedList,
    TResult Function(MediaContentBlockListDao value)? list,
    TResult Function(MediaContentBlockRateDialogDao value)? rateDialog,
    TResult Function(MediaContentBlockAppealDao value)? appeal,
    TResult Function(MediaContentBlockSignatureDao value)? signature,
    required TResult orElse(),
  }) {
    if (rateDialog != null) {
      return rateDialog(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$MediaContentBlockRateDialogDaoImplToJson(
      this,
    );
  }
}

abstract class MediaContentBlockRateDialogDao implements MediaContentBlockDao {
  const factory MediaContentBlockRateDialogDao(
          {required final String id,
          @JsonKey(name: 'story') required final String parentId,
          final String question,
          @JsonKey(name: 'sort_id') required final int sortId}) =
      _$MediaContentBlockRateDialogDaoImpl;

  factory MediaContentBlockRateDialogDao.fromJson(Map<String, dynamic> json) =
      _$MediaContentBlockRateDialogDaoImpl.fromJson;

  @override
  String get id;
  @override
  @JsonKey(name: 'story')
  String get parentId;
  String get question;
  @override
  @JsonKey(name: 'sort_id')
  int get sortId;
  @override
  @JsonKey(ignore: true)
  _$$MediaContentBlockRateDialogDaoImplCopyWith<
          _$MediaContentBlockRateDialogDaoImpl>
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
      @JsonKey(name: 'group') String parentId,
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
      @JsonKey(name: 'group') required this.parentId,
      @JsonKey(name: 'sort_id') required this.sortId,
      final String? $type})
      : $type = $type ?? 'appeal';

  factory _$MediaContentBlockAppealDaoImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$MediaContentBlockAppealDaoImplFromJson(json);

  @override
  final String id;
  @override
  @JsonKey(name: 'group')
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
            @JsonKey(name: 'story') String parentId,
            String title,
            @JsonKey(name: 'sort_id') int sortId)
        title,
    required TResult Function(
            String id,
            @JsonKey(name: 'story') String parentId,
            String subtitle,
            @JsonKey(name: 'sort_id') int sortId)
        subtitle,
    required TResult Function(
            String id,
            @JsonKey(name: 'story') String parentId,
            String subtitle,
            @JsonKey(name: 'sort_id') int sortId)
        markedSubtitle,
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
            @JsonKey(name: 'story') String parentId,
            String image,
            @JsonKey(name: 'sort_id') int sortId)
        svg,
    required TResult Function(
            String id,
            @JsonKey(name: 'story') String parentId,
            String link,
            @JsonKey(name: 'button_title') String title,
            @JsonKey(name: 'sort_id') int sortId)
        linkButton,
    required TResult Function(
            String id,
            @JsonKey(name: 'story') String parentId,
            MediaPlatformDao media,
            String link,
            @JsonKey(name: 'sort_id') int sortId)
        subscribeButton,
    required TResult Function(
            String id,
            @JsonKey(name: 'story') String parentId,
            MediaContentBlockDao child,
            @JsonKey(name: 'sort_id') int sortId)
        group,
    required TResult Function(
            String id,
            List<MediaContentBlockDao> blocks,
            @JsonKey(name: 'story') String parentId,
            @JsonKey(name: 'sort_id') int sortId)
        numberedList,
    required TResult Function(
            String id,
            List<MediaContentBlockDao> blocks,
            @JsonKey(name: 'story') String parentId,
            @JsonKey(name: 'sort_id') int sortId)
        list,
    required TResult Function(
            String id,
            @JsonKey(name: 'story') String parentId,
            String question,
            @JsonKey(name: 'sort_id') int sortId)
        rateDialog,
    required TResult Function(
            String id,
            @JsonKey(name: 'group') String parentId,
            @JsonKey(name: 'sort_id') int sortId)
        appeal,
    required TResult Function(
            String id,
            @JsonKey(name: 'group') String parentId,
            @JsonKey(name: 'sort_id') int sortId)
        signature,
  }) {
    return appeal(id, parentId, sortId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id, @JsonKey(name: 'story') String parentId,
            String title, @JsonKey(name: 'sort_id') int sortId)?
        title,
    TResult? Function(String id, @JsonKey(name: 'story') String parentId,
            String subtitle, @JsonKey(name: 'sort_id') int sortId)?
        subtitle,
    TResult? Function(String id, @JsonKey(name: 'story') String parentId,
            String subtitle, @JsonKey(name: 'sort_id') int sortId)?
        markedSubtitle,
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
    TResult? Function(String id, @JsonKey(name: 'story') String parentId,
            String image, @JsonKey(name: 'sort_id') int sortId)?
        svg,
    TResult? Function(
            String id,
            @JsonKey(name: 'story') String parentId,
            String link,
            @JsonKey(name: 'button_title') String title,
            @JsonKey(name: 'sort_id') int sortId)?
        linkButton,
    TResult? Function(
            String id,
            @JsonKey(name: 'story') String parentId,
            MediaPlatformDao media,
            String link,
            @JsonKey(name: 'sort_id') int sortId)?
        subscribeButton,
    TResult? Function(String id, @JsonKey(name: 'story') String parentId,
            MediaContentBlockDao child, @JsonKey(name: 'sort_id') int sortId)?
        group,
    TResult? Function(
            String id,
            List<MediaContentBlockDao> blocks,
            @JsonKey(name: 'story') String parentId,
            @JsonKey(name: 'sort_id') int sortId)?
        numberedList,
    TResult? Function(
            String id,
            List<MediaContentBlockDao> blocks,
            @JsonKey(name: 'story') String parentId,
            @JsonKey(name: 'sort_id') int sortId)?
        list,
    TResult? Function(String id, @JsonKey(name: 'story') String parentId,
            String question, @JsonKey(name: 'sort_id') int sortId)?
        rateDialog,
    TResult? Function(String id, @JsonKey(name: 'group') String parentId,
            @JsonKey(name: 'sort_id') int sortId)?
        appeal,
    TResult? Function(String id, @JsonKey(name: 'group') String parentId,
            @JsonKey(name: 'sort_id') int sortId)?
        signature,
  }) {
    return appeal?.call(id, parentId, sortId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id, @JsonKey(name: 'story') String parentId,
            String title, @JsonKey(name: 'sort_id') int sortId)?
        title,
    TResult Function(String id, @JsonKey(name: 'story') String parentId,
            String subtitle, @JsonKey(name: 'sort_id') int sortId)?
        subtitle,
    TResult Function(String id, @JsonKey(name: 'story') String parentId,
            String subtitle, @JsonKey(name: 'sort_id') int sortId)?
        markedSubtitle,
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
    TResult Function(String id, @JsonKey(name: 'story') String parentId,
            String image, @JsonKey(name: 'sort_id') int sortId)?
        svg,
    TResult Function(
            String id,
            @JsonKey(name: 'story') String parentId,
            String link,
            @JsonKey(name: 'button_title') String title,
            @JsonKey(name: 'sort_id') int sortId)?
        linkButton,
    TResult Function(
            String id,
            @JsonKey(name: 'story') String parentId,
            MediaPlatformDao media,
            String link,
            @JsonKey(name: 'sort_id') int sortId)?
        subscribeButton,
    TResult Function(String id, @JsonKey(name: 'story') String parentId,
            MediaContentBlockDao child, @JsonKey(name: 'sort_id') int sortId)?
        group,
    TResult Function(
            String id,
            List<MediaContentBlockDao> blocks,
            @JsonKey(name: 'story') String parentId,
            @JsonKey(name: 'sort_id') int sortId)?
        numberedList,
    TResult Function(
            String id,
            List<MediaContentBlockDao> blocks,
            @JsonKey(name: 'story') String parentId,
            @JsonKey(name: 'sort_id') int sortId)?
        list,
    TResult Function(String id, @JsonKey(name: 'story') String parentId,
            String question, @JsonKey(name: 'sort_id') int sortId)?
        rateDialog,
    TResult Function(String id, @JsonKey(name: 'group') String parentId,
            @JsonKey(name: 'sort_id') int sortId)?
        appeal,
    TResult Function(String id, @JsonKey(name: 'group') String parentId,
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
    required TResult Function(MediaContentBlockSubtitleDao value) subtitle,
    required TResult Function(MediaContentBlockMarkedSubtitleDao value)
        markedSubtitle,
    required TResult Function(MediaContentBlockTextFieldDao value) textField,
    required TResult Function(MediaContentBlockImageDao value) image,
    required TResult Function(MediaContentBlockSvgDao value) svg,
    required TResult Function(MediaContentBlockLinkButtonDao value) linkButton,
    required TResult Function(MediaContentBlockSubscribeButtonDao value)
        subscribeButton,
    required TResult Function(MediaContentBlockGroupDao value) group,
    required TResult Function(MediaContentBlockNumberedListDao value)
        numberedList,
    required TResult Function(MediaContentBlockListDao value) list,
    required TResult Function(MediaContentBlockRateDialogDao value) rateDialog,
    required TResult Function(MediaContentBlockAppealDao value) appeal,
    required TResult Function(MediaContentBlockSignatureDao value) signature,
  }) {
    return appeal(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MediaContentBlockTitleDao value)? title,
    TResult? Function(MediaContentBlockSubtitleDao value)? subtitle,
    TResult? Function(MediaContentBlockMarkedSubtitleDao value)? markedSubtitle,
    TResult? Function(MediaContentBlockTextFieldDao value)? textField,
    TResult? Function(MediaContentBlockImageDao value)? image,
    TResult? Function(MediaContentBlockSvgDao value)? svg,
    TResult? Function(MediaContentBlockLinkButtonDao value)? linkButton,
    TResult? Function(MediaContentBlockSubscribeButtonDao value)?
        subscribeButton,
    TResult? Function(MediaContentBlockGroupDao value)? group,
    TResult? Function(MediaContentBlockNumberedListDao value)? numberedList,
    TResult? Function(MediaContentBlockListDao value)? list,
    TResult? Function(MediaContentBlockRateDialogDao value)? rateDialog,
    TResult? Function(MediaContentBlockAppealDao value)? appeal,
    TResult? Function(MediaContentBlockSignatureDao value)? signature,
  }) {
    return appeal?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MediaContentBlockTitleDao value)? title,
    TResult Function(MediaContentBlockSubtitleDao value)? subtitle,
    TResult Function(MediaContentBlockMarkedSubtitleDao value)? markedSubtitle,
    TResult Function(MediaContentBlockTextFieldDao value)? textField,
    TResult Function(MediaContentBlockImageDao value)? image,
    TResult Function(MediaContentBlockSvgDao value)? svg,
    TResult Function(MediaContentBlockLinkButtonDao value)? linkButton,
    TResult Function(MediaContentBlockSubscribeButtonDao value)?
        subscribeButton,
    TResult Function(MediaContentBlockGroupDao value)? group,
    TResult Function(MediaContentBlockNumberedListDao value)? numberedList,
    TResult Function(MediaContentBlockListDao value)? list,
    TResult Function(MediaContentBlockRateDialogDao value)? rateDialog,
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
          @JsonKey(name: 'group') required final String parentId,
          @JsonKey(name: 'sort_id') required final int sortId}) =
      _$MediaContentBlockAppealDaoImpl;

  factory MediaContentBlockAppealDao.fromJson(Map<String, dynamic> json) =
      _$MediaContentBlockAppealDaoImpl.fromJson;

  @override
  String get id;
  @override
  @JsonKey(name: 'group')
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
      @JsonKey(name: 'group') String parentId,
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
      @JsonKey(name: 'group') required this.parentId,
      @JsonKey(name: 'sort_id') required this.sortId,
      final String? $type})
      : $type = $type ?? 'signature';

  factory _$MediaContentBlockSignatureDaoImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$MediaContentBlockSignatureDaoImplFromJson(json);

  @override
  final String id;
  @override
  @JsonKey(name: 'group')
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
            @JsonKey(name: 'story') String parentId,
            String title,
            @JsonKey(name: 'sort_id') int sortId)
        title,
    required TResult Function(
            String id,
            @JsonKey(name: 'story') String parentId,
            String subtitle,
            @JsonKey(name: 'sort_id') int sortId)
        subtitle,
    required TResult Function(
            String id,
            @JsonKey(name: 'story') String parentId,
            String subtitle,
            @JsonKey(name: 'sort_id') int sortId)
        markedSubtitle,
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
            @JsonKey(name: 'story') String parentId,
            String image,
            @JsonKey(name: 'sort_id') int sortId)
        svg,
    required TResult Function(
            String id,
            @JsonKey(name: 'story') String parentId,
            String link,
            @JsonKey(name: 'button_title') String title,
            @JsonKey(name: 'sort_id') int sortId)
        linkButton,
    required TResult Function(
            String id,
            @JsonKey(name: 'story') String parentId,
            MediaPlatformDao media,
            String link,
            @JsonKey(name: 'sort_id') int sortId)
        subscribeButton,
    required TResult Function(
            String id,
            @JsonKey(name: 'story') String parentId,
            MediaContentBlockDao child,
            @JsonKey(name: 'sort_id') int sortId)
        group,
    required TResult Function(
            String id,
            List<MediaContentBlockDao> blocks,
            @JsonKey(name: 'story') String parentId,
            @JsonKey(name: 'sort_id') int sortId)
        numberedList,
    required TResult Function(
            String id,
            List<MediaContentBlockDao> blocks,
            @JsonKey(name: 'story') String parentId,
            @JsonKey(name: 'sort_id') int sortId)
        list,
    required TResult Function(
            String id,
            @JsonKey(name: 'story') String parentId,
            String question,
            @JsonKey(name: 'sort_id') int sortId)
        rateDialog,
    required TResult Function(
            String id,
            @JsonKey(name: 'group') String parentId,
            @JsonKey(name: 'sort_id') int sortId)
        appeal,
    required TResult Function(
            String id,
            @JsonKey(name: 'group') String parentId,
            @JsonKey(name: 'sort_id') int sortId)
        signature,
  }) {
    return signature(id, parentId, sortId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id, @JsonKey(name: 'story') String parentId,
            String title, @JsonKey(name: 'sort_id') int sortId)?
        title,
    TResult? Function(String id, @JsonKey(name: 'story') String parentId,
            String subtitle, @JsonKey(name: 'sort_id') int sortId)?
        subtitle,
    TResult? Function(String id, @JsonKey(name: 'story') String parentId,
            String subtitle, @JsonKey(name: 'sort_id') int sortId)?
        markedSubtitle,
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
    TResult? Function(String id, @JsonKey(name: 'story') String parentId,
            String image, @JsonKey(name: 'sort_id') int sortId)?
        svg,
    TResult? Function(
            String id,
            @JsonKey(name: 'story') String parentId,
            String link,
            @JsonKey(name: 'button_title') String title,
            @JsonKey(name: 'sort_id') int sortId)?
        linkButton,
    TResult? Function(
            String id,
            @JsonKey(name: 'story') String parentId,
            MediaPlatformDao media,
            String link,
            @JsonKey(name: 'sort_id') int sortId)?
        subscribeButton,
    TResult? Function(String id, @JsonKey(name: 'story') String parentId,
            MediaContentBlockDao child, @JsonKey(name: 'sort_id') int sortId)?
        group,
    TResult? Function(
            String id,
            List<MediaContentBlockDao> blocks,
            @JsonKey(name: 'story') String parentId,
            @JsonKey(name: 'sort_id') int sortId)?
        numberedList,
    TResult? Function(
            String id,
            List<MediaContentBlockDao> blocks,
            @JsonKey(name: 'story') String parentId,
            @JsonKey(name: 'sort_id') int sortId)?
        list,
    TResult? Function(String id, @JsonKey(name: 'story') String parentId,
            String question, @JsonKey(name: 'sort_id') int sortId)?
        rateDialog,
    TResult? Function(String id, @JsonKey(name: 'group') String parentId,
            @JsonKey(name: 'sort_id') int sortId)?
        appeal,
    TResult? Function(String id, @JsonKey(name: 'group') String parentId,
            @JsonKey(name: 'sort_id') int sortId)?
        signature,
  }) {
    return signature?.call(id, parentId, sortId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id, @JsonKey(name: 'story') String parentId,
            String title, @JsonKey(name: 'sort_id') int sortId)?
        title,
    TResult Function(String id, @JsonKey(name: 'story') String parentId,
            String subtitle, @JsonKey(name: 'sort_id') int sortId)?
        subtitle,
    TResult Function(String id, @JsonKey(name: 'story') String parentId,
            String subtitle, @JsonKey(name: 'sort_id') int sortId)?
        markedSubtitle,
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
    TResult Function(String id, @JsonKey(name: 'story') String parentId,
            String image, @JsonKey(name: 'sort_id') int sortId)?
        svg,
    TResult Function(
            String id,
            @JsonKey(name: 'story') String parentId,
            String link,
            @JsonKey(name: 'button_title') String title,
            @JsonKey(name: 'sort_id') int sortId)?
        linkButton,
    TResult Function(
            String id,
            @JsonKey(name: 'story') String parentId,
            MediaPlatformDao media,
            String link,
            @JsonKey(name: 'sort_id') int sortId)?
        subscribeButton,
    TResult Function(String id, @JsonKey(name: 'story') String parentId,
            MediaContentBlockDao child, @JsonKey(name: 'sort_id') int sortId)?
        group,
    TResult Function(
            String id,
            List<MediaContentBlockDao> blocks,
            @JsonKey(name: 'story') String parentId,
            @JsonKey(name: 'sort_id') int sortId)?
        numberedList,
    TResult Function(
            String id,
            List<MediaContentBlockDao> blocks,
            @JsonKey(name: 'story') String parentId,
            @JsonKey(name: 'sort_id') int sortId)?
        list,
    TResult Function(String id, @JsonKey(name: 'story') String parentId,
            String question, @JsonKey(name: 'sort_id') int sortId)?
        rateDialog,
    TResult Function(String id, @JsonKey(name: 'group') String parentId,
            @JsonKey(name: 'sort_id') int sortId)?
        appeal,
    TResult Function(String id, @JsonKey(name: 'group') String parentId,
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
    required TResult Function(MediaContentBlockSubtitleDao value) subtitle,
    required TResult Function(MediaContentBlockMarkedSubtitleDao value)
        markedSubtitle,
    required TResult Function(MediaContentBlockTextFieldDao value) textField,
    required TResult Function(MediaContentBlockImageDao value) image,
    required TResult Function(MediaContentBlockSvgDao value) svg,
    required TResult Function(MediaContentBlockLinkButtonDao value) linkButton,
    required TResult Function(MediaContentBlockSubscribeButtonDao value)
        subscribeButton,
    required TResult Function(MediaContentBlockGroupDao value) group,
    required TResult Function(MediaContentBlockNumberedListDao value)
        numberedList,
    required TResult Function(MediaContentBlockListDao value) list,
    required TResult Function(MediaContentBlockRateDialogDao value) rateDialog,
    required TResult Function(MediaContentBlockAppealDao value) appeal,
    required TResult Function(MediaContentBlockSignatureDao value) signature,
  }) {
    return signature(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MediaContentBlockTitleDao value)? title,
    TResult? Function(MediaContentBlockSubtitleDao value)? subtitle,
    TResult? Function(MediaContentBlockMarkedSubtitleDao value)? markedSubtitle,
    TResult? Function(MediaContentBlockTextFieldDao value)? textField,
    TResult? Function(MediaContentBlockImageDao value)? image,
    TResult? Function(MediaContentBlockSvgDao value)? svg,
    TResult? Function(MediaContentBlockLinkButtonDao value)? linkButton,
    TResult? Function(MediaContentBlockSubscribeButtonDao value)?
        subscribeButton,
    TResult? Function(MediaContentBlockGroupDao value)? group,
    TResult? Function(MediaContentBlockNumberedListDao value)? numberedList,
    TResult? Function(MediaContentBlockListDao value)? list,
    TResult? Function(MediaContentBlockRateDialogDao value)? rateDialog,
    TResult? Function(MediaContentBlockAppealDao value)? appeal,
    TResult? Function(MediaContentBlockSignatureDao value)? signature,
  }) {
    return signature?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MediaContentBlockTitleDao value)? title,
    TResult Function(MediaContentBlockSubtitleDao value)? subtitle,
    TResult Function(MediaContentBlockMarkedSubtitleDao value)? markedSubtitle,
    TResult Function(MediaContentBlockTextFieldDao value)? textField,
    TResult Function(MediaContentBlockImageDao value)? image,
    TResult Function(MediaContentBlockSvgDao value)? svg,
    TResult Function(MediaContentBlockLinkButtonDao value)? linkButton,
    TResult Function(MediaContentBlockSubscribeButtonDao value)?
        subscribeButton,
    TResult Function(MediaContentBlockGroupDao value)? group,
    TResult Function(MediaContentBlockNumberedListDao value)? numberedList,
    TResult Function(MediaContentBlockListDao value)? list,
    TResult Function(MediaContentBlockRateDialogDao value)? rateDialog,
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
          @JsonKey(name: 'group') required final String parentId,
          @JsonKey(name: 'sort_id') required final int sortId}) =
      _$MediaContentBlockSignatureDaoImpl;

  factory MediaContentBlockSignatureDao.fromJson(Map<String, dynamic> json) =
      _$MediaContentBlockSignatureDaoImpl.fromJson;

  @override
  String get id;
  @override
  @JsonKey(name: 'group')
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
