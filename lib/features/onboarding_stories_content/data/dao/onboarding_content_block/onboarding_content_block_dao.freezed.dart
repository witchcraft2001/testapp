// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'onboarding_content_block_dao.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

OnboardingContentBlockDao _$OnboardingContentBlockDaoFromJson(
    Map<String, dynamic> json) {
  switch (json['type']) {
    case 'title':
      return OnboardingContentBlockTitleDao.fromJson(json);
    case 'subtitle':
      return OnboardingContentBlockSubtitleDao.fromJson(json);
    case 'marked_subtitle':
      return OnboardingContentBlockMarkedSubtitleDao.fromJson(json);
    case 'text_field':
      return OnboardingContentBlockTextFieldDao.fromJson(json);
    case 'image':
      return OnboardingContentBlockImageDao.fromJson(json);
    case 'svg':
      return OnboardingContentBlockSvgDao.fromJson(json);
    case 'link_button':
      return OnboardingContentBlockLinkButtonDao.fromJson(json);
    case 'subscribe_button':
      return OnboardingContentBlockSubscribeButtonDao.fromJson(json);
    case 'group':
      return OnboardingContentBlockGroupDao.fromJson(json);
    case 'numbered_list':
      return OnboardingContentBlockNumberedListDao.fromJson(json);
    case 'list':
      return OnboardingContentBlockListDao.fromJson(json);
    case 'rate_dialog':
      return OnboardingContentBlockRateDialogDao.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'type', 'OnboardingContentBlockDao',
          'Invalid union type "${json['type']}"!');
  }
}

/// @nodoc
mixin _$OnboardingContentBlockDao {
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
            OnboardingPlatformDao media,
            String link,
            @JsonKey(name: 'sort_id') int sortId)
        subscribeButton,
    required TResult Function(
            String id,
            @JsonKey(name: 'story') String parentId,
            OnboardingContentBlockDao child,
            @JsonKey(name: 'sort_id') int sortId)
        group,
    required TResult Function(
            String id,
            List<OnboardingContentBlockDao> blocks,
            @JsonKey(name: 'story') String parentId,
            @JsonKey(name: 'sort_id') int sortId)
        numberedList,
    required TResult Function(
            String id,
            List<OnboardingContentBlockDao> blocks,
            @JsonKey(name: 'story') String parentId,
            @JsonKey(name: 'sort_id') int sortId)
        list,
    required TResult Function(
            String id,
            @JsonKey(name: 'story') String parentId,
            String question,
            @JsonKey(name: 'sort_id') int sortId)
        rateDialog,
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
            OnboardingPlatformDao media,
            String link,
            @JsonKey(name: 'sort_id') int sortId)?
        subscribeButton,
    TResult? Function(
            String id,
            @JsonKey(name: 'story') String parentId,
            OnboardingContentBlockDao child,
            @JsonKey(name: 'sort_id') int sortId)?
        group,
    TResult? Function(
            String id,
            List<OnboardingContentBlockDao> blocks,
            @JsonKey(name: 'story') String parentId,
            @JsonKey(name: 'sort_id') int sortId)?
        numberedList,
    TResult? Function(
            String id,
            List<OnboardingContentBlockDao> blocks,
            @JsonKey(name: 'story') String parentId,
            @JsonKey(name: 'sort_id') int sortId)?
        list,
    TResult? Function(String id, @JsonKey(name: 'story') String parentId,
            String question, @JsonKey(name: 'sort_id') int sortId)?
        rateDialog,
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
            OnboardingPlatformDao media,
            String link,
            @JsonKey(name: 'sort_id') int sortId)?
        subscribeButton,
    TResult Function(
            String id,
            @JsonKey(name: 'story') String parentId,
            OnboardingContentBlockDao child,
            @JsonKey(name: 'sort_id') int sortId)?
        group,
    TResult Function(
            String id,
            List<OnboardingContentBlockDao> blocks,
            @JsonKey(name: 'story') String parentId,
            @JsonKey(name: 'sort_id') int sortId)?
        numberedList,
    TResult Function(
            String id,
            List<OnboardingContentBlockDao> blocks,
            @JsonKey(name: 'story') String parentId,
            @JsonKey(name: 'sort_id') int sortId)?
        list,
    TResult Function(String id, @JsonKey(name: 'story') String parentId,
            String question, @JsonKey(name: 'sort_id') int sortId)?
        rateDialog,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OnboardingContentBlockTitleDao value) title,
    required TResult Function(OnboardingContentBlockSubtitleDao value) subtitle,
    required TResult Function(OnboardingContentBlockMarkedSubtitleDao value)
        markedSubtitle,
    required TResult Function(OnboardingContentBlockTextFieldDao value)
        textField,
    required TResult Function(OnboardingContentBlockImageDao value) image,
    required TResult Function(OnboardingContentBlockSvgDao value) svg,
    required TResult Function(OnboardingContentBlockLinkButtonDao value)
        linkButton,
    required TResult Function(OnboardingContentBlockSubscribeButtonDao value)
        subscribeButton,
    required TResult Function(OnboardingContentBlockGroupDao value) group,
    required TResult Function(OnboardingContentBlockNumberedListDao value)
        numberedList,
    required TResult Function(OnboardingContentBlockListDao value) list,
    required TResult Function(OnboardingContentBlockRateDialogDao value)
        rateDialog,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OnboardingContentBlockTitleDao value)? title,
    TResult? Function(OnboardingContentBlockSubtitleDao value)? subtitle,
    TResult? Function(OnboardingContentBlockMarkedSubtitleDao value)?
        markedSubtitle,
    TResult? Function(OnboardingContentBlockTextFieldDao value)? textField,
    TResult? Function(OnboardingContentBlockImageDao value)? image,
    TResult? Function(OnboardingContentBlockSvgDao value)? svg,
    TResult? Function(OnboardingContentBlockLinkButtonDao value)? linkButton,
    TResult? Function(OnboardingContentBlockSubscribeButtonDao value)?
        subscribeButton,
    TResult? Function(OnboardingContentBlockGroupDao value)? group,
    TResult? Function(OnboardingContentBlockNumberedListDao value)?
        numberedList,
    TResult? Function(OnboardingContentBlockListDao value)? list,
    TResult? Function(OnboardingContentBlockRateDialogDao value)? rateDialog,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnboardingContentBlockTitleDao value)? title,
    TResult Function(OnboardingContentBlockSubtitleDao value)? subtitle,
    TResult Function(OnboardingContentBlockMarkedSubtitleDao value)?
        markedSubtitle,
    TResult Function(OnboardingContentBlockTextFieldDao value)? textField,
    TResult Function(OnboardingContentBlockImageDao value)? image,
    TResult Function(OnboardingContentBlockSvgDao value)? svg,
    TResult Function(OnboardingContentBlockLinkButtonDao value)? linkButton,
    TResult Function(OnboardingContentBlockSubscribeButtonDao value)?
        subscribeButton,
    TResult Function(OnboardingContentBlockGroupDao value)? group,
    TResult Function(OnboardingContentBlockNumberedListDao value)? numberedList,
    TResult Function(OnboardingContentBlockListDao value)? list,
    TResult Function(OnboardingContentBlockRateDialogDao value)? rateDialog,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OnboardingContentBlockDaoCopyWith<OnboardingContentBlockDao> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OnboardingContentBlockDaoCopyWith<$Res> {
  factory $OnboardingContentBlockDaoCopyWith(OnboardingContentBlockDao value,
          $Res Function(OnboardingContentBlockDao) then) =
      _$OnboardingContentBlockDaoCopyWithImpl<$Res, OnboardingContentBlockDao>;
  @useResult
  $Res call(
      {String id,
      @JsonKey(name: 'story') String parentId,
      @JsonKey(name: 'sort_id') int sortId});
}

/// @nodoc
class _$OnboardingContentBlockDaoCopyWithImpl<$Res,
        $Val extends OnboardingContentBlockDao>
    implements $OnboardingContentBlockDaoCopyWith<$Res> {
  _$OnboardingContentBlockDaoCopyWithImpl(this._value, this._then);

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
abstract class _$$OnboardingContentBlockTitleDaoImplCopyWith<$Res>
    implements $OnboardingContentBlockDaoCopyWith<$Res> {
  factory _$$OnboardingContentBlockTitleDaoImplCopyWith(
          _$OnboardingContentBlockTitleDaoImpl value,
          $Res Function(_$OnboardingContentBlockTitleDaoImpl) then) =
      __$$OnboardingContentBlockTitleDaoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      @JsonKey(name: 'story') String parentId,
      String title,
      @JsonKey(name: 'sort_id') int sortId});
}

/// @nodoc
class __$$OnboardingContentBlockTitleDaoImplCopyWithImpl<$Res>
    extends _$OnboardingContentBlockDaoCopyWithImpl<$Res,
        _$OnboardingContentBlockTitleDaoImpl>
    implements _$$OnboardingContentBlockTitleDaoImplCopyWith<$Res> {
  __$$OnboardingContentBlockTitleDaoImplCopyWithImpl(
      _$OnboardingContentBlockTitleDaoImpl _value,
      $Res Function(_$OnboardingContentBlockTitleDaoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? parentId = null,
    Object? title = null,
    Object? sortId = null,
  }) {
    return _then(_$OnboardingContentBlockTitleDaoImpl(
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
class _$OnboardingContentBlockTitleDaoImpl
    implements OnboardingContentBlockTitleDao {
  const _$OnboardingContentBlockTitleDaoImpl(
      {required this.id,
      @JsonKey(name: 'story') required this.parentId,
      this.title = '',
      @JsonKey(name: 'sort_id') required this.sortId,
      final String? $type})
      : $type = $type ?? 'title';

  factory _$OnboardingContentBlockTitleDaoImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$OnboardingContentBlockTitleDaoImplFromJson(json);

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
    return 'OnboardingContentBlockDao.title(id: $id, parentId: $parentId, title: $title, sortId: $sortId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnboardingContentBlockTitleDaoImpl &&
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
  _$$OnboardingContentBlockTitleDaoImplCopyWith<
          _$OnboardingContentBlockTitleDaoImpl>
      get copyWith => __$$OnboardingContentBlockTitleDaoImplCopyWithImpl<
          _$OnboardingContentBlockTitleDaoImpl>(this, _$identity);

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
            OnboardingPlatformDao media,
            String link,
            @JsonKey(name: 'sort_id') int sortId)
        subscribeButton,
    required TResult Function(
            String id,
            @JsonKey(name: 'story') String parentId,
            OnboardingContentBlockDao child,
            @JsonKey(name: 'sort_id') int sortId)
        group,
    required TResult Function(
            String id,
            List<OnboardingContentBlockDao> blocks,
            @JsonKey(name: 'story') String parentId,
            @JsonKey(name: 'sort_id') int sortId)
        numberedList,
    required TResult Function(
            String id,
            List<OnboardingContentBlockDao> blocks,
            @JsonKey(name: 'story') String parentId,
            @JsonKey(name: 'sort_id') int sortId)
        list,
    required TResult Function(
            String id,
            @JsonKey(name: 'story') String parentId,
            String question,
            @JsonKey(name: 'sort_id') int sortId)
        rateDialog,
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
            OnboardingPlatformDao media,
            String link,
            @JsonKey(name: 'sort_id') int sortId)?
        subscribeButton,
    TResult? Function(
            String id,
            @JsonKey(name: 'story') String parentId,
            OnboardingContentBlockDao child,
            @JsonKey(name: 'sort_id') int sortId)?
        group,
    TResult? Function(
            String id,
            List<OnboardingContentBlockDao> blocks,
            @JsonKey(name: 'story') String parentId,
            @JsonKey(name: 'sort_id') int sortId)?
        numberedList,
    TResult? Function(
            String id,
            List<OnboardingContentBlockDao> blocks,
            @JsonKey(name: 'story') String parentId,
            @JsonKey(name: 'sort_id') int sortId)?
        list,
    TResult? Function(String id, @JsonKey(name: 'story') String parentId,
            String question, @JsonKey(name: 'sort_id') int sortId)?
        rateDialog,
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
            OnboardingPlatformDao media,
            String link,
            @JsonKey(name: 'sort_id') int sortId)?
        subscribeButton,
    TResult Function(
            String id,
            @JsonKey(name: 'story') String parentId,
            OnboardingContentBlockDao child,
            @JsonKey(name: 'sort_id') int sortId)?
        group,
    TResult Function(
            String id,
            List<OnboardingContentBlockDao> blocks,
            @JsonKey(name: 'story') String parentId,
            @JsonKey(name: 'sort_id') int sortId)?
        numberedList,
    TResult Function(
            String id,
            List<OnboardingContentBlockDao> blocks,
            @JsonKey(name: 'story') String parentId,
            @JsonKey(name: 'sort_id') int sortId)?
        list,
    TResult Function(String id, @JsonKey(name: 'story') String parentId,
            String question, @JsonKey(name: 'sort_id') int sortId)?
        rateDialog,
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
    required TResult Function(OnboardingContentBlockTitleDao value) title,
    required TResult Function(OnboardingContentBlockSubtitleDao value) subtitle,
    required TResult Function(OnboardingContentBlockMarkedSubtitleDao value)
        markedSubtitle,
    required TResult Function(OnboardingContentBlockTextFieldDao value)
        textField,
    required TResult Function(OnboardingContentBlockImageDao value) image,
    required TResult Function(OnboardingContentBlockSvgDao value) svg,
    required TResult Function(OnboardingContentBlockLinkButtonDao value)
        linkButton,
    required TResult Function(OnboardingContentBlockSubscribeButtonDao value)
        subscribeButton,
    required TResult Function(OnboardingContentBlockGroupDao value) group,
    required TResult Function(OnboardingContentBlockNumberedListDao value)
        numberedList,
    required TResult Function(OnboardingContentBlockListDao value) list,
    required TResult Function(OnboardingContentBlockRateDialogDao value)
        rateDialog,
  }) {
    return title(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OnboardingContentBlockTitleDao value)? title,
    TResult? Function(OnboardingContentBlockSubtitleDao value)? subtitle,
    TResult? Function(OnboardingContentBlockMarkedSubtitleDao value)?
        markedSubtitle,
    TResult? Function(OnboardingContentBlockTextFieldDao value)? textField,
    TResult? Function(OnboardingContentBlockImageDao value)? image,
    TResult? Function(OnboardingContentBlockSvgDao value)? svg,
    TResult? Function(OnboardingContentBlockLinkButtonDao value)? linkButton,
    TResult? Function(OnboardingContentBlockSubscribeButtonDao value)?
        subscribeButton,
    TResult? Function(OnboardingContentBlockGroupDao value)? group,
    TResult? Function(OnboardingContentBlockNumberedListDao value)?
        numberedList,
    TResult? Function(OnboardingContentBlockListDao value)? list,
    TResult? Function(OnboardingContentBlockRateDialogDao value)? rateDialog,
  }) {
    return title?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnboardingContentBlockTitleDao value)? title,
    TResult Function(OnboardingContentBlockSubtitleDao value)? subtitle,
    TResult Function(OnboardingContentBlockMarkedSubtitleDao value)?
        markedSubtitle,
    TResult Function(OnboardingContentBlockTextFieldDao value)? textField,
    TResult Function(OnboardingContentBlockImageDao value)? image,
    TResult Function(OnboardingContentBlockSvgDao value)? svg,
    TResult Function(OnboardingContentBlockLinkButtonDao value)? linkButton,
    TResult Function(OnboardingContentBlockSubscribeButtonDao value)?
        subscribeButton,
    TResult Function(OnboardingContentBlockGroupDao value)? group,
    TResult Function(OnboardingContentBlockNumberedListDao value)? numberedList,
    TResult Function(OnboardingContentBlockListDao value)? list,
    TResult Function(OnboardingContentBlockRateDialogDao value)? rateDialog,
    required TResult orElse(),
  }) {
    if (title != null) {
      return title(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$OnboardingContentBlockTitleDaoImplToJson(
      this,
    );
  }
}

abstract class OnboardingContentBlockTitleDao
    implements OnboardingContentBlockDao {
  const factory OnboardingContentBlockTitleDao(
          {required final String id,
          @JsonKey(name: 'story') required final String parentId,
          final String title,
          @JsonKey(name: 'sort_id') required final int sortId}) =
      _$OnboardingContentBlockTitleDaoImpl;

  factory OnboardingContentBlockTitleDao.fromJson(Map<String, dynamic> json) =
      _$OnboardingContentBlockTitleDaoImpl.fromJson;

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
  _$$OnboardingContentBlockTitleDaoImplCopyWith<
          _$OnboardingContentBlockTitleDaoImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OnboardingContentBlockSubtitleDaoImplCopyWith<$Res>
    implements $OnboardingContentBlockDaoCopyWith<$Res> {
  factory _$$OnboardingContentBlockSubtitleDaoImplCopyWith(
          _$OnboardingContentBlockSubtitleDaoImpl value,
          $Res Function(_$OnboardingContentBlockSubtitleDaoImpl) then) =
      __$$OnboardingContentBlockSubtitleDaoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      @JsonKey(name: 'story') String parentId,
      String subtitle,
      @JsonKey(name: 'sort_id') int sortId});
}

/// @nodoc
class __$$OnboardingContentBlockSubtitleDaoImplCopyWithImpl<$Res>
    extends _$OnboardingContentBlockDaoCopyWithImpl<$Res,
        _$OnboardingContentBlockSubtitleDaoImpl>
    implements _$$OnboardingContentBlockSubtitleDaoImplCopyWith<$Res> {
  __$$OnboardingContentBlockSubtitleDaoImplCopyWithImpl(
      _$OnboardingContentBlockSubtitleDaoImpl _value,
      $Res Function(_$OnboardingContentBlockSubtitleDaoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? parentId = null,
    Object? subtitle = null,
    Object? sortId = null,
  }) {
    return _then(_$OnboardingContentBlockSubtitleDaoImpl(
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
class _$OnboardingContentBlockSubtitleDaoImpl
    implements OnboardingContentBlockSubtitleDao {
  const _$OnboardingContentBlockSubtitleDaoImpl(
      {required this.id,
      @JsonKey(name: 'story') required this.parentId,
      this.subtitle = '',
      @JsonKey(name: 'sort_id') required this.sortId,
      final String? $type})
      : $type = $type ?? 'subtitle';

  factory _$OnboardingContentBlockSubtitleDaoImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$OnboardingContentBlockSubtitleDaoImplFromJson(json);

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
    return 'OnboardingContentBlockDao.subtitle(id: $id, parentId: $parentId, subtitle: $subtitle, sortId: $sortId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnboardingContentBlockSubtitleDaoImpl &&
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
  _$$OnboardingContentBlockSubtitleDaoImplCopyWith<
          _$OnboardingContentBlockSubtitleDaoImpl>
      get copyWith => __$$OnboardingContentBlockSubtitleDaoImplCopyWithImpl<
          _$OnboardingContentBlockSubtitleDaoImpl>(this, _$identity);

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
            OnboardingPlatformDao media,
            String link,
            @JsonKey(name: 'sort_id') int sortId)
        subscribeButton,
    required TResult Function(
            String id,
            @JsonKey(name: 'story') String parentId,
            OnboardingContentBlockDao child,
            @JsonKey(name: 'sort_id') int sortId)
        group,
    required TResult Function(
            String id,
            List<OnboardingContentBlockDao> blocks,
            @JsonKey(name: 'story') String parentId,
            @JsonKey(name: 'sort_id') int sortId)
        numberedList,
    required TResult Function(
            String id,
            List<OnboardingContentBlockDao> blocks,
            @JsonKey(name: 'story') String parentId,
            @JsonKey(name: 'sort_id') int sortId)
        list,
    required TResult Function(
            String id,
            @JsonKey(name: 'story') String parentId,
            String question,
            @JsonKey(name: 'sort_id') int sortId)
        rateDialog,
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
            OnboardingPlatformDao media,
            String link,
            @JsonKey(name: 'sort_id') int sortId)?
        subscribeButton,
    TResult? Function(
            String id,
            @JsonKey(name: 'story') String parentId,
            OnboardingContentBlockDao child,
            @JsonKey(name: 'sort_id') int sortId)?
        group,
    TResult? Function(
            String id,
            List<OnboardingContentBlockDao> blocks,
            @JsonKey(name: 'story') String parentId,
            @JsonKey(name: 'sort_id') int sortId)?
        numberedList,
    TResult? Function(
            String id,
            List<OnboardingContentBlockDao> blocks,
            @JsonKey(name: 'story') String parentId,
            @JsonKey(name: 'sort_id') int sortId)?
        list,
    TResult? Function(String id, @JsonKey(name: 'story') String parentId,
            String question, @JsonKey(name: 'sort_id') int sortId)?
        rateDialog,
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
            OnboardingPlatformDao media,
            String link,
            @JsonKey(name: 'sort_id') int sortId)?
        subscribeButton,
    TResult Function(
            String id,
            @JsonKey(name: 'story') String parentId,
            OnboardingContentBlockDao child,
            @JsonKey(name: 'sort_id') int sortId)?
        group,
    TResult Function(
            String id,
            List<OnboardingContentBlockDao> blocks,
            @JsonKey(name: 'story') String parentId,
            @JsonKey(name: 'sort_id') int sortId)?
        numberedList,
    TResult Function(
            String id,
            List<OnboardingContentBlockDao> blocks,
            @JsonKey(name: 'story') String parentId,
            @JsonKey(name: 'sort_id') int sortId)?
        list,
    TResult Function(String id, @JsonKey(name: 'story') String parentId,
            String question, @JsonKey(name: 'sort_id') int sortId)?
        rateDialog,
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
    required TResult Function(OnboardingContentBlockTitleDao value) title,
    required TResult Function(OnboardingContentBlockSubtitleDao value) subtitle,
    required TResult Function(OnboardingContentBlockMarkedSubtitleDao value)
        markedSubtitle,
    required TResult Function(OnboardingContentBlockTextFieldDao value)
        textField,
    required TResult Function(OnboardingContentBlockImageDao value) image,
    required TResult Function(OnboardingContentBlockSvgDao value) svg,
    required TResult Function(OnboardingContentBlockLinkButtonDao value)
        linkButton,
    required TResult Function(OnboardingContentBlockSubscribeButtonDao value)
        subscribeButton,
    required TResult Function(OnboardingContentBlockGroupDao value) group,
    required TResult Function(OnboardingContentBlockNumberedListDao value)
        numberedList,
    required TResult Function(OnboardingContentBlockListDao value) list,
    required TResult Function(OnboardingContentBlockRateDialogDao value)
        rateDialog,
  }) {
    return subtitle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OnboardingContentBlockTitleDao value)? title,
    TResult? Function(OnboardingContentBlockSubtitleDao value)? subtitle,
    TResult? Function(OnboardingContentBlockMarkedSubtitleDao value)?
        markedSubtitle,
    TResult? Function(OnboardingContentBlockTextFieldDao value)? textField,
    TResult? Function(OnboardingContentBlockImageDao value)? image,
    TResult? Function(OnboardingContentBlockSvgDao value)? svg,
    TResult? Function(OnboardingContentBlockLinkButtonDao value)? linkButton,
    TResult? Function(OnboardingContentBlockSubscribeButtonDao value)?
        subscribeButton,
    TResult? Function(OnboardingContentBlockGroupDao value)? group,
    TResult? Function(OnboardingContentBlockNumberedListDao value)?
        numberedList,
    TResult? Function(OnboardingContentBlockListDao value)? list,
    TResult? Function(OnboardingContentBlockRateDialogDao value)? rateDialog,
  }) {
    return subtitle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnboardingContentBlockTitleDao value)? title,
    TResult Function(OnboardingContentBlockSubtitleDao value)? subtitle,
    TResult Function(OnboardingContentBlockMarkedSubtitleDao value)?
        markedSubtitle,
    TResult Function(OnboardingContentBlockTextFieldDao value)? textField,
    TResult Function(OnboardingContentBlockImageDao value)? image,
    TResult Function(OnboardingContentBlockSvgDao value)? svg,
    TResult Function(OnboardingContentBlockLinkButtonDao value)? linkButton,
    TResult Function(OnboardingContentBlockSubscribeButtonDao value)?
        subscribeButton,
    TResult Function(OnboardingContentBlockGroupDao value)? group,
    TResult Function(OnboardingContentBlockNumberedListDao value)? numberedList,
    TResult Function(OnboardingContentBlockListDao value)? list,
    TResult Function(OnboardingContentBlockRateDialogDao value)? rateDialog,
    required TResult orElse(),
  }) {
    if (subtitle != null) {
      return subtitle(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$OnboardingContentBlockSubtitleDaoImplToJson(
      this,
    );
  }
}

abstract class OnboardingContentBlockSubtitleDao
    implements OnboardingContentBlockDao {
  const factory OnboardingContentBlockSubtitleDao(
          {required final String id,
          @JsonKey(name: 'story') required final String parentId,
          final String subtitle,
          @JsonKey(name: 'sort_id') required final int sortId}) =
      _$OnboardingContentBlockSubtitleDaoImpl;

  factory OnboardingContentBlockSubtitleDao.fromJson(
          Map<String, dynamic> json) =
      _$OnboardingContentBlockSubtitleDaoImpl.fromJson;

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
  _$$OnboardingContentBlockSubtitleDaoImplCopyWith<
          _$OnboardingContentBlockSubtitleDaoImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OnboardingContentBlockMarkedSubtitleDaoImplCopyWith<$Res>
    implements $OnboardingContentBlockDaoCopyWith<$Res> {
  factory _$$OnboardingContentBlockMarkedSubtitleDaoImplCopyWith(
          _$OnboardingContentBlockMarkedSubtitleDaoImpl value,
          $Res Function(_$OnboardingContentBlockMarkedSubtitleDaoImpl) then) =
      __$$OnboardingContentBlockMarkedSubtitleDaoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      @JsonKey(name: 'story') String parentId,
      String subtitle,
      @JsonKey(name: 'sort_id') int sortId});
}

/// @nodoc
class __$$OnboardingContentBlockMarkedSubtitleDaoImplCopyWithImpl<$Res>
    extends _$OnboardingContentBlockDaoCopyWithImpl<$Res,
        _$OnboardingContentBlockMarkedSubtitleDaoImpl>
    implements _$$OnboardingContentBlockMarkedSubtitleDaoImplCopyWith<$Res> {
  __$$OnboardingContentBlockMarkedSubtitleDaoImplCopyWithImpl(
      _$OnboardingContentBlockMarkedSubtitleDaoImpl _value,
      $Res Function(_$OnboardingContentBlockMarkedSubtitleDaoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? parentId = null,
    Object? subtitle = null,
    Object? sortId = null,
  }) {
    return _then(_$OnboardingContentBlockMarkedSubtitleDaoImpl(
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
class _$OnboardingContentBlockMarkedSubtitleDaoImpl
    implements OnboardingContentBlockMarkedSubtitleDao {
  const _$OnboardingContentBlockMarkedSubtitleDaoImpl(
      {required this.id,
      @JsonKey(name: 'story') required this.parentId,
      this.subtitle = '',
      @JsonKey(name: 'sort_id') required this.sortId,
      final String? $type})
      : $type = $type ?? 'marked_subtitle';

  factory _$OnboardingContentBlockMarkedSubtitleDaoImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$OnboardingContentBlockMarkedSubtitleDaoImplFromJson(json);

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
    return 'OnboardingContentBlockDao.markedSubtitle(id: $id, parentId: $parentId, subtitle: $subtitle, sortId: $sortId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnboardingContentBlockMarkedSubtitleDaoImpl &&
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
  _$$OnboardingContentBlockMarkedSubtitleDaoImplCopyWith<
          _$OnboardingContentBlockMarkedSubtitleDaoImpl>
      get copyWith =>
          __$$OnboardingContentBlockMarkedSubtitleDaoImplCopyWithImpl<
              _$OnboardingContentBlockMarkedSubtitleDaoImpl>(this, _$identity);

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
            OnboardingPlatformDao media,
            String link,
            @JsonKey(name: 'sort_id') int sortId)
        subscribeButton,
    required TResult Function(
            String id,
            @JsonKey(name: 'story') String parentId,
            OnboardingContentBlockDao child,
            @JsonKey(name: 'sort_id') int sortId)
        group,
    required TResult Function(
            String id,
            List<OnboardingContentBlockDao> blocks,
            @JsonKey(name: 'story') String parentId,
            @JsonKey(name: 'sort_id') int sortId)
        numberedList,
    required TResult Function(
            String id,
            List<OnboardingContentBlockDao> blocks,
            @JsonKey(name: 'story') String parentId,
            @JsonKey(name: 'sort_id') int sortId)
        list,
    required TResult Function(
            String id,
            @JsonKey(name: 'story') String parentId,
            String question,
            @JsonKey(name: 'sort_id') int sortId)
        rateDialog,
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
            OnboardingPlatformDao media,
            String link,
            @JsonKey(name: 'sort_id') int sortId)?
        subscribeButton,
    TResult? Function(
            String id,
            @JsonKey(name: 'story') String parentId,
            OnboardingContentBlockDao child,
            @JsonKey(name: 'sort_id') int sortId)?
        group,
    TResult? Function(
            String id,
            List<OnboardingContentBlockDao> blocks,
            @JsonKey(name: 'story') String parentId,
            @JsonKey(name: 'sort_id') int sortId)?
        numberedList,
    TResult? Function(
            String id,
            List<OnboardingContentBlockDao> blocks,
            @JsonKey(name: 'story') String parentId,
            @JsonKey(name: 'sort_id') int sortId)?
        list,
    TResult? Function(String id, @JsonKey(name: 'story') String parentId,
            String question, @JsonKey(name: 'sort_id') int sortId)?
        rateDialog,
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
            OnboardingPlatformDao media,
            String link,
            @JsonKey(name: 'sort_id') int sortId)?
        subscribeButton,
    TResult Function(
            String id,
            @JsonKey(name: 'story') String parentId,
            OnboardingContentBlockDao child,
            @JsonKey(name: 'sort_id') int sortId)?
        group,
    TResult Function(
            String id,
            List<OnboardingContentBlockDao> blocks,
            @JsonKey(name: 'story') String parentId,
            @JsonKey(name: 'sort_id') int sortId)?
        numberedList,
    TResult Function(
            String id,
            List<OnboardingContentBlockDao> blocks,
            @JsonKey(name: 'story') String parentId,
            @JsonKey(name: 'sort_id') int sortId)?
        list,
    TResult Function(String id, @JsonKey(name: 'story') String parentId,
            String question, @JsonKey(name: 'sort_id') int sortId)?
        rateDialog,
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
    required TResult Function(OnboardingContentBlockTitleDao value) title,
    required TResult Function(OnboardingContentBlockSubtitleDao value) subtitle,
    required TResult Function(OnboardingContentBlockMarkedSubtitleDao value)
        markedSubtitle,
    required TResult Function(OnboardingContentBlockTextFieldDao value)
        textField,
    required TResult Function(OnboardingContentBlockImageDao value) image,
    required TResult Function(OnboardingContentBlockSvgDao value) svg,
    required TResult Function(OnboardingContentBlockLinkButtonDao value)
        linkButton,
    required TResult Function(OnboardingContentBlockSubscribeButtonDao value)
        subscribeButton,
    required TResult Function(OnboardingContentBlockGroupDao value) group,
    required TResult Function(OnboardingContentBlockNumberedListDao value)
        numberedList,
    required TResult Function(OnboardingContentBlockListDao value) list,
    required TResult Function(OnboardingContentBlockRateDialogDao value)
        rateDialog,
  }) {
    return markedSubtitle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OnboardingContentBlockTitleDao value)? title,
    TResult? Function(OnboardingContentBlockSubtitleDao value)? subtitle,
    TResult? Function(OnboardingContentBlockMarkedSubtitleDao value)?
        markedSubtitle,
    TResult? Function(OnboardingContentBlockTextFieldDao value)? textField,
    TResult? Function(OnboardingContentBlockImageDao value)? image,
    TResult? Function(OnboardingContentBlockSvgDao value)? svg,
    TResult? Function(OnboardingContentBlockLinkButtonDao value)? linkButton,
    TResult? Function(OnboardingContentBlockSubscribeButtonDao value)?
        subscribeButton,
    TResult? Function(OnboardingContentBlockGroupDao value)? group,
    TResult? Function(OnboardingContentBlockNumberedListDao value)?
        numberedList,
    TResult? Function(OnboardingContentBlockListDao value)? list,
    TResult? Function(OnboardingContentBlockRateDialogDao value)? rateDialog,
  }) {
    return markedSubtitle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnboardingContentBlockTitleDao value)? title,
    TResult Function(OnboardingContentBlockSubtitleDao value)? subtitle,
    TResult Function(OnboardingContentBlockMarkedSubtitleDao value)?
        markedSubtitle,
    TResult Function(OnboardingContentBlockTextFieldDao value)? textField,
    TResult Function(OnboardingContentBlockImageDao value)? image,
    TResult Function(OnboardingContentBlockSvgDao value)? svg,
    TResult Function(OnboardingContentBlockLinkButtonDao value)? linkButton,
    TResult Function(OnboardingContentBlockSubscribeButtonDao value)?
        subscribeButton,
    TResult Function(OnboardingContentBlockGroupDao value)? group,
    TResult Function(OnboardingContentBlockNumberedListDao value)? numberedList,
    TResult Function(OnboardingContentBlockListDao value)? list,
    TResult Function(OnboardingContentBlockRateDialogDao value)? rateDialog,
    required TResult orElse(),
  }) {
    if (markedSubtitle != null) {
      return markedSubtitle(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$OnboardingContentBlockMarkedSubtitleDaoImplToJson(
      this,
    );
  }
}

abstract class OnboardingContentBlockMarkedSubtitleDao
    implements OnboardingContentBlockDao {
  const factory OnboardingContentBlockMarkedSubtitleDao(
          {required final String id,
          @JsonKey(name: 'story') required final String parentId,
          final String subtitle,
          @JsonKey(name: 'sort_id') required final int sortId}) =
      _$OnboardingContentBlockMarkedSubtitleDaoImpl;

  factory OnboardingContentBlockMarkedSubtitleDao.fromJson(
          Map<String, dynamic> json) =
      _$OnboardingContentBlockMarkedSubtitleDaoImpl.fromJson;

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
  _$$OnboardingContentBlockMarkedSubtitleDaoImplCopyWith<
          _$OnboardingContentBlockMarkedSubtitleDaoImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OnboardingContentBlockTextFieldDaoImplCopyWith<$Res>
    implements $OnboardingContentBlockDaoCopyWith<$Res> {
  factory _$$OnboardingContentBlockTextFieldDaoImplCopyWith(
          _$OnboardingContentBlockTextFieldDaoImpl value,
          $Res Function(_$OnboardingContentBlockTextFieldDaoImpl) then) =
      __$$OnboardingContentBlockTextFieldDaoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      @JsonKey(name: 'story', readValue: _readGroup) String parentId,
      String content,
      @JsonKey(name: 'sort_id') int sortId});
}

/// @nodoc
class __$$OnboardingContentBlockTextFieldDaoImplCopyWithImpl<$Res>
    extends _$OnboardingContentBlockDaoCopyWithImpl<$Res,
        _$OnboardingContentBlockTextFieldDaoImpl>
    implements _$$OnboardingContentBlockTextFieldDaoImplCopyWith<$Res> {
  __$$OnboardingContentBlockTextFieldDaoImplCopyWithImpl(
      _$OnboardingContentBlockTextFieldDaoImpl _value,
      $Res Function(_$OnboardingContentBlockTextFieldDaoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? parentId = null,
    Object? content = null,
    Object? sortId = null,
  }) {
    return _then(_$OnboardingContentBlockTextFieldDaoImpl(
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
class _$OnboardingContentBlockTextFieldDaoImpl
    implements OnboardingContentBlockTextFieldDao {
  const _$OnboardingContentBlockTextFieldDaoImpl(
      {required this.id,
      @JsonKey(name: 'story', readValue: _readGroup) required this.parentId,
      this.content = '',
      @JsonKey(name: 'sort_id') required this.sortId,
      final String? $type})
      : $type = $type ?? 'text_field';

  factory _$OnboardingContentBlockTextFieldDaoImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$OnboardingContentBlockTextFieldDaoImplFromJson(json);

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
    return 'OnboardingContentBlockDao.textField(id: $id, parentId: $parentId, content: $content, sortId: $sortId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnboardingContentBlockTextFieldDaoImpl &&
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
  _$$OnboardingContentBlockTextFieldDaoImplCopyWith<
          _$OnboardingContentBlockTextFieldDaoImpl>
      get copyWith => __$$OnboardingContentBlockTextFieldDaoImplCopyWithImpl<
          _$OnboardingContentBlockTextFieldDaoImpl>(this, _$identity);

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
            OnboardingPlatformDao media,
            String link,
            @JsonKey(name: 'sort_id') int sortId)
        subscribeButton,
    required TResult Function(
            String id,
            @JsonKey(name: 'story') String parentId,
            OnboardingContentBlockDao child,
            @JsonKey(name: 'sort_id') int sortId)
        group,
    required TResult Function(
            String id,
            List<OnboardingContentBlockDao> blocks,
            @JsonKey(name: 'story') String parentId,
            @JsonKey(name: 'sort_id') int sortId)
        numberedList,
    required TResult Function(
            String id,
            List<OnboardingContentBlockDao> blocks,
            @JsonKey(name: 'story') String parentId,
            @JsonKey(name: 'sort_id') int sortId)
        list,
    required TResult Function(
            String id,
            @JsonKey(name: 'story') String parentId,
            String question,
            @JsonKey(name: 'sort_id') int sortId)
        rateDialog,
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
            OnboardingPlatformDao media,
            String link,
            @JsonKey(name: 'sort_id') int sortId)?
        subscribeButton,
    TResult? Function(
            String id,
            @JsonKey(name: 'story') String parentId,
            OnboardingContentBlockDao child,
            @JsonKey(name: 'sort_id') int sortId)?
        group,
    TResult? Function(
            String id,
            List<OnboardingContentBlockDao> blocks,
            @JsonKey(name: 'story') String parentId,
            @JsonKey(name: 'sort_id') int sortId)?
        numberedList,
    TResult? Function(
            String id,
            List<OnboardingContentBlockDao> blocks,
            @JsonKey(name: 'story') String parentId,
            @JsonKey(name: 'sort_id') int sortId)?
        list,
    TResult? Function(String id, @JsonKey(name: 'story') String parentId,
            String question, @JsonKey(name: 'sort_id') int sortId)?
        rateDialog,
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
            OnboardingPlatformDao media,
            String link,
            @JsonKey(name: 'sort_id') int sortId)?
        subscribeButton,
    TResult Function(
            String id,
            @JsonKey(name: 'story') String parentId,
            OnboardingContentBlockDao child,
            @JsonKey(name: 'sort_id') int sortId)?
        group,
    TResult Function(
            String id,
            List<OnboardingContentBlockDao> blocks,
            @JsonKey(name: 'story') String parentId,
            @JsonKey(name: 'sort_id') int sortId)?
        numberedList,
    TResult Function(
            String id,
            List<OnboardingContentBlockDao> blocks,
            @JsonKey(name: 'story') String parentId,
            @JsonKey(name: 'sort_id') int sortId)?
        list,
    TResult Function(String id, @JsonKey(name: 'story') String parentId,
            String question, @JsonKey(name: 'sort_id') int sortId)?
        rateDialog,
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
    required TResult Function(OnboardingContentBlockTitleDao value) title,
    required TResult Function(OnboardingContentBlockSubtitleDao value) subtitle,
    required TResult Function(OnboardingContentBlockMarkedSubtitleDao value)
        markedSubtitle,
    required TResult Function(OnboardingContentBlockTextFieldDao value)
        textField,
    required TResult Function(OnboardingContentBlockImageDao value) image,
    required TResult Function(OnboardingContentBlockSvgDao value) svg,
    required TResult Function(OnboardingContentBlockLinkButtonDao value)
        linkButton,
    required TResult Function(OnboardingContentBlockSubscribeButtonDao value)
        subscribeButton,
    required TResult Function(OnboardingContentBlockGroupDao value) group,
    required TResult Function(OnboardingContentBlockNumberedListDao value)
        numberedList,
    required TResult Function(OnboardingContentBlockListDao value) list,
    required TResult Function(OnboardingContentBlockRateDialogDao value)
        rateDialog,
  }) {
    return textField(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OnboardingContentBlockTitleDao value)? title,
    TResult? Function(OnboardingContentBlockSubtitleDao value)? subtitle,
    TResult? Function(OnboardingContentBlockMarkedSubtitleDao value)?
        markedSubtitle,
    TResult? Function(OnboardingContentBlockTextFieldDao value)? textField,
    TResult? Function(OnboardingContentBlockImageDao value)? image,
    TResult? Function(OnboardingContentBlockSvgDao value)? svg,
    TResult? Function(OnboardingContentBlockLinkButtonDao value)? linkButton,
    TResult? Function(OnboardingContentBlockSubscribeButtonDao value)?
        subscribeButton,
    TResult? Function(OnboardingContentBlockGroupDao value)? group,
    TResult? Function(OnboardingContentBlockNumberedListDao value)?
        numberedList,
    TResult? Function(OnboardingContentBlockListDao value)? list,
    TResult? Function(OnboardingContentBlockRateDialogDao value)? rateDialog,
  }) {
    return textField?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnboardingContentBlockTitleDao value)? title,
    TResult Function(OnboardingContentBlockSubtitleDao value)? subtitle,
    TResult Function(OnboardingContentBlockMarkedSubtitleDao value)?
        markedSubtitle,
    TResult Function(OnboardingContentBlockTextFieldDao value)? textField,
    TResult Function(OnboardingContentBlockImageDao value)? image,
    TResult Function(OnboardingContentBlockSvgDao value)? svg,
    TResult Function(OnboardingContentBlockLinkButtonDao value)? linkButton,
    TResult Function(OnboardingContentBlockSubscribeButtonDao value)?
        subscribeButton,
    TResult Function(OnboardingContentBlockGroupDao value)? group,
    TResult Function(OnboardingContentBlockNumberedListDao value)? numberedList,
    TResult Function(OnboardingContentBlockListDao value)? list,
    TResult Function(OnboardingContentBlockRateDialogDao value)? rateDialog,
    required TResult orElse(),
  }) {
    if (textField != null) {
      return textField(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$OnboardingContentBlockTextFieldDaoImplToJson(
      this,
    );
  }
}

abstract class OnboardingContentBlockTextFieldDao
    implements OnboardingContentBlockDao {
  const factory OnboardingContentBlockTextFieldDao(
          {required final String id,
          @JsonKey(name: 'story', readValue: _readGroup)
          required final String parentId,
          final String content,
          @JsonKey(name: 'sort_id') required final int sortId}) =
      _$OnboardingContentBlockTextFieldDaoImpl;

  factory OnboardingContentBlockTextFieldDao.fromJson(
          Map<String, dynamic> json) =
      _$OnboardingContentBlockTextFieldDaoImpl.fromJson;

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
  _$$OnboardingContentBlockTextFieldDaoImplCopyWith<
          _$OnboardingContentBlockTextFieldDaoImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OnboardingContentBlockImageDaoImplCopyWith<$Res>
    implements $OnboardingContentBlockDaoCopyWith<$Res> {
  factory _$$OnboardingContentBlockImageDaoImplCopyWith(
          _$OnboardingContentBlockImageDaoImpl value,
          $Res Function(_$OnboardingContentBlockImageDaoImpl) then) =
      __$$OnboardingContentBlockImageDaoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      @JsonKey(name: 'story', readValue: _readGroup) String parentId,
      String? image,
      @JsonKey(name: 'sort_id') int sortId});
}

/// @nodoc
class __$$OnboardingContentBlockImageDaoImplCopyWithImpl<$Res>
    extends _$OnboardingContentBlockDaoCopyWithImpl<$Res,
        _$OnboardingContentBlockImageDaoImpl>
    implements _$$OnboardingContentBlockImageDaoImplCopyWith<$Res> {
  __$$OnboardingContentBlockImageDaoImplCopyWithImpl(
      _$OnboardingContentBlockImageDaoImpl _value,
      $Res Function(_$OnboardingContentBlockImageDaoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? parentId = null,
    Object? image = freezed,
    Object? sortId = null,
  }) {
    return _then(_$OnboardingContentBlockImageDaoImpl(
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
class _$OnboardingContentBlockImageDaoImpl
    implements OnboardingContentBlockImageDao {
  const _$OnboardingContentBlockImageDaoImpl(
      {required this.id,
      @JsonKey(name: 'story', readValue: _readGroup) required this.parentId,
      this.image,
      @JsonKey(name: 'sort_id') required this.sortId,
      final String? $type})
      : $type = $type ?? 'image';

  factory _$OnboardingContentBlockImageDaoImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$OnboardingContentBlockImageDaoImplFromJson(json);

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
    return 'OnboardingContentBlockDao.image(id: $id, parentId: $parentId, image: $image, sortId: $sortId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnboardingContentBlockImageDaoImpl &&
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
  _$$OnboardingContentBlockImageDaoImplCopyWith<
          _$OnboardingContentBlockImageDaoImpl>
      get copyWith => __$$OnboardingContentBlockImageDaoImplCopyWithImpl<
          _$OnboardingContentBlockImageDaoImpl>(this, _$identity);

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
            OnboardingPlatformDao media,
            String link,
            @JsonKey(name: 'sort_id') int sortId)
        subscribeButton,
    required TResult Function(
            String id,
            @JsonKey(name: 'story') String parentId,
            OnboardingContentBlockDao child,
            @JsonKey(name: 'sort_id') int sortId)
        group,
    required TResult Function(
            String id,
            List<OnboardingContentBlockDao> blocks,
            @JsonKey(name: 'story') String parentId,
            @JsonKey(name: 'sort_id') int sortId)
        numberedList,
    required TResult Function(
            String id,
            List<OnboardingContentBlockDao> blocks,
            @JsonKey(name: 'story') String parentId,
            @JsonKey(name: 'sort_id') int sortId)
        list,
    required TResult Function(
            String id,
            @JsonKey(name: 'story') String parentId,
            String question,
            @JsonKey(name: 'sort_id') int sortId)
        rateDialog,
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
            OnboardingPlatformDao media,
            String link,
            @JsonKey(name: 'sort_id') int sortId)?
        subscribeButton,
    TResult? Function(
            String id,
            @JsonKey(name: 'story') String parentId,
            OnboardingContentBlockDao child,
            @JsonKey(name: 'sort_id') int sortId)?
        group,
    TResult? Function(
            String id,
            List<OnboardingContentBlockDao> blocks,
            @JsonKey(name: 'story') String parentId,
            @JsonKey(name: 'sort_id') int sortId)?
        numberedList,
    TResult? Function(
            String id,
            List<OnboardingContentBlockDao> blocks,
            @JsonKey(name: 'story') String parentId,
            @JsonKey(name: 'sort_id') int sortId)?
        list,
    TResult? Function(String id, @JsonKey(name: 'story') String parentId,
            String question, @JsonKey(name: 'sort_id') int sortId)?
        rateDialog,
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
            OnboardingPlatformDao media,
            String link,
            @JsonKey(name: 'sort_id') int sortId)?
        subscribeButton,
    TResult Function(
            String id,
            @JsonKey(name: 'story') String parentId,
            OnboardingContentBlockDao child,
            @JsonKey(name: 'sort_id') int sortId)?
        group,
    TResult Function(
            String id,
            List<OnboardingContentBlockDao> blocks,
            @JsonKey(name: 'story') String parentId,
            @JsonKey(name: 'sort_id') int sortId)?
        numberedList,
    TResult Function(
            String id,
            List<OnboardingContentBlockDao> blocks,
            @JsonKey(name: 'story') String parentId,
            @JsonKey(name: 'sort_id') int sortId)?
        list,
    TResult Function(String id, @JsonKey(name: 'story') String parentId,
            String question, @JsonKey(name: 'sort_id') int sortId)?
        rateDialog,
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
    required TResult Function(OnboardingContentBlockTitleDao value) title,
    required TResult Function(OnboardingContentBlockSubtitleDao value) subtitle,
    required TResult Function(OnboardingContentBlockMarkedSubtitleDao value)
        markedSubtitle,
    required TResult Function(OnboardingContentBlockTextFieldDao value)
        textField,
    required TResult Function(OnboardingContentBlockImageDao value) image,
    required TResult Function(OnboardingContentBlockSvgDao value) svg,
    required TResult Function(OnboardingContentBlockLinkButtonDao value)
        linkButton,
    required TResult Function(OnboardingContentBlockSubscribeButtonDao value)
        subscribeButton,
    required TResult Function(OnboardingContentBlockGroupDao value) group,
    required TResult Function(OnboardingContentBlockNumberedListDao value)
        numberedList,
    required TResult Function(OnboardingContentBlockListDao value) list,
    required TResult Function(OnboardingContentBlockRateDialogDao value)
        rateDialog,
  }) {
    return image(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OnboardingContentBlockTitleDao value)? title,
    TResult? Function(OnboardingContentBlockSubtitleDao value)? subtitle,
    TResult? Function(OnboardingContentBlockMarkedSubtitleDao value)?
        markedSubtitle,
    TResult? Function(OnboardingContentBlockTextFieldDao value)? textField,
    TResult? Function(OnboardingContentBlockImageDao value)? image,
    TResult? Function(OnboardingContentBlockSvgDao value)? svg,
    TResult? Function(OnboardingContentBlockLinkButtonDao value)? linkButton,
    TResult? Function(OnboardingContentBlockSubscribeButtonDao value)?
        subscribeButton,
    TResult? Function(OnboardingContentBlockGroupDao value)? group,
    TResult? Function(OnboardingContentBlockNumberedListDao value)?
        numberedList,
    TResult? Function(OnboardingContentBlockListDao value)? list,
    TResult? Function(OnboardingContentBlockRateDialogDao value)? rateDialog,
  }) {
    return image?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnboardingContentBlockTitleDao value)? title,
    TResult Function(OnboardingContentBlockSubtitleDao value)? subtitle,
    TResult Function(OnboardingContentBlockMarkedSubtitleDao value)?
        markedSubtitle,
    TResult Function(OnboardingContentBlockTextFieldDao value)? textField,
    TResult Function(OnboardingContentBlockImageDao value)? image,
    TResult Function(OnboardingContentBlockSvgDao value)? svg,
    TResult Function(OnboardingContentBlockLinkButtonDao value)? linkButton,
    TResult Function(OnboardingContentBlockSubscribeButtonDao value)?
        subscribeButton,
    TResult Function(OnboardingContentBlockGroupDao value)? group,
    TResult Function(OnboardingContentBlockNumberedListDao value)? numberedList,
    TResult Function(OnboardingContentBlockListDao value)? list,
    TResult Function(OnboardingContentBlockRateDialogDao value)? rateDialog,
    required TResult orElse(),
  }) {
    if (image != null) {
      return image(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$OnboardingContentBlockImageDaoImplToJson(
      this,
    );
  }
}

abstract class OnboardingContentBlockImageDao
    implements OnboardingContentBlockDao {
  const factory OnboardingContentBlockImageDao(
          {required final String id,
          @JsonKey(name: 'story', readValue: _readGroup)
          required final String parentId,
          final String? image,
          @JsonKey(name: 'sort_id') required final int sortId}) =
      _$OnboardingContentBlockImageDaoImpl;

  factory OnboardingContentBlockImageDao.fromJson(Map<String, dynamic> json) =
      _$OnboardingContentBlockImageDaoImpl.fromJson;

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
  _$$OnboardingContentBlockImageDaoImplCopyWith<
          _$OnboardingContentBlockImageDaoImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OnboardingContentBlockSvgDaoImplCopyWith<$Res>
    implements $OnboardingContentBlockDaoCopyWith<$Res> {
  factory _$$OnboardingContentBlockSvgDaoImplCopyWith(
          _$OnboardingContentBlockSvgDaoImpl value,
          $Res Function(_$OnboardingContentBlockSvgDaoImpl) then) =
      __$$OnboardingContentBlockSvgDaoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      @JsonKey(name: 'story') String parentId,
      String image,
      @JsonKey(name: 'sort_id') int sortId});
}

/// @nodoc
class __$$OnboardingContentBlockSvgDaoImplCopyWithImpl<$Res>
    extends _$OnboardingContentBlockDaoCopyWithImpl<$Res,
        _$OnboardingContentBlockSvgDaoImpl>
    implements _$$OnboardingContentBlockSvgDaoImplCopyWith<$Res> {
  __$$OnboardingContentBlockSvgDaoImplCopyWithImpl(
      _$OnboardingContentBlockSvgDaoImpl _value,
      $Res Function(_$OnboardingContentBlockSvgDaoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? parentId = null,
    Object? image = null,
    Object? sortId = null,
  }) {
    return _then(_$OnboardingContentBlockSvgDaoImpl(
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
class _$OnboardingContentBlockSvgDaoImpl
    implements OnboardingContentBlockSvgDao {
  const _$OnboardingContentBlockSvgDaoImpl(
      {required this.id,
      @JsonKey(name: 'story') required this.parentId,
      required this.image,
      @JsonKey(name: 'sort_id') required this.sortId,
      final String? $type})
      : $type = $type ?? 'svg';

  factory _$OnboardingContentBlockSvgDaoImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$OnboardingContentBlockSvgDaoImplFromJson(json);

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
    return 'OnboardingContentBlockDao.svg(id: $id, parentId: $parentId, image: $image, sortId: $sortId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnboardingContentBlockSvgDaoImpl &&
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
  _$$OnboardingContentBlockSvgDaoImplCopyWith<
          _$OnboardingContentBlockSvgDaoImpl>
      get copyWith => __$$OnboardingContentBlockSvgDaoImplCopyWithImpl<
          _$OnboardingContentBlockSvgDaoImpl>(this, _$identity);

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
            OnboardingPlatformDao media,
            String link,
            @JsonKey(name: 'sort_id') int sortId)
        subscribeButton,
    required TResult Function(
            String id,
            @JsonKey(name: 'story') String parentId,
            OnboardingContentBlockDao child,
            @JsonKey(name: 'sort_id') int sortId)
        group,
    required TResult Function(
            String id,
            List<OnboardingContentBlockDao> blocks,
            @JsonKey(name: 'story') String parentId,
            @JsonKey(name: 'sort_id') int sortId)
        numberedList,
    required TResult Function(
            String id,
            List<OnboardingContentBlockDao> blocks,
            @JsonKey(name: 'story') String parentId,
            @JsonKey(name: 'sort_id') int sortId)
        list,
    required TResult Function(
            String id,
            @JsonKey(name: 'story') String parentId,
            String question,
            @JsonKey(name: 'sort_id') int sortId)
        rateDialog,
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
            OnboardingPlatformDao media,
            String link,
            @JsonKey(name: 'sort_id') int sortId)?
        subscribeButton,
    TResult? Function(
            String id,
            @JsonKey(name: 'story') String parentId,
            OnboardingContentBlockDao child,
            @JsonKey(name: 'sort_id') int sortId)?
        group,
    TResult? Function(
            String id,
            List<OnboardingContentBlockDao> blocks,
            @JsonKey(name: 'story') String parentId,
            @JsonKey(name: 'sort_id') int sortId)?
        numberedList,
    TResult? Function(
            String id,
            List<OnboardingContentBlockDao> blocks,
            @JsonKey(name: 'story') String parentId,
            @JsonKey(name: 'sort_id') int sortId)?
        list,
    TResult? Function(String id, @JsonKey(name: 'story') String parentId,
            String question, @JsonKey(name: 'sort_id') int sortId)?
        rateDialog,
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
            OnboardingPlatformDao media,
            String link,
            @JsonKey(name: 'sort_id') int sortId)?
        subscribeButton,
    TResult Function(
            String id,
            @JsonKey(name: 'story') String parentId,
            OnboardingContentBlockDao child,
            @JsonKey(name: 'sort_id') int sortId)?
        group,
    TResult Function(
            String id,
            List<OnboardingContentBlockDao> blocks,
            @JsonKey(name: 'story') String parentId,
            @JsonKey(name: 'sort_id') int sortId)?
        numberedList,
    TResult Function(
            String id,
            List<OnboardingContentBlockDao> blocks,
            @JsonKey(name: 'story') String parentId,
            @JsonKey(name: 'sort_id') int sortId)?
        list,
    TResult Function(String id, @JsonKey(name: 'story') String parentId,
            String question, @JsonKey(name: 'sort_id') int sortId)?
        rateDialog,
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
    required TResult Function(OnboardingContentBlockTitleDao value) title,
    required TResult Function(OnboardingContentBlockSubtitleDao value) subtitle,
    required TResult Function(OnboardingContentBlockMarkedSubtitleDao value)
        markedSubtitle,
    required TResult Function(OnboardingContentBlockTextFieldDao value)
        textField,
    required TResult Function(OnboardingContentBlockImageDao value) image,
    required TResult Function(OnboardingContentBlockSvgDao value) svg,
    required TResult Function(OnboardingContentBlockLinkButtonDao value)
        linkButton,
    required TResult Function(OnboardingContentBlockSubscribeButtonDao value)
        subscribeButton,
    required TResult Function(OnboardingContentBlockGroupDao value) group,
    required TResult Function(OnboardingContentBlockNumberedListDao value)
        numberedList,
    required TResult Function(OnboardingContentBlockListDao value) list,
    required TResult Function(OnboardingContentBlockRateDialogDao value)
        rateDialog,
  }) {
    return svg(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OnboardingContentBlockTitleDao value)? title,
    TResult? Function(OnboardingContentBlockSubtitleDao value)? subtitle,
    TResult? Function(OnboardingContentBlockMarkedSubtitleDao value)?
        markedSubtitle,
    TResult? Function(OnboardingContentBlockTextFieldDao value)? textField,
    TResult? Function(OnboardingContentBlockImageDao value)? image,
    TResult? Function(OnboardingContentBlockSvgDao value)? svg,
    TResult? Function(OnboardingContentBlockLinkButtonDao value)? linkButton,
    TResult? Function(OnboardingContentBlockSubscribeButtonDao value)?
        subscribeButton,
    TResult? Function(OnboardingContentBlockGroupDao value)? group,
    TResult? Function(OnboardingContentBlockNumberedListDao value)?
        numberedList,
    TResult? Function(OnboardingContentBlockListDao value)? list,
    TResult? Function(OnboardingContentBlockRateDialogDao value)? rateDialog,
  }) {
    return svg?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnboardingContentBlockTitleDao value)? title,
    TResult Function(OnboardingContentBlockSubtitleDao value)? subtitle,
    TResult Function(OnboardingContentBlockMarkedSubtitleDao value)?
        markedSubtitle,
    TResult Function(OnboardingContentBlockTextFieldDao value)? textField,
    TResult Function(OnboardingContentBlockImageDao value)? image,
    TResult Function(OnboardingContentBlockSvgDao value)? svg,
    TResult Function(OnboardingContentBlockLinkButtonDao value)? linkButton,
    TResult Function(OnboardingContentBlockSubscribeButtonDao value)?
        subscribeButton,
    TResult Function(OnboardingContentBlockGroupDao value)? group,
    TResult Function(OnboardingContentBlockNumberedListDao value)? numberedList,
    TResult Function(OnboardingContentBlockListDao value)? list,
    TResult Function(OnboardingContentBlockRateDialogDao value)? rateDialog,
    required TResult orElse(),
  }) {
    if (svg != null) {
      return svg(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$OnboardingContentBlockSvgDaoImplToJson(
      this,
    );
  }
}

abstract class OnboardingContentBlockSvgDao
    implements OnboardingContentBlockDao {
  const factory OnboardingContentBlockSvgDao(
          {required final String id,
          @JsonKey(name: 'story') required final String parentId,
          required final String image,
          @JsonKey(name: 'sort_id') required final int sortId}) =
      _$OnboardingContentBlockSvgDaoImpl;

  factory OnboardingContentBlockSvgDao.fromJson(Map<String, dynamic> json) =
      _$OnboardingContentBlockSvgDaoImpl.fromJson;

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
  _$$OnboardingContentBlockSvgDaoImplCopyWith<
          _$OnboardingContentBlockSvgDaoImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OnboardingContentBlockLinkButtonDaoImplCopyWith<$Res>
    implements $OnboardingContentBlockDaoCopyWith<$Res> {
  factory _$$OnboardingContentBlockLinkButtonDaoImplCopyWith(
          _$OnboardingContentBlockLinkButtonDaoImpl value,
          $Res Function(_$OnboardingContentBlockLinkButtonDaoImpl) then) =
      __$$OnboardingContentBlockLinkButtonDaoImplCopyWithImpl<$Res>;
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
class __$$OnboardingContentBlockLinkButtonDaoImplCopyWithImpl<$Res>
    extends _$OnboardingContentBlockDaoCopyWithImpl<$Res,
        _$OnboardingContentBlockLinkButtonDaoImpl>
    implements _$$OnboardingContentBlockLinkButtonDaoImplCopyWith<$Res> {
  __$$OnboardingContentBlockLinkButtonDaoImplCopyWithImpl(
      _$OnboardingContentBlockLinkButtonDaoImpl _value,
      $Res Function(_$OnboardingContentBlockLinkButtonDaoImpl) _then)
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
    return _then(_$OnboardingContentBlockLinkButtonDaoImpl(
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
class _$OnboardingContentBlockLinkButtonDaoImpl
    implements OnboardingContentBlockLinkButtonDao {
  const _$OnboardingContentBlockLinkButtonDaoImpl(
      {required this.id,
      @JsonKey(name: 'story') required this.parentId,
      required this.link,
      @JsonKey(name: 'button_title') required this.title,
      @JsonKey(name: 'sort_id') required this.sortId,
      final String? $type})
      : $type = $type ?? 'link_button';

  factory _$OnboardingContentBlockLinkButtonDaoImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$OnboardingContentBlockLinkButtonDaoImplFromJson(json);

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
    return 'OnboardingContentBlockDao.linkButton(id: $id, parentId: $parentId, link: $link, title: $title, sortId: $sortId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnboardingContentBlockLinkButtonDaoImpl &&
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
  _$$OnboardingContentBlockLinkButtonDaoImplCopyWith<
          _$OnboardingContentBlockLinkButtonDaoImpl>
      get copyWith => __$$OnboardingContentBlockLinkButtonDaoImplCopyWithImpl<
          _$OnboardingContentBlockLinkButtonDaoImpl>(this, _$identity);

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
            OnboardingPlatformDao media,
            String link,
            @JsonKey(name: 'sort_id') int sortId)
        subscribeButton,
    required TResult Function(
            String id,
            @JsonKey(name: 'story') String parentId,
            OnboardingContentBlockDao child,
            @JsonKey(name: 'sort_id') int sortId)
        group,
    required TResult Function(
            String id,
            List<OnboardingContentBlockDao> blocks,
            @JsonKey(name: 'story') String parentId,
            @JsonKey(name: 'sort_id') int sortId)
        numberedList,
    required TResult Function(
            String id,
            List<OnboardingContentBlockDao> blocks,
            @JsonKey(name: 'story') String parentId,
            @JsonKey(name: 'sort_id') int sortId)
        list,
    required TResult Function(
            String id,
            @JsonKey(name: 'story') String parentId,
            String question,
            @JsonKey(name: 'sort_id') int sortId)
        rateDialog,
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
            OnboardingPlatformDao media,
            String link,
            @JsonKey(name: 'sort_id') int sortId)?
        subscribeButton,
    TResult? Function(
            String id,
            @JsonKey(name: 'story') String parentId,
            OnboardingContentBlockDao child,
            @JsonKey(name: 'sort_id') int sortId)?
        group,
    TResult? Function(
            String id,
            List<OnboardingContentBlockDao> blocks,
            @JsonKey(name: 'story') String parentId,
            @JsonKey(name: 'sort_id') int sortId)?
        numberedList,
    TResult? Function(
            String id,
            List<OnboardingContentBlockDao> blocks,
            @JsonKey(name: 'story') String parentId,
            @JsonKey(name: 'sort_id') int sortId)?
        list,
    TResult? Function(String id, @JsonKey(name: 'story') String parentId,
            String question, @JsonKey(name: 'sort_id') int sortId)?
        rateDialog,
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
            OnboardingPlatformDao media,
            String link,
            @JsonKey(name: 'sort_id') int sortId)?
        subscribeButton,
    TResult Function(
            String id,
            @JsonKey(name: 'story') String parentId,
            OnboardingContentBlockDao child,
            @JsonKey(name: 'sort_id') int sortId)?
        group,
    TResult Function(
            String id,
            List<OnboardingContentBlockDao> blocks,
            @JsonKey(name: 'story') String parentId,
            @JsonKey(name: 'sort_id') int sortId)?
        numberedList,
    TResult Function(
            String id,
            List<OnboardingContentBlockDao> blocks,
            @JsonKey(name: 'story') String parentId,
            @JsonKey(name: 'sort_id') int sortId)?
        list,
    TResult Function(String id, @JsonKey(name: 'story') String parentId,
            String question, @JsonKey(name: 'sort_id') int sortId)?
        rateDialog,
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
    required TResult Function(OnboardingContentBlockTitleDao value) title,
    required TResult Function(OnboardingContentBlockSubtitleDao value) subtitle,
    required TResult Function(OnboardingContentBlockMarkedSubtitleDao value)
        markedSubtitle,
    required TResult Function(OnboardingContentBlockTextFieldDao value)
        textField,
    required TResult Function(OnboardingContentBlockImageDao value) image,
    required TResult Function(OnboardingContentBlockSvgDao value) svg,
    required TResult Function(OnboardingContentBlockLinkButtonDao value)
        linkButton,
    required TResult Function(OnboardingContentBlockSubscribeButtonDao value)
        subscribeButton,
    required TResult Function(OnboardingContentBlockGroupDao value) group,
    required TResult Function(OnboardingContentBlockNumberedListDao value)
        numberedList,
    required TResult Function(OnboardingContentBlockListDao value) list,
    required TResult Function(OnboardingContentBlockRateDialogDao value)
        rateDialog,
  }) {
    return linkButton(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OnboardingContentBlockTitleDao value)? title,
    TResult? Function(OnboardingContentBlockSubtitleDao value)? subtitle,
    TResult? Function(OnboardingContentBlockMarkedSubtitleDao value)?
        markedSubtitle,
    TResult? Function(OnboardingContentBlockTextFieldDao value)? textField,
    TResult? Function(OnboardingContentBlockImageDao value)? image,
    TResult? Function(OnboardingContentBlockSvgDao value)? svg,
    TResult? Function(OnboardingContentBlockLinkButtonDao value)? linkButton,
    TResult? Function(OnboardingContentBlockSubscribeButtonDao value)?
        subscribeButton,
    TResult? Function(OnboardingContentBlockGroupDao value)? group,
    TResult? Function(OnboardingContentBlockNumberedListDao value)?
        numberedList,
    TResult? Function(OnboardingContentBlockListDao value)? list,
    TResult? Function(OnboardingContentBlockRateDialogDao value)? rateDialog,
  }) {
    return linkButton?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnboardingContentBlockTitleDao value)? title,
    TResult Function(OnboardingContentBlockSubtitleDao value)? subtitle,
    TResult Function(OnboardingContentBlockMarkedSubtitleDao value)?
        markedSubtitle,
    TResult Function(OnboardingContentBlockTextFieldDao value)? textField,
    TResult Function(OnboardingContentBlockImageDao value)? image,
    TResult Function(OnboardingContentBlockSvgDao value)? svg,
    TResult Function(OnboardingContentBlockLinkButtonDao value)? linkButton,
    TResult Function(OnboardingContentBlockSubscribeButtonDao value)?
        subscribeButton,
    TResult Function(OnboardingContentBlockGroupDao value)? group,
    TResult Function(OnboardingContentBlockNumberedListDao value)? numberedList,
    TResult Function(OnboardingContentBlockListDao value)? list,
    TResult Function(OnboardingContentBlockRateDialogDao value)? rateDialog,
    required TResult orElse(),
  }) {
    if (linkButton != null) {
      return linkButton(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$OnboardingContentBlockLinkButtonDaoImplToJson(
      this,
    );
  }
}

abstract class OnboardingContentBlockLinkButtonDao
    implements OnboardingContentBlockDao {
  const factory OnboardingContentBlockLinkButtonDao(
          {required final String id,
          @JsonKey(name: 'story') required final String parentId,
          required final String link,
          @JsonKey(name: 'button_title') required final String title,
          @JsonKey(name: 'sort_id') required final int sortId}) =
      _$OnboardingContentBlockLinkButtonDaoImpl;

  factory OnboardingContentBlockLinkButtonDao.fromJson(
          Map<String, dynamic> json) =
      _$OnboardingContentBlockLinkButtonDaoImpl.fromJson;

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
  _$$OnboardingContentBlockLinkButtonDaoImplCopyWith<
          _$OnboardingContentBlockLinkButtonDaoImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OnboardingContentBlockSubscribeButtonDaoImplCopyWith<$Res>
    implements $OnboardingContentBlockDaoCopyWith<$Res> {
  factory _$$OnboardingContentBlockSubscribeButtonDaoImplCopyWith(
          _$OnboardingContentBlockSubscribeButtonDaoImpl value,
          $Res Function(_$OnboardingContentBlockSubscribeButtonDaoImpl) then) =
      __$$OnboardingContentBlockSubscribeButtonDaoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      @JsonKey(name: 'story') String parentId,
      OnboardingPlatformDao media,
      String link,
      @JsonKey(name: 'sort_id') int sortId});
}

/// @nodoc
class __$$OnboardingContentBlockSubscribeButtonDaoImplCopyWithImpl<$Res>
    extends _$OnboardingContentBlockDaoCopyWithImpl<$Res,
        _$OnboardingContentBlockSubscribeButtonDaoImpl>
    implements _$$OnboardingContentBlockSubscribeButtonDaoImplCopyWith<$Res> {
  __$$OnboardingContentBlockSubscribeButtonDaoImplCopyWithImpl(
      _$OnboardingContentBlockSubscribeButtonDaoImpl _value,
      $Res Function(_$OnboardingContentBlockSubscribeButtonDaoImpl) _then)
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
    return _then(_$OnboardingContentBlockSubscribeButtonDaoImpl(
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
              as OnboardingPlatformDao,
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
class _$OnboardingContentBlockSubscribeButtonDaoImpl
    implements OnboardingContentBlockSubscribeButtonDao {
  const _$OnboardingContentBlockSubscribeButtonDaoImpl(
      {required this.id,
      @JsonKey(name: 'story') required this.parentId,
      required this.media,
      required this.link,
      @JsonKey(name: 'sort_id') required this.sortId,
      final String? $type})
      : $type = $type ?? 'subscribe_button';

  factory _$OnboardingContentBlockSubscribeButtonDaoImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$OnboardingContentBlockSubscribeButtonDaoImplFromJson(json);

  @override
  final String id;
  @override
  @JsonKey(name: 'story')
  final String parentId;
  @override
  final OnboardingPlatformDao media;
  @override
  final String link;
  @override
  @JsonKey(name: 'sort_id')
  final int sortId;

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'OnboardingContentBlockDao.subscribeButton(id: $id, parentId: $parentId, media: $media, link: $link, sortId: $sortId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnboardingContentBlockSubscribeButtonDaoImpl &&
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
  _$$OnboardingContentBlockSubscribeButtonDaoImplCopyWith<
          _$OnboardingContentBlockSubscribeButtonDaoImpl>
      get copyWith =>
          __$$OnboardingContentBlockSubscribeButtonDaoImplCopyWithImpl<
              _$OnboardingContentBlockSubscribeButtonDaoImpl>(this, _$identity);

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
            OnboardingPlatformDao media,
            String link,
            @JsonKey(name: 'sort_id') int sortId)
        subscribeButton,
    required TResult Function(
            String id,
            @JsonKey(name: 'story') String parentId,
            OnboardingContentBlockDao child,
            @JsonKey(name: 'sort_id') int sortId)
        group,
    required TResult Function(
            String id,
            List<OnboardingContentBlockDao> blocks,
            @JsonKey(name: 'story') String parentId,
            @JsonKey(name: 'sort_id') int sortId)
        numberedList,
    required TResult Function(
            String id,
            List<OnboardingContentBlockDao> blocks,
            @JsonKey(name: 'story') String parentId,
            @JsonKey(name: 'sort_id') int sortId)
        list,
    required TResult Function(
            String id,
            @JsonKey(name: 'story') String parentId,
            String question,
            @JsonKey(name: 'sort_id') int sortId)
        rateDialog,
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
            OnboardingPlatformDao media,
            String link,
            @JsonKey(name: 'sort_id') int sortId)?
        subscribeButton,
    TResult? Function(
            String id,
            @JsonKey(name: 'story') String parentId,
            OnboardingContentBlockDao child,
            @JsonKey(name: 'sort_id') int sortId)?
        group,
    TResult? Function(
            String id,
            List<OnboardingContentBlockDao> blocks,
            @JsonKey(name: 'story') String parentId,
            @JsonKey(name: 'sort_id') int sortId)?
        numberedList,
    TResult? Function(
            String id,
            List<OnboardingContentBlockDao> blocks,
            @JsonKey(name: 'story') String parentId,
            @JsonKey(name: 'sort_id') int sortId)?
        list,
    TResult? Function(String id, @JsonKey(name: 'story') String parentId,
            String question, @JsonKey(name: 'sort_id') int sortId)?
        rateDialog,
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
            OnboardingPlatformDao media,
            String link,
            @JsonKey(name: 'sort_id') int sortId)?
        subscribeButton,
    TResult Function(
            String id,
            @JsonKey(name: 'story') String parentId,
            OnboardingContentBlockDao child,
            @JsonKey(name: 'sort_id') int sortId)?
        group,
    TResult Function(
            String id,
            List<OnboardingContentBlockDao> blocks,
            @JsonKey(name: 'story') String parentId,
            @JsonKey(name: 'sort_id') int sortId)?
        numberedList,
    TResult Function(
            String id,
            List<OnboardingContentBlockDao> blocks,
            @JsonKey(name: 'story') String parentId,
            @JsonKey(name: 'sort_id') int sortId)?
        list,
    TResult Function(String id, @JsonKey(name: 'story') String parentId,
            String question, @JsonKey(name: 'sort_id') int sortId)?
        rateDialog,
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
    required TResult Function(OnboardingContentBlockTitleDao value) title,
    required TResult Function(OnboardingContentBlockSubtitleDao value) subtitle,
    required TResult Function(OnboardingContentBlockMarkedSubtitleDao value)
        markedSubtitle,
    required TResult Function(OnboardingContentBlockTextFieldDao value)
        textField,
    required TResult Function(OnboardingContentBlockImageDao value) image,
    required TResult Function(OnboardingContentBlockSvgDao value) svg,
    required TResult Function(OnboardingContentBlockLinkButtonDao value)
        linkButton,
    required TResult Function(OnboardingContentBlockSubscribeButtonDao value)
        subscribeButton,
    required TResult Function(OnboardingContentBlockGroupDao value) group,
    required TResult Function(OnboardingContentBlockNumberedListDao value)
        numberedList,
    required TResult Function(OnboardingContentBlockListDao value) list,
    required TResult Function(OnboardingContentBlockRateDialogDao value)
        rateDialog,
  }) {
    return subscribeButton(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OnboardingContentBlockTitleDao value)? title,
    TResult? Function(OnboardingContentBlockSubtitleDao value)? subtitle,
    TResult? Function(OnboardingContentBlockMarkedSubtitleDao value)?
        markedSubtitle,
    TResult? Function(OnboardingContentBlockTextFieldDao value)? textField,
    TResult? Function(OnboardingContentBlockImageDao value)? image,
    TResult? Function(OnboardingContentBlockSvgDao value)? svg,
    TResult? Function(OnboardingContentBlockLinkButtonDao value)? linkButton,
    TResult? Function(OnboardingContentBlockSubscribeButtonDao value)?
        subscribeButton,
    TResult? Function(OnboardingContentBlockGroupDao value)? group,
    TResult? Function(OnboardingContentBlockNumberedListDao value)?
        numberedList,
    TResult? Function(OnboardingContentBlockListDao value)? list,
    TResult? Function(OnboardingContentBlockRateDialogDao value)? rateDialog,
  }) {
    return subscribeButton?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnboardingContentBlockTitleDao value)? title,
    TResult Function(OnboardingContentBlockSubtitleDao value)? subtitle,
    TResult Function(OnboardingContentBlockMarkedSubtitleDao value)?
        markedSubtitle,
    TResult Function(OnboardingContentBlockTextFieldDao value)? textField,
    TResult Function(OnboardingContentBlockImageDao value)? image,
    TResult Function(OnboardingContentBlockSvgDao value)? svg,
    TResult Function(OnboardingContentBlockLinkButtonDao value)? linkButton,
    TResult Function(OnboardingContentBlockSubscribeButtonDao value)?
        subscribeButton,
    TResult Function(OnboardingContentBlockGroupDao value)? group,
    TResult Function(OnboardingContentBlockNumberedListDao value)? numberedList,
    TResult Function(OnboardingContentBlockListDao value)? list,
    TResult Function(OnboardingContentBlockRateDialogDao value)? rateDialog,
    required TResult orElse(),
  }) {
    if (subscribeButton != null) {
      return subscribeButton(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$OnboardingContentBlockSubscribeButtonDaoImplToJson(
      this,
    );
  }
}

abstract class OnboardingContentBlockSubscribeButtonDao
    implements OnboardingContentBlockDao {
  const factory OnboardingContentBlockSubscribeButtonDao(
          {required final String id,
          @JsonKey(name: 'story') required final String parentId,
          required final OnboardingPlatformDao media,
          required final String link,
          @JsonKey(name: 'sort_id') required final int sortId}) =
      _$OnboardingContentBlockSubscribeButtonDaoImpl;

  factory OnboardingContentBlockSubscribeButtonDao.fromJson(
          Map<String, dynamic> json) =
      _$OnboardingContentBlockSubscribeButtonDaoImpl.fromJson;

  @override
  String get id;
  @override
  @JsonKey(name: 'story')
  String get parentId;
  OnboardingPlatformDao get media;
  String get link;
  @override
  @JsonKey(name: 'sort_id')
  int get sortId;
  @override
  @JsonKey(ignore: true)
  _$$OnboardingContentBlockSubscribeButtonDaoImplCopyWith<
          _$OnboardingContentBlockSubscribeButtonDaoImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OnboardingContentBlockGroupDaoImplCopyWith<$Res>
    implements $OnboardingContentBlockDaoCopyWith<$Res> {
  factory _$$OnboardingContentBlockGroupDaoImplCopyWith(
          _$OnboardingContentBlockGroupDaoImpl value,
          $Res Function(_$OnboardingContentBlockGroupDaoImpl) then) =
      __$$OnboardingContentBlockGroupDaoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      @JsonKey(name: 'story') String parentId,
      OnboardingContentBlockDao child,
      @JsonKey(name: 'sort_id') int sortId});

  $OnboardingContentBlockDaoCopyWith<$Res> get child;
}

/// @nodoc
class __$$OnboardingContentBlockGroupDaoImplCopyWithImpl<$Res>
    extends _$OnboardingContentBlockDaoCopyWithImpl<$Res,
        _$OnboardingContentBlockGroupDaoImpl>
    implements _$$OnboardingContentBlockGroupDaoImplCopyWith<$Res> {
  __$$OnboardingContentBlockGroupDaoImplCopyWithImpl(
      _$OnboardingContentBlockGroupDaoImpl _value,
      $Res Function(_$OnboardingContentBlockGroupDaoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? parentId = null,
    Object? child = null,
    Object? sortId = null,
  }) {
    return _then(_$OnboardingContentBlockGroupDaoImpl(
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
              as OnboardingContentBlockDao,
      sortId: null == sortId
          ? _value.sortId
          : sortId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $OnboardingContentBlockDaoCopyWith<$Res> get child {
    return $OnboardingContentBlockDaoCopyWith<$Res>(_value.child, (value) {
      return _then(_value.copyWith(child: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$OnboardingContentBlockGroupDaoImpl
    implements OnboardingContentBlockGroupDao {
  const _$OnboardingContentBlockGroupDaoImpl(
      {required this.id,
      @JsonKey(name: 'story') required this.parentId,
      required this.child,
      @JsonKey(name: 'sort_id') required this.sortId,
      final String? $type})
      : $type = $type ?? 'group';

  factory _$OnboardingContentBlockGroupDaoImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$OnboardingContentBlockGroupDaoImplFromJson(json);

  @override
  final String id;
  @override
  @JsonKey(name: 'story')
  final String parentId;
  @override
  final OnboardingContentBlockDao child;
  @override
  @JsonKey(name: 'sort_id')
  final int sortId;

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'OnboardingContentBlockDao.group(id: $id, parentId: $parentId, child: $child, sortId: $sortId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnboardingContentBlockGroupDaoImpl &&
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
  _$$OnboardingContentBlockGroupDaoImplCopyWith<
          _$OnboardingContentBlockGroupDaoImpl>
      get copyWith => __$$OnboardingContentBlockGroupDaoImplCopyWithImpl<
          _$OnboardingContentBlockGroupDaoImpl>(this, _$identity);

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
            OnboardingPlatformDao media,
            String link,
            @JsonKey(name: 'sort_id') int sortId)
        subscribeButton,
    required TResult Function(
            String id,
            @JsonKey(name: 'story') String parentId,
            OnboardingContentBlockDao child,
            @JsonKey(name: 'sort_id') int sortId)
        group,
    required TResult Function(
            String id,
            List<OnboardingContentBlockDao> blocks,
            @JsonKey(name: 'story') String parentId,
            @JsonKey(name: 'sort_id') int sortId)
        numberedList,
    required TResult Function(
            String id,
            List<OnboardingContentBlockDao> blocks,
            @JsonKey(name: 'story') String parentId,
            @JsonKey(name: 'sort_id') int sortId)
        list,
    required TResult Function(
            String id,
            @JsonKey(name: 'story') String parentId,
            String question,
            @JsonKey(name: 'sort_id') int sortId)
        rateDialog,
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
            OnboardingPlatformDao media,
            String link,
            @JsonKey(name: 'sort_id') int sortId)?
        subscribeButton,
    TResult? Function(
            String id,
            @JsonKey(name: 'story') String parentId,
            OnboardingContentBlockDao child,
            @JsonKey(name: 'sort_id') int sortId)?
        group,
    TResult? Function(
            String id,
            List<OnboardingContentBlockDao> blocks,
            @JsonKey(name: 'story') String parentId,
            @JsonKey(name: 'sort_id') int sortId)?
        numberedList,
    TResult? Function(
            String id,
            List<OnboardingContentBlockDao> blocks,
            @JsonKey(name: 'story') String parentId,
            @JsonKey(name: 'sort_id') int sortId)?
        list,
    TResult? Function(String id, @JsonKey(name: 'story') String parentId,
            String question, @JsonKey(name: 'sort_id') int sortId)?
        rateDialog,
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
            OnboardingPlatformDao media,
            String link,
            @JsonKey(name: 'sort_id') int sortId)?
        subscribeButton,
    TResult Function(
            String id,
            @JsonKey(name: 'story') String parentId,
            OnboardingContentBlockDao child,
            @JsonKey(name: 'sort_id') int sortId)?
        group,
    TResult Function(
            String id,
            List<OnboardingContentBlockDao> blocks,
            @JsonKey(name: 'story') String parentId,
            @JsonKey(name: 'sort_id') int sortId)?
        numberedList,
    TResult Function(
            String id,
            List<OnboardingContentBlockDao> blocks,
            @JsonKey(name: 'story') String parentId,
            @JsonKey(name: 'sort_id') int sortId)?
        list,
    TResult Function(String id, @JsonKey(name: 'story') String parentId,
            String question, @JsonKey(name: 'sort_id') int sortId)?
        rateDialog,
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
    required TResult Function(OnboardingContentBlockTitleDao value) title,
    required TResult Function(OnboardingContentBlockSubtitleDao value) subtitle,
    required TResult Function(OnboardingContentBlockMarkedSubtitleDao value)
        markedSubtitle,
    required TResult Function(OnboardingContentBlockTextFieldDao value)
        textField,
    required TResult Function(OnboardingContentBlockImageDao value) image,
    required TResult Function(OnboardingContentBlockSvgDao value) svg,
    required TResult Function(OnboardingContentBlockLinkButtonDao value)
        linkButton,
    required TResult Function(OnboardingContentBlockSubscribeButtonDao value)
        subscribeButton,
    required TResult Function(OnboardingContentBlockGroupDao value) group,
    required TResult Function(OnboardingContentBlockNumberedListDao value)
        numberedList,
    required TResult Function(OnboardingContentBlockListDao value) list,
    required TResult Function(OnboardingContentBlockRateDialogDao value)
        rateDialog,
  }) {
    return group(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OnboardingContentBlockTitleDao value)? title,
    TResult? Function(OnboardingContentBlockSubtitleDao value)? subtitle,
    TResult? Function(OnboardingContentBlockMarkedSubtitleDao value)?
        markedSubtitle,
    TResult? Function(OnboardingContentBlockTextFieldDao value)? textField,
    TResult? Function(OnboardingContentBlockImageDao value)? image,
    TResult? Function(OnboardingContentBlockSvgDao value)? svg,
    TResult? Function(OnboardingContentBlockLinkButtonDao value)? linkButton,
    TResult? Function(OnboardingContentBlockSubscribeButtonDao value)?
        subscribeButton,
    TResult? Function(OnboardingContentBlockGroupDao value)? group,
    TResult? Function(OnboardingContentBlockNumberedListDao value)?
        numberedList,
    TResult? Function(OnboardingContentBlockListDao value)? list,
    TResult? Function(OnboardingContentBlockRateDialogDao value)? rateDialog,
  }) {
    return group?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnboardingContentBlockTitleDao value)? title,
    TResult Function(OnboardingContentBlockSubtitleDao value)? subtitle,
    TResult Function(OnboardingContentBlockMarkedSubtitleDao value)?
        markedSubtitle,
    TResult Function(OnboardingContentBlockTextFieldDao value)? textField,
    TResult Function(OnboardingContentBlockImageDao value)? image,
    TResult Function(OnboardingContentBlockSvgDao value)? svg,
    TResult Function(OnboardingContentBlockLinkButtonDao value)? linkButton,
    TResult Function(OnboardingContentBlockSubscribeButtonDao value)?
        subscribeButton,
    TResult Function(OnboardingContentBlockGroupDao value)? group,
    TResult Function(OnboardingContentBlockNumberedListDao value)? numberedList,
    TResult Function(OnboardingContentBlockListDao value)? list,
    TResult Function(OnboardingContentBlockRateDialogDao value)? rateDialog,
    required TResult orElse(),
  }) {
    if (group != null) {
      return group(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$OnboardingContentBlockGroupDaoImplToJson(
      this,
    );
  }
}

abstract class OnboardingContentBlockGroupDao
    implements OnboardingContentBlockDao {
  const factory OnboardingContentBlockGroupDao(
          {required final String id,
          @JsonKey(name: 'story') required final String parentId,
          required final OnboardingContentBlockDao child,
          @JsonKey(name: 'sort_id') required final int sortId}) =
      _$OnboardingContentBlockGroupDaoImpl;

  factory OnboardingContentBlockGroupDao.fromJson(Map<String, dynamic> json) =
      _$OnboardingContentBlockGroupDaoImpl.fromJson;

  @override
  String get id;
  @override
  @JsonKey(name: 'story')
  String get parentId;
  OnboardingContentBlockDao get child;
  @override
  @JsonKey(name: 'sort_id')
  int get sortId;
  @override
  @JsonKey(ignore: true)
  _$$OnboardingContentBlockGroupDaoImplCopyWith<
          _$OnboardingContentBlockGroupDaoImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OnboardingContentBlockNumberedListDaoImplCopyWith<$Res>
    implements $OnboardingContentBlockDaoCopyWith<$Res> {
  factory _$$OnboardingContentBlockNumberedListDaoImplCopyWith(
          _$OnboardingContentBlockNumberedListDaoImpl value,
          $Res Function(_$OnboardingContentBlockNumberedListDaoImpl) then) =
      __$$OnboardingContentBlockNumberedListDaoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      List<OnboardingContentBlockDao> blocks,
      @JsonKey(name: 'story') String parentId,
      @JsonKey(name: 'sort_id') int sortId});
}

/// @nodoc
class __$$OnboardingContentBlockNumberedListDaoImplCopyWithImpl<$Res>
    extends _$OnboardingContentBlockDaoCopyWithImpl<$Res,
        _$OnboardingContentBlockNumberedListDaoImpl>
    implements _$$OnboardingContentBlockNumberedListDaoImplCopyWith<$Res> {
  __$$OnboardingContentBlockNumberedListDaoImplCopyWithImpl(
      _$OnboardingContentBlockNumberedListDaoImpl _value,
      $Res Function(_$OnboardingContentBlockNumberedListDaoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? blocks = null,
    Object? parentId = null,
    Object? sortId = null,
  }) {
    return _then(_$OnboardingContentBlockNumberedListDaoImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      blocks: null == blocks
          ? _value._blocks
          : blocks // ignore: cast_nullable_to_non_nullable
              as List<OnboardingContentBlockDao>,
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
class _$OnboardingContentBlockNumberedListDaoImpl
    implements OnboardingContentBlockNumberedListDao {
  const _$OnboardingContentBlockNumberedListDaoImpl(
      {required this.id,
      required final List<OnboardingContentBlockDao> blocks,
      @JsonKey(name: 'story') required this.parentId,
      @JsonKey(name: 'sort_id') required this.sortId,
      final String? $type})
      : _blocks = blocks,
        $type = $type ?? 'numbered_list';

  factory _$OnboardingContentBlockNumberedListDaoImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$OnboardingContentBlockNumberedListDaoImplFromJson(json);

  @override
  final String id;
  final List<OnboardingContentBlockDao> _blocks;
  @override
  List<OnboardingContentBlockDao> get blocks {
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
    return 'OnboardingContentBlockDao.numberedList(id: $id, blocks: $blocks, parentId: $parentId, sortId: $sortId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnboardingContentBlockNumberedListDaoImpl &&
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
  _$$OnboardingContentBlockNumberedListDaoImplCopyWith<
          _$OnboardingContentBlockNumberedListDaoImpl>
      get copyWith => __$$OnboardingContentBlockNumberedListDaoImplCopyWithImpl<
          _$OnboardingContentBlockNumberedListDaoImpl>(this, _$identity);

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
            OnboardingPlatformDao media,
            String link,
            @JsonKey(name: 'sort_id') int sortId)
        subscribeButton,
    required TResult Function(
            String id,
            @JsonKey(name: 'story') String parentId,
            OnboardingContentBlockDao child,
            @JsonKey(name: 'sort_id') int sortId)
        group,
    required TResult Function(
            String id,
            List<OnboardingContentBlockDao> blocks,
            @JsonKey(name: 'story') String parentId,
            @JsonKey(name: 'sort_id') int sortId)
        numberedList,
    required TResult Function(
            String id,
            List<OnboardingContentBlockDao> blocks,
            @JsonKey(name: 'story') String parentId,
            @JsonKey(name: 'sort_id') int sortId)
        list,
    required TResult Function(
            String id,
            @JsonKey(name: 'story') String parentId,
            String question,
            @JsonKey(name: 'sort_id') int sortId)
        rateDialog,
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
            OnboardingPlatformDao media,
            String link,
            @JsonKey(name: 'sort_id') int sortId)?
        subscribeButton,
    TResult? Function(
            String id,
            @JsonKey(name: 'story') String parentId,
            OnboardingContentBlockDao child,
            @JsonKey(name: 'sort_id') int sortId)?
        group,
    TResult? Function(
            String id,
            List<OnboardingContentBlockDao> blocks,
            @JsonKey(name: 'story') String parentId,
            @JsonKey(name: 'sort_id') int sortId)?
        numberedList,
    TResult? Function(
            String id,
            List<OnboardingContentBlockDao> blocks,
            @JsonKey(name: 'story') String parentId,
            @JsonKey(name: 'sort_id') int sortId)?
        list,
    TResult? Function(String id, @JsonKey(name: 'story') String parentId,
            String question, @JsonKey(name: 'sort_id') int sortId)?
        rateDialog,
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
            OnboardingPlatformDao media,
            String link,
            @JsonKey(name: 'sort_id') int sortId)?
        subscribeButton,
    TResult Function(
            String id,
            @JsonKey(name: 'story') String parentId,
            OnboardingContentBlockDao child,
            @JsonKey(name: 'sort_id') int sortId)?
        group,
    TResult Function(
            String id,
            List<OnboardingContentBlockDao> blocks,
            @JsonKey(name: 'story') String parentId,
            @JsonKey(name: 'sort_id') int sortId)?
        numberedList,
    TResult Function(
            String id,
            List<OnboardingContentBlockDao> blocks,
            @JsonKey(name: 'story') String parentId,
            @JsonKey(name: 'sort_id') int sortId)?
        list,
    TResult Function(String id, @JsonKey(name: 'story') String parentId,
            String question, @JsonKey(name: 'sort_id') int sortId)?
        rateDialog,
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
    required TResult Function(OnboardingContentBlockTitleDao value) title,
    required TResult Function(OnboardingContentBlockSubtitleDao value) subtitle,
    required TResult Function(OnboardingContentBlockMarkedSubtitleDao value)
        markedSubtitle,
    required TResult Function(OnboardingContentBlockTextFieldDao value)
        textField,
    required TResult Function(OnboardingContentBlockImageDao value) image,
    required TResult Function(OnboardingContentBlockSvgDao value) svg,
    required TResult Function(OnboardingContentBlockLinkButtonDao value)
        linkButton,
    required TResult Function(OnboardingContentBlockSubscribeButtonDao value)
        subscribeButton,
    required TResult Function(OnboardingContentBlockGroupDao value) group,
    required TResult Function(OnboardingContentBlockNumberedListDao value)
        numberedList,
    required TResult Function(OnboardingContentBlockListDao value) list,
    required TResult Function(OnboardingContentBlockRateDialogDao value)
        rateDialog,
  }) {
    return numberedList(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OnboardingContentBlockTitleDao value)? title,
    TResult? Function(OnboardingContentBlockSubtitleDao value)? subtitle,
    TResult? Function(OnboardingContentBlockMarkedSubtitleDao value)?
        markedSubtitle,
    TResult? Function(OnboardingContentBlockTextFieldDao value)? textField,
    TResult? Function(OnboardingContentBlockImageDao value)? image,
    TResult? Function(OnboardingContentBlockSvgDao value)? svg,
    TResult? Function(OnboardingContentBlockLinkButtonDao value)? linkButton,
    TResult? Function(OnboardingContentBlockSubscribeButtonDao value)?
        subscribeButton,
    TResult? Function(OnboardingContentBlockGroupDao value)? group,
    TResult? Function(OnboardingContentBlockNumberedListDao value)?
        numberedList,
    TResult? Function(OnboardingContentBlockListDao value)? list,
    TResult? Function(OnboardingContentBlockRateDialogDao value)? rateDialog,
  }) {
    return numberedList?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnboardingContentBlockTitleDao value)? title,
    TResult Function(OnboardingContentBlockSubtitleDao value)? subtitle,
    TResult Function(OnboardingContentBlockMarkedSubtitleDao value)?
        markedSubtitle,
    TResult Function(OnboardingContentBlockTextFieldDao value)? textField,
    TResult Function(OnboardingContentBlockImageDao value)? image,
    TResult Function(OnboardingContentBlockSvgDao value)? svg,
    TResult Function(OnboardingContentBlockLinkButtonDao value)? linkButton,
    TResult Function(OnboardingContentBlockSubscribeButtonDao value)?
        subscribeButton,
    TResult Function(OnboardingContentBlockGroupDao value)? group,
    TResult Function(OnboardingContentBlockNumberedListDao value)? numberedList,
    TResult Function(OnboardingContentBlockListDao value)? list,
    TResult Function(OnboardingContentBlockRateDialogDao value)? rateDialog,
    required TResult orElse(),
  }) {
    if (numberedList != null) {
      return numberedList(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$OnboardingContentBlockNumberedListDaoImplToJson(
      this,
    );
  }
}

abstract class OnboardingContentBlockNumberedListDao
    implements OnboardingContentBlockDao {
  const factory OnboardingContentBlockNumberedListDao(
          {required final String id,
          required final List<OnboardingContentBlockDao> blocks,
          @JsonKey(name: 'story') required final String parentId,
          @JsonKey(name: 'sort_id') required final int sortId}) =
      _$OnboardingContentBlockNumberedListDaoImpl;

  factory OnboardingContentBlockNumberedListDao.fromJson(
          Map<String, dynamic> json) =
      _$OnboardingContentBlockNumberedListDaoImpl.fromJson;

  @override
  String get id;
  List<OnboardingContentBlockDao> get blocks;
  @override
  @JsonKey(name: 'story')
  String get parentId;
  @override
  @JsonKey(name: 'sort_id')
  int get sortId;
  @override
  @JsonKey(ignore: true)
  _$$OnboardingContentBlockNumberedListDaoImplCopyWith<
          _$OnboardingContentBlockNumberedListDaoImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OnboardingContentBlockListDaoImplCopyWith<$Res>
    implements $OnboardingContentBlockDaoCopyWith<$Res> {
  factory _$$OnboardingContentBlockListDaoImplCopyWith(
          _$OnboardingContentBlockListDaoImpl value,
          $Res Function(_$OnboardingContentBlockListDaoImpl) then) =
      __$$OnboardingContentBlockListDaoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      List<OnboardingContentBlockDao> blocks,
      @JsonKey(name: 'story') String parentId,
      @JsonKey(name: 'sort_id') int sortId});
}

/// @nodoc
class __$$OnboardingContentBlockListDaoImplCopyWithImpl<$Res>
    extends _$OnboardingContentBlockDaoCopyWithImpl<$Res,
        _$OnboardingContentBlockListDaoImpl>
    implements _$$OnboardingContentBlockListDaoImplCopyWith<$Res> {
  __$$OnboardingContentBlockListDaoImplCopyWithImpl(
      _$OnboardingContentBlockListDaoImpl _value,
      $Res Function(_$OnboardingContentBlockListDaoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? blocks = null,
    Object? parentId = null,
    Object? sortId = null,
  }) {
    return _then(_$OnboardingContentBlockListDaoImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      blocks: null == blocks
          ? _value._blocks
          : blocks // ignore: cast_nullable_to_non_nullable
              as List<OnboardingContentBlockDao>,
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
class _$OnboardingContentBlockListDaoImpl
    implements OnboardingContentBlockListDao {
  const _$OnboardingContentBlockListDaoImpl(
      {required this.id,
      required final List<OnboardingContentBlockDao> blocks,
      @JsonKey(name: 'story') required this.parentId,
      @JsonKey(name: 'sort_id') required this.sortId,
      final String? $type})
      : _blocks = blocks,
        $type = $type ?? 'list';

  factory _$OnboardingContentBlockListDaoImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$OnboardingContentBlockListDaoImplFromJson(json);

  @override
  final String id;
  final List<OnboardingContentBlockDao> _blocks;
  @override
  List<OnboardingContentBlockDao> get blocks {
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
    return 'OnboardingContentBlockDao.list(id: $id, blocks: $blocks, parentId: $parentId, sortId: $sortId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnboardingContentBlockListDaoImpl &&
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
  _$$OnboardingContentBlockListDaoImplCopyWith<
          _$OnboardingContentBlockListDaoImpl>
      get copyWith => __$$OnboardingContentBlockListDaoImplCopyWithImpl<
          _$OnboardingContentBlockListDaoImpl>(this, _$identity);

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
            OnboardingPlatformDao media,
            String link,
            @JsonKey(name: 'sort_id') int sortId)
        subscribeButton,
    required TResult Function(
            String id,
            @JsonKey(name: 'story') String parentId,
            OnboardingContentBlockDao child,
            @JsonKey(name: 'sort_id') int sortId)
        group,
    required TResult Function(
            String id,
            List<OnboardingContentBlockDao> blocks,
            @JsonKey(name: 'story') String parentId,
            @JsonKey(name: 'sort_id') int sortId)
        numberedList,
    required TResult Function(
            String id,
            List<OnboardingContentBlockDao> blocks,
            @JsonKey(name: 'story') String parentId,
            @JsonKey(name: 'sort_id') int sortId)
        list,
    required TResult Function(
            String id,
            @JsonKey(name: 'story') String parentId,
            String question,
            @JsonKey(name: 'sort_id') int sortId)
        rateDialog,
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
            OnboardingPlatformDao media,
            String link,
            @JsonKey(name: 'sort_id') int sortId)?
        subscribeButton,
    TResult? Function(
            String id,
            @JsonKey(name: 'story') String parentId,
            OnboardingContentBlockDao child,
            @JsonKey(name: 'sort_id') int sortId)?
        group,
    TResult? Function(
            String id,
            List<OnboardingContentBlockDao> blocks,
            @JsonKey(name: 'story') String parentId,
            @JsonKey(name: 'sort_id') int sortId)?
        numberedList,
    TResult? Function(
            String id,
            List<OnboardingContentBlockDao> blocks,
            @JsonKey(name: 'story') String parentId,
            @JsonKey(name: 'sort_id') int sortId)?
        list,
    TResult? Function(String id, @JsonKey(name: 'story') String parentId,
            String question, @JsonKey(name: 'sort_id') int sortId)?
        rateDialog,
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
            OnboardingPlatformDao media,
            String link,
            @JsonKey(name: 'sort_id') int sortId)?
        subscribeButton,
    TResult Function(
            String id,
            @JsonKey(name: 'story') String parentId,
            OnboardingContentBlockDao child,
            @JsonKey(name: 'sort_id') int sortId)?
        group,
    TResult Function(
            String id,
            List<OnboardingContentBlockDao> blocks,
            @JsonKey(name: 'story') String parentId,
            @JsonKey(name: 'sort_id') int sortId)?
        numberedList,
    TResult Function(
            String id,
            List<OnboardingContentBlockDao> blocks,
            @JsonKey(name: 'story') String parentId,
            @JsonKey(name: 'sort_id') int sortId)?
        list,
    TResult Function(String id, @JsonKey(name: 'story') String parentId,
            String question, @JsonKey(name: 'sort_id') int sortId)?
        rateDialog,
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
    required TResult Function(OnboardingContentBlockTitleDao value) title,
    required TResult Function(OnboardingContentBlockSubtitleDao value) subtitle,
    required TResult Function(OnboardingContentBlockMarkedSubtitleDao value)
        markedSubtitle,
    required TResult Function(OnboardingContentBlockTextFieldDao value)
        textField,
    required TResult Function(OnboardingContentBlockImageDao value) image,
    required TResult Function(OnboardingContentBlockSvgDao value) svg,
    required TResult Function(OnboardingContentBlockLinkButtonDao value)
        linkButton,
    required TResult Function(OnboardingContentBlockSubscribeButtonDao value)
        subscribeButton,
    required TResult Function(OnboardingContentBlockGroupDao value) group,
    required TResult Function(OnboardingContentBlockNumberedListDao value)
        numberedList,
    required TResult Function(OnboardingContentBlockListDao value) list,
    required TResult Function(OnboardingContentBlockRateDialogDao value)
        rateDialog,
  }) {
    return list(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OnboardingContentBlockTitleDao value)? title,
    TResult? Function(OnboardingContentBlockSubtitleDao value)? subtitle,
    TResult? Function(OnboardingContentBlockMarkedSubtitleDao value)?
        markedSubtitle,
    TResult? Function(OnboardingContentBlockTextFieldDao value)? textField,
    TResult? Function(OnboardingContentBlockImageDao value)? image,
    TResult? Function(OnboardingContentBlockSvgDao value)? svg,
    TResult? Function(OnboardingContentBlockLinkButtonDao value)? linkButton,
    TResult? Function(OnboardingContentBlockSubscribeButtonDao value)?
        subscribeButton,
    TResult? Function(OnboardingContentBlockGroupDao value)? group,
    TResult? Function(OnboardingContentBlockNumberedListDao value)?
        numberedList,
    TResult? Function(OnboardingContentBlockListDao value)? list,
    TResult? Function(OnboardingContentBlockRateDialogDao value)? rateDialog,
  }) {
    return list?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnboardingContentBlockTitleDao value)? title,
    TResult Function(OnboardingContentBlockSubtitleDao value)? subtitle,
    TResult Function(OnboardingContentBlockMarkedSubtitleDao value)?
        markedSubtitle,
    TResult Function(OnboardingContentBlockTextFieldDao value)? textField,
    TResult Function(OnboardingContentBlockImageDao value)? image,
    TResult Function(OnboardingContentBlockSvgDao value)? svg,
    TResult Function(OnboardingContentBlockLinkButtonDao value)? linkButton,
    TResult Function(OnboardingContentBlockSubscribeButtonDao value)?
        subscribeButton,
    TResult Function(OnboardingContentBlockGroupDao value)? group,
    TResult Function(OnboardingContentBlockNumberedListDao value)? numberedList,
    TResult Function(OnboardingContentBlockListDao value)? list,
    TResult Function(OnboardingContentBlockRateDialogDao value)? rateDialog,
    required TResult orElse(),
  }) {
    if (list != null) {
      return list(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$OnboardingContentBlockListDaoImplToJson(
      this,
    );
  }
}

abstract class OnboardingContentBlockListDao
    implements OnboardingContentBlockDao {
  const factory OnboardingContentBlockListDao(
          {required final String id,
          required final List<OnboardingContentBlockDao> blocks,
          @JsonKey(name: 'story') required final String parentId,
          @JsonKey(name: 'sort_id') required final int sortId}) =
      _$OnboardingContentBlockListDaoImpl;

  factory OnboardingContentBlockListDao.fromJson(Map<String, dynamic> json) =
      _$OnboardingContentBlockListDaoImpl.fromJson;

  @override
  String get id;
  List<OnboardingContentBlockDao> get blocks;
  @override
  @JsonKey(name: 'story')
  String get parentId;
  @override
  @JsonKey(name: 'sort_id')
  int get sortId;
  @override
  @JsonKey(ignore: true)
  _$$OnboardingContentBlockListDaoImplCopyWith<
          _$OnboardingContentBlockListDaoImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OnboardingContentBlockRateDialogDaoImplCopyWith<$Res>
    implements $OnboardingContentBlockDaoCopyWith<$Res> {
  factory _$$OnboardingContentBlockRateDialogDaoImplCopyWith(
          _$OnboardingContentBlockRateDialogDaoImpl value,
          $Res Function(_$OnboardingContentBlockRateDialogDaoImpl) then) =
      __$$OnboardingContentBlockRateDialogDaoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      @JsonKey(name: 'story') String parentId,
      String question,
      @JsonKey(name: 'sort_id') int sortId});
}

/// @nodoc
class __$$OnboardingContentBlockRateDialogDaoImplCopyWithImpl<$Res>
    extends _$OnboardingContentBlockDaoCopyWithImpl<$Res,
        _$OnboardingContentBlockRateDialogDaoImpl>
    implements _$$OnboardingContentBlockRateDialogDaoImplCopyWith<$Res> {
  __$$OnboardingContentBlockRateDialogDaoImplCopyWithImpl(
      _$OnboardingContentBlockRateDialogDaoImpl _value,
      $Res Function(_$OnboardingContentBlockRateDialogDaoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? parentId = null,
    Object? question = null,
    Object? sortId = null,
  }) {
    return _then(_$OnboardingContentBlockRateDialogDaoImpl(
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
class _$OnboardingContentBlockRateDialogDaoImpl
    implements OnboardingContentBlockRateDialogDao {
  const _$OnboardingContentBlockRateDialogDaoImpl(
      {required this.id,
      @JsonKey(name: 'story') required this.parentId,
      this.question = '',
      @JsonKey(name: 'sort_id') required this.sortId,
      final String? $type})
      : $type = $type ?? 'rate_dialog';

  factory _$OnboardingContentBlockRateDialogDaoImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$OnboardingContentBlockRateDialogDaoImplFromJson(json);

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
    return 'OnboardingContentBlockDao.rateDialog(id: $id, parentId: $parentId, question: $question, sortId: $sortId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnboardingContentBlockRateDialogDaoImpl &&
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
  _$$OnboardingContentBlockRateDialogDaoImplCopyWith<
          _$OnboardingContentBlockRateDialogDaoImpl>
      get copyWith => __$$OnboardingContentBlockRateDialogDaoImplCopyWithImpl<
          _$OnboardingContentBlockRateDialogDaoImpl>(this, _$identity);

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
            OnboardingPlatformDao media,
            String link,
            @JsonKey(name: 'sort_id') int sortId)
        subscribeButton,
    required TResult Function(
            String id,
            @JsonKey(name: 'story') String parentId,
            OnboardingContentBlockDao child,
            @JsonKey(name: 'sort_id') int sortId)
        group,
    required TResult Function(
            String id,
            List<OnboardingContentBlockDao> blocks,
            @JsonKey(name: 'story') String parentId,
            @JsonKey(name: 'sort_id') int sortId)
        numberedList,
    required TResult Function(
            String id,
            List<OnboardingContentBlockDao> blocks,
            @JsonKey(name: 'story') String parentId,
            @JsonKey(name: 'sort_id') int sortId)
        list,
    required TResult Function(
            String id,
            @JsonKey(name: 'story') String parentId,
            String question,
            @JsonKey(name: 'sort_id') int sortId)
        rateDialog,
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
            OnboardingPlatformDao media,
            String link,
            @JsonKey(name: 'sort_id') int sortId)?
        subscribeButton,
    TResult? Function(
            String id,
            @JsonKey(name: 'story') String parentId,
            OnboardingContentBlockDao child,
            @JsonKey(name: 'sort_id') int sortId)?
        group,
    TResult? Function(
            String id,
            List<OnboardingContentBlockDao> blocks,
            @JsonKey(name: 'story') String parentId,
            @JsonKey(name: 'sort_id') int sortId)?
        numberedList,
    TResult? Function(
            String id,
            List<OnboardingContentBlockDao> blocks,
            @JsonKey(name: 'story') String parentId,
            @JsonKey(name: 'sort_id') int sortId)?
        list,
    TResult? Function(String id, @JsonKey(name: 'story') String parentId,
            String question, @JsonKey(name: 'sort_id') int sortId)?
        rateDialog,
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
            OnboardingPlatformDao media,
            String link,
            @JsonKey(name: 'sort_id') int sortId)?
        subscribeButton,
    TResult Function(
            String id,
            @JsonKey(name: 'story') String parentId,
            OnboardingContentBlockDao child,
            @JsonKey(name: 'sort_id') int sortId)?
        group,
    TResult Function(
            String id,
            List<OnboardingContentBlockDao> blocks,
            @JsonKey(name: 'story') String parentId,
            @JsonKey(name: 'sort_id') int sortId)?
        numberedList,
    TResult Function(
            String id,
            List<OnboardingContentBlockDao> blocks,
            @JsonKey(name: 'story') String parentId,
            @JsonKey(name: 'sort_id') int sortId)?
        list,
    TResult Function(String id, @JsonKey(name: 'story') String parentId,
            String question, @JsonKey(name: 'sort_id') int sortId)?
        rateDialog,
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
    required TResult Function(OnboardingContentBlockTitleDao value) title,
    required TResult Function(OnboardingContentBlockSubtitleDao value) subtitle,
    required TResult Function(OnboardingContentBlockMarkedSubtitleDao value)
        markedSubtitle,
    required TResult Function(OnboardingContentBlockTextFieldDao value)
        textField,
    required TResult Function(OnboardingContentBlockImageDao value) image,
    required TResult Function(OnboardingContentBlockSvgDao value) svg,
    required TResult Function(OnboardingContentBlockLinkButtonDao value)
        linkButton,
    required TResult Function(OnboardingContentBlockSubscribeButtonDao value)
        subscribeButton,
    required TResult Function(OnboardingContentBlockGroupDao value) group,
    required TResult Function(OnboardingContentBlockNumberedListDao value)
        numberedList,
    required TResult Function(OnboardingContentBlockListDao value) list,
    required TResult Function(OnboardingContentBlockRateDialogDao value)
        rateDialog,
  }) {
    return rateDialog(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OnboardingContentBlockTitleDao value)? title,
    TResult? Function(OnboardingContentBlockSubtitleDao value)? subtitle,
    TResult? Function(OnboardingContentBlockMarkedSubtitleDao value)?
        markedSubtitle,
    TResult? Function(OnboardingContentBlockTextFieldDao value)? textField,
    TResult? Function(OnboardingContentBlockImageDao value)? image,
    TResult? Function(OnboardingContentBlockSvgDao value)? svg,
    TResult? Function(OnboardingContentBlockLinkButtonDao value)? linkButton,
    TResult? Function(OnboardingContentBlockSubscribeButtonDao value)?
        subscribeButton,
    TResult? Function(OnboardingContentBlockGroupDao value)? group,
    TResult? Function(OnboardingContentBlockNumberedListDao value)?
        numberedList,
    TResult? Function(OnboardingContentBlockListDao value)? list,
    TResult? Function(OnboardingContentBlockRateDialogDao value)? rateDialog,
  }) {
    return rateDialog?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnboardingContentBlockTitleDao value)? title,
    TResult Function(OnboardingContentBlockSubtitleDao value)? subtitle,
    TResult Function(OnboardingContentBlockMarkedSubtitleDao value)?
        markedSubtitle,
    TResult Function(OnboardingContentBlockTextFieldDao value)? textField,
    TResult Function(OnboardingContentBlockImageDao value)? image,
    TResult Function(OnboardingContentBlockSvgDao value)? svg,
    TResult Function(OnboardingContentBlockLinkButtonDao value)? linkButton,
    TResult Function(OnboardingContentBlockSubscribeButtonDao value)?
        subscribeButton,
    TResult Function(OnboardingContentBlockGroupDao value)? group,
    TResult Function(OnboardingContentBlockNumberedListDao value)? numberedList,
    TResult Function(OnboardingContentBlockListDao value)? list,
    TResult Function(OnboardingContentBlockRateDialogDao value)? rateDialog,
    required TResult orElse(),
  }) {
    if (rateDialog != null) {
      return rateDialog(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$OnboardingContentBlockRateDialogDaoImplToJson(
      this,
    );
  }
}

abstract class OnboardingContentBlockRateDialogDao
    implements OnboardingContentBlockDao {
  const factory OnboardingContentBlockRateDialogDao(
          {required final String id,
          @JsonKey(name: 'story') required final String parentId,
          final String question,
          @JsonKey(name: 'sort_id') required final int sortId}) =
      _$OnboardingContentBlockRateDialogDaoImpl;

  factory OnboardingContentBlockRateDialogDao.fromJson(
          Map<String, dynamic> json) =
      _$OnboardingContentBlockRateDialogDaoImpl.fromJson;

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
  _$$OnboardingContentBlockRateDialogDaoImplCopyWith<
          _$OnboardingContentBlockRateDialogDaoImpl>
      get copyWith => throw _privateConstructorUsedError;
}
