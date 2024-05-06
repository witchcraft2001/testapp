// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'media_content_block.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$MediaContentBlock {
  String get id => throw _privateConstructorUsedError;
  String get parentId => throw _privateConstructorUsedError;
  int get sortId => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String id, String parentId, int sortId, String title)
        title,
    required TResult Function(
            String id, String parentId, int sortId, String content)
        textField,
    required TResult Function(
            String id, String parentId, int sortId, String image)
        image,
    required TResult Function(
            String id, String parentId, int sortId, String link, String title)
        linkButton,
    required TResult Function(String id, String parentId, int sortId) appeal,
    required TResult Function(String id, String parentId, int sortId) signature,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id, String parentId, int sortId, String title)?
        title,
    TResult? Function(String id, String parentId, int sortId, String content)?
        textField,
    TResult? Function(String id, String parentId, int sortId, String image)?
        image,
    TResult? Function(
            String id, String parentId, int sortId, String link, String title)?
        linkButton,
    TResult? Function(String id, String parentId, int sortId)? appeal,
    TResult? Function(String id, String parentId, int sortId)? signature,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id, String parentId, int sortId, String title)?
        title,
    TResult Function(String id, String parentId, int sortId, String content)?
        textField,
    TResult Function(String id, String parentId, int sortId, String image)?
        image,
    TResult Function(
            String id, String parentId, int sortId, String link, String title)?
        linkButton,
    TResult Function(String id, String parentId, int sortId)? appeal,
    TResult Function(String id, String parentId, int sortId)? signature,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_MediaContentBlockTitle value) title,
    required TResult Function(_MediaContentBlockTextField value) textField,
    required TResult Function(_MediaContentBlockImage value) image,
    required TResult Function(_MediaContentBlockLinkButton value) linkButton,
    required TResult Function(_MediaContentBlockAppeal value) appeal,
    required TResult Function(_MediaContentBlockSignature value) signature,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_MediaContentBlockTitle value)? title,
    TResult? Function(_MediaContentBlockTextField value)? textField,
    TResult? Function(_MediaContentBlockImage value)? image,
    TResult? Function(_MediaContentBlockLinkButton value)? linkButton,
    TResult? Function(_MediaContentBlockAppeal value)? appeal,
    TResult? Function(_MediaContentBlockSignature value)? signature,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_MediaContentBlockTitle value)? title,
    TResult Function(_MediaContentBlockTextField value)? textField,
    TResult Function(_MediaContentBlockImage value)? image,
    TResult Function(_MediaContentBlockLinkButton value)? linkButton,
    TResult Function(_MediaContentBlockAppeal value)? appeal,
    TResult Function(_MediaContentBlockSignature value)? signature,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MediaContentBlockCopyWith<MediaContentBlock> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MediaContentBlockCopyWith<$Res> {
  factory $MediaContentBlockCopyWith(
          MediaContentBlock value, $Res Function(MediaContentBlock) then) =
      _$MediaContentBlockCopyWithImpl<$Res, MediaContentBlock>;
  @useResult
  $Res call({String id, String parentId, int sortId});
}

/// @nodoc
class _$MediaContentBlockCopyWithImpl<$Res, $Val extends MediaContentBlock>
    implements $MediaContentBlockCopyWith<$Res> {
  _$MediaContentBlockCopyWithImpl(this._value, this._then);

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
abstract class _$$MediaContentBlockTitleImplCopyWith<$Res>
    implements $MediaContentBlockCopyWith<$Res> {
  factory _$$MediaContentBlockTitleImplCopyWith(
          _$MediaContentBlockTitleImpl value,
          $Res Function(_$MediaContentBlockTitleImpl) then) =
      __$$MediaContentBlockTitleImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String parentId, int sortId, String title});
}

/// @nodoc
class __$$MediaContentBlockTitleImplCopyWithImpl<$Res>
    extends _$MediaContentBlockCopyWithImpl<$Res, _$MediaContentBlockTitleImpl>
    implements _$$MediaContentBlockTitleImplCopyWith<$Res> {
  __$$MediaContentBlockTitleImplCopyWithImpl(
      _$MediaContentBlockTitleImpl _value,
      $Res Function(_$MediaContentBlockTitleImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? parentId = null,
    Object? sortId = null,
    Object? title = null,
  }) {
    return _then(_$MediaContentBlockTitleImpl(
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
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$MediaContentBlockTitleImpl implements _MediaContentBlockTitle {
  const _$MediaContentBlockTitleImpl(
      {required this.id,
      required this.parentId,
      required this.sortId,
      required this.title});

  @override
  final String id;
  @override
  final String parentId;
  @override
  final int sortId;
  @override
  final String title;

  @override
  String toString() {
    return 'MediaContentBlock.title(id: $id, parentId: $parentId, sortId: $sortId, title: $title)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MediaContentBlockTitleImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.parentId, parentId) ||
                other.parentId == parentId) &&
            (identical(other.sortId, sortId) || other.sortId == sortId) &&
            (identical(other.title, title) || other.title == title));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, parentId, sortId, title);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MediaContentBlockTitleImplCopyWith<_$MediaContentBlockTitleImpl>
      get copyWith => __$$MediaContentBlockTitleImplCopyWithImpl<
          _$MediaContentBlockTitleImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String id, String parentId, int sortId, String title)
        title,
    required TResult Function(
            String id, String parentId, int sortId, String content)
        textField,
    required TResult Function(
            String id, String parentId, int sortId, String image)
        image,
    required TResult Function(
            String id, String parentId, int sortId, String link, String title)
        linkButton,
    required TResult Function(String id, String parentId, int sortId) appeal,
    required TResult Function(String id, String parentId, int sortId) signature,
  }) {
    return title(id, parentId, sortId, this.title);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id, String parentId, int sortId, String title)?
        title,
    TResult? Function(String id, String parentId, int sortId, String content)?
        textField,
    TResult? Function(String id, String parentId, int sortId, String image)?
        image,
    TResult? Function(
            String id, String parentId, int sortId, String link, String title)?
        linkButton,
    TResult? Function(String id, String parentId, int sortId)? appeal,
    TResult? Function(String id, String parentId, int sortId)? signature,
  }) {
    return title?.call(id, parentId, sortId, this.title);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id, String parentId, int sortId, String title)?
        title,
    TResult Function(String id, String parentId, int sortId, String content)?
        textField,
    TResult Function(String id, String parentId, int sortId, String image)?
        image,
    TResult Function(
            String id, String parentId, int sortId, String link, String title)?
        linkButton,
    TResult Function(String id, String parentId, int sortId)? appeal,
    TResult Function(String id, String parentId, int sortId)? signature,
    required TResult orElse(),
  }) {
    if (title != null) {
      return title(id, parentId, sortId, this.title);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_MediaContentBlockTitle value) title,
    required TResult Function(_MediaContentBlockTextField value) textField,
    required TResult Function(_MediaContentBlockImage value) image,
    required TResult Function(_MediaContentBlockLinkButton value) linkButton,
    required TResult Function(_MediaContentBlockAppeal value) appeal,
    required TResult Function(_MediaContentBlockSignature value) signature,
  }) {
    return title(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_MediaContentBlockTitle value)? title,
    TResult? Function(_MediaContentBlockTextField value)? textField,
    TResult? Function(_MediaContentBlockImage value)? image,
    TResult? Function(_MediaContentBlockLinkButton value)? linkButton,
    TResult? Function(_MediaContentBlockAppeal value)? appeal,
    TResult? Function(_MediaContentBlockSignature value)? signature,
  }) {
    return title?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_MediaContentBlockTitle value)? title,
    TResult Function(_MediaContentBlockTextField value)? textField,
    TResult Function(_MediaContentBlockImage value)? image,
    TResult Function(_MediaContentBlockLinkButton value)? linkButton,
    TResult Function(_MediaContentBlockAppeal value)? appeal,
    TResult Function(_MediaContentBlockSignature value)? signature,
    required TResult orElse(),
  }) {
    if (title != null) {
      return title(this);
    }
    return orElse();
  }
}

abstract class _MediaContentBlockTitle implements MediaContentBlock {
  const factory _MediaContentBlockTitle(
      {required final String id,
      required final String parentId,
      required final int sortId,
      required final String title}) = _$MediaContentBlockTitleImpl;

  @override
  String get id;
  @override
  String get parentId;
  @override
  int get sortId;
  String get title;
  @override
  @JsonKey(ignore: true)
  _$$MediaContentBlockTitleImplCopyWith<_$MediaContentBlockTitleImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MediaContentBlockTextFieldImplCopyWith<$Res>
    implements $MediaContentBlockCopyWith<$Res> {
  factory _$$MediaContentBlockTextFieldImplCopyWith(
          _$MediaContentBlockTextFieldImpl value,
          $Res Function(_$MediaContentBlockTextFieldImpl) then) =
      __$$MediaContentBlockTextFieldImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String parentId, int sortId, String content});
}

/// @nodoc
class __$$MediaContentBlockTextFieldImplCopyWithImpl<$Res>
    extends _$MediaContentBlockCopyWithImpl<$Res,
        _$MediaContentBlockTextFieldImpl>
    implements _$$MediaContentBlockTextFieldImplCopyWith<$Res> {
  __$$MediaContentBlockTextFieldImplCopyWithImpl(
      _$MediaContentBlockTextFieldImpl _value,
      $Res Function(_$MediaContentBlockTextFieldImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? parentId = null,
    Object? sortId = null,
    Object? content = null,
  }) {
    return _then(_$MediaContentBlockTextFieldImpl(
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
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$MediaContentBlockTextFieldImpl implements _MediaContentBlockTextField {
  const _$MediaContentBlockTextFieldImpl(
      {required this.id,
      required this.parentId,
      required this.sortId,
      required this.content});

  @override
  final String id;
  @override
  final String parentId;
  @override
  final int sortId;
  @override
  final String content;

  @override
  String toString() {
    return 'MediaContentBlock.textField(id: $id, parentId: $parentId, sortId: $sortId, content: $content)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MediaContentBlockTextFieldImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.parentId, parentId) ||
                other.parentId == parentId) &&
            (identical(other.sortId, sortId) || other.sortId == sortId) &&
            (identical(other.content, content) || other.content == content));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, parentId, sortId, content);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MediaContentBlockTextFieldImplCopyWith<_$MediaContentBlockTextFieldImpl>
      get copyWith => __$$MediaContentBlockTextFieldImplCopyWithImpl<
          _$MediaContentBlockTextFieldImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String id, String parentId, int sortId, String title)
        title,
    required TResult Function(
            String id, String parentId, int sortId, String content)
        textField,
    required TResult Function(
            String id, String parentId, int sortId, String image)
        image,
    required TResult Function(
            String id, String parentId, int sortId, String link, String title)
        linkButton,
    required TResult Function(String id, String parentId, int sortId) appeal,
    required TResult Function(String id, String parentId, int sortId) signature,
  }) {
    return textField(id, parentId, sortId, content);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id, String parentId, int sortId, String title)?
        title,
    TResult? Function(String id, String parentId, int sortId, String content)?
        textField,
    TResult? Function(String id, String parentId, int sortId, String image)?
        image,
    TResult? Function(
            String id, String parentId, int sortId, String link, String title)?
        linkButton,
    TResult? Function(String id, String parentId, int sortId)? appeal,
    TResult? Function(String id, String parentId, int sortId)? signature,
  }) {
    return textField?.call(id, parentId, sortId, content);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id, String parentId, int sortId, String title)?
        title,
    TResult Function(String id, String parentId, int sortId, String content)?
        textField,
    TResult Function(String id, String parentId, int sortId, String image)?
        image,
    TResult Function(
            String id, String parentId, int sortId, String link, String title)?
        linkButton,
    TResult Function(String id, String parentId, int sortId)? appeal,
    TResult Function(String id, String parentId, int sortId)? signature,
    required TResult orElse(),
  }) {
    if (textField != null) {
      return textField(id, parentId, sortId, content);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_MediaContentBlockTitle value) title,
    required TResult Function(_MediaContentBlockTextField value) textField,
    required TResult Function(_MediaContentBlockImage value) image,
    required TResult Function(_MediaContentBlockLinkButton value) linkButton,
    required TResult Function(_MediaContentBlockAppeal value) appeal,
    required TResult Function(_MediaContentBlockSignature value) signature,
  }) {
    return textField(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_MediaContentBlockTitle value)? title,
    TResult? Function(_MediaContentBlockTextField value)? textField,
    TResult? Function(_MediaContentBlockImage value)? image,
    TResult? Function(_MediaContentBlockLinkButton value)? linkButton,
    TResult? Function(_MediaContentBlockAppeal value)? appeal,
    TResult? Function(_MediaContentBlockSignature value)? signature,
  }) {
    return textField?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_MediaContentBlockTitle value)? title,
    TResult Function(_MediaContentBlockTextField value)? textField,
    TResult Function(_MediaContentBlockImage value)? image,
    TResult Function(_MediaContentBlockLinkButton value)? linkButton,
    TResult Function(_MediaContentBlockAppeal value)? appeal,
    TResult Function(_MediaContentBlockSignature value)? signature,
    required TResult orElse(),
  }) {
    if (textField != null) {
      return textField(this);
    }
    return orElse();
  }
}

abstract class _MediaContentBlockTextField implements MediaContentBlock {
  const factory _MediaContentBlockTextField(
      {required final String id,
      required final String parentId,
      required final int sortId,
      required final String content}) = _$MediaContentBlockTextFieldImpl;

  @override
  String get id;
  @override
  String get parentId;
  @override
  int get sortId;
  String get content;
  @override
  @JsonKey(ignore: true)
  _$$MediaContentBlockTextFieldImplCopyWith<_$MediaContentBlockTextFieldImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MediaContentBlockImageImplCopyWith<$Res>
    implements $MediaContentBlockCopyWith<$Res> {
  factory _$$MediaContentBlockImageImplCopyWith(
          _$MediaContentBlockImageImpl value,
          $Res Function(_$MediaContentBlockImageImpl) then) =
      __$$MediaContentBlockImageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String parentId, int sortId, String image});
}

/// @nodoc
class __$$MediaContentBlockImageImplCopyWithImpl<$Res>
    extends _$MediaContentBlockCopyWithImpl<$Res, _$MediaContentBlockImageImpl>
    implements _$$MediaContentBlockImageImplCopyWith<$Res> {
  __$$MediaContentBlockImageImplCopyWithImpl(
      _$MediaContentBlockImageImpl _value,
      $Res Function(_$MediaContentBlockImageImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? parentId = null,
    Object? sortId = null,
    Object? image = null,
  }) {
    return _then(_$MediaContentBlockImageImpl(
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
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$MediaContentBlockImageImpl implements _MediaContentBlockImage {
  const _$MediaContentBlockImageImpl(
      {required this.id,
      required this.parentId,
      required this.sortId,
      required this.image});

  @override
  final String id;
  @override
  final String parentId;
  @override
  final int sortId;
  @override
  final String image;

  @override
  String toString() {
    return 'MediaContentBlock.image(id: $id, parentId: $parentId, sortId: $sortId, image: $image)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MediaContentBlockImageImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.parentId, parentId) ||
                other.parentId == parentId) &&
            (identical(other.sortId, sortId) || other.sortId == sortId) &&
            (identical(other.image, image) || other.image == image));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, parentId, sortId, image);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MediaContentBlockImageImplCopyWith<_$MediaContentBlockImageImpl>
      get copyWith => __$$MediaContentBlockImageImplCopyWithImpl<
          _$MediaContentBlockImageImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String id, String parentId, int sortId, String title)
        title,
    required TResult Function(
            String id, String parentId, int sortId, String content)
        textField,
    required TResult Function(
            String id, String parentId, int sortId, String image)
        image,
    required TResult Function(
            String id, String parentId, int sortId, String link, String title)
        linkButton,
    required TResult Function(String id, String parentId, int sortId) appeal,
    required TResult Function(String id, String parentId, int sortId) signature,
  }) {
    return image(id, parentId, sortId, this.image);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id, String parentId, int sortId, String title)?
        title,
    TResult? Function(String id, String parentId, int sortId, String content)?
        textField,
    TResult? Function(String id, String parentId, int sortId, String image)?
        image,
    TResult? Function(
            String id, String parentId, int sortId, String link, String title)?
        linkButton,
    TResult? Function(String id, String parentId, int sortId)? appeal,
    TResult? Function(String id, String parentId, int sortId)? signature,
  }) {
    return image?.call(id, parentId, sortId, this.image);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id, String parentId, int sortId, String title)?
        title,
    TResult Function(String id, String parentId, int sortId, String content)?
        textField,
    TResult Function(String id, String parentId, int sortId, String image)?
        image,
    TResult Function(
            String id, String parentId, int sortId, String link, String title)?
        linkButton,
    TResult Function(String id, String parentId, int sortId)? appeal,
    TResult Function(String id, String parentId, int sortId)? signature,
    required TResult orElse(),
  }) {
    if (image != null) {
      return image(id, parentId, sortId, this.image);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_MediaContentBlockTitle value) title,
    required TResult Function(_MediaContentBlockTextField value) textField,
    required TResult Function(_MediaContentBlockImage value) image,
    required TResult Function(_MediaContentBlockLinkButton value) linkButton,
    required TResult Function(_MediaContentBlockAppeal value) appeal,
    required TResult Function(_MediaContentBlockSignature value) signature,
  }) {
    return image(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_MediaContentBlockTitle value)? title,
    TResult? Function(_MediaContentBlockTextField value)? textField,
    TResult? Function(_MediaContentBlockImage value)? image,
    TResult? Function(_MediaContentBlockLinkButton value)? linkButton,
    TResult? Function(_MediaContentBlockAppeal value)? appeal,
    TResult? Function(_MediaContentBlockSignature value)? signature,
  }) {
    return image?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_MediaContentBlockTitle value)? title,
    TResult Function(_MediaContentBlockTextField value)? textField,
    TResult Function(_MediaContentBlockImage value)? image,
    TResult Function(_MediaContentBlockLinkButton value)? linkButton,
    TResult Function(_MediaContentBlockAppeal value)? appeal,
    TResult Function(_MediaContentBlockSignature value)? signature,
    required TResult orElse(),
  }) {
    if (image != null) {
      return image(this);
    }
    return orElse();
  }
}

abstract class _MediaContentBlockImage implements MediaContentBlock {
  const factory _MediaContentBlockImage(
      {required final String id,
      required final String parentId,
      required final int sortId,
      required final String image}) = _$MediaContentBlockImageImpl;

  @override
  String get id;
  @override
  String get parentId;
  @override
  int get sortId;
  String get image;
  @override
  @JsonKey(ignore: true)
  _$$MediaContentBlockImageImplCopyWith<_$MediaContentBlockImageImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MediaContentBlockLinkButtonImplCopyWith<$Res>
    implements $MediaContentBlockCopyWith<$Res> {
  factory _$$MediaContentBlockLinkButtonImplCopyWith(
          _$MediaContentBlockLinkButtonImpl value,
          $Res Function(_$MediaContentBlockLinkButtonImpl) then) =
      __$$MediaContentBlockLinkButtonImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id, String parentId, int sortId, String link, String title});
}

/// @nodoc
class __$$MediaContentBlockLinkButtonImplCopyWithImpl<$Res>
    extends _$MediaContentBlockCopyWithImpl<$Res,
        _$MediaContentBlockLinkButtonImpl>
    implements _$$MediaContentBlockLinkButtonImplCopyWith<$Res> {
  __$$MediaContentBlockLinkButtonImplCopyWithImpl(
      _$MediaContentBlockLinkButtonImpl _value,
      $Res Function(_$MediaContentBlockLinkButtonImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? parentId = null,
    Object? sortId = null,
    Object? link = null,
    Object? title = null,
  }) {
    return _then(_$MediaContentBlockLinkButtonImpl(
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
      link: null == link
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$MediaContentBlockLinkButtonImpl
    implements _MediaContentBlockLinkButton {
  const _$MediaContentBlockLinkButtonImpl(
      {required this.id,
      required this.parentId,
      required this.sortId,
      required this.link,
      required this.title});

  @override
  final String id;
  @override
  final String parentId;
  @override
  final int sortId;
  @override
  final String link;
  @override
  final String title;

  @override
  String toString() {
    return 'MediaContentBlock.linkButton(id: $id, parentId: $parentId, sortId: $sortId, link: $link, title: $title)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MediaContentBlockLinkButtonImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.parentId, parentId) ||
                other.parentId == parentId) &&
            (identical(other.sortId, sortId) || other.sortId == sortId) &&
            (identical(other.link, link) || other.link == link) &&
            (identical(other.title, title) || other.title == title));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, id, parentId, sortId, link, title);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MediaContentBlockLinkButtonImplCopyWith<_$MediaContentBlockLinkButtonImpl>
      get copyWith => __$$MediaContentBlockLinkButtonImplCopyWithImpl<
          _$MediaContentBlockLinkButtonImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String id, String parentId, int sortId, String title)
        title,
    required TResult Function(
            String id, String parentId, int sortId, String content)
        textField,
    required TResult Function(
            String id, String parentId, int sortId, String image)
        image,
    required TResult Function(
            String id, String parentId, int sortId, String link, String title)
        linkButton,
    required TResult Function(String id, String parentId, int sortId) appeal,
    required TResult Function(String id, String parentId, int sortId) signature,
  }) {
    return linkButton(id, parentId, sortId, link, this.title);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id, String parentId, int sortId, String title)?
        title,
    TResult? Function(String id, String parentId, int sortId, String content)?
        textField,
    TResult? Function(String id, String parentId, int sortId, String image)?
        image,
    TResult? Function(
            String id, String parentId, int sortId, String link, String title)?
        linkButton,
    TResult? Function(String id, String parentId, int sortId)? appeal,
    TResult? Function(String id, String parentId, int sortId)? signature,
  }) {
    return linkButton?.call(id, parentId, sortId, link, this.title);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id, String parentId, int sortId, String title)?
        title,
    TResult Function(String id, String parentId, int sortId, String content)?
        textField,
    TResult Function(String id, String parentId, int sortId, String image)?
        image,
    TResult Function(
            String id, String parentId, int sortId, String link, String title)?
        linkButton,
    TResult Function(String id, String parentId, int sortId)? appeal,
    TResult Function(String id, String parentId, int sortId)? signature,
    required TResult orElse(),
  }) {
    if (linkButton != null) {
      return linkButton(id, parentId, sortId, link, this.title);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_MediaContentBlockTitle value) title,
    required TResult Function(_MediaContentBlockTextField value) textField,
    required TResult Function(_MediaContentBlockImage value) image,
    required TResult Function(_MediaContentBlockLinkButton value) linkButton,
    required TResult Function(_MediaContentBlockAppeal value) appeal,
    required TResult Function(_MediaContentBlockSignature value) signature,
  }) {
    return linkButton(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_MediaContentBlockTitle value)? title,
    TResult? Function(_MediaContentBlockTextField value)? textField,
    TResult? Function(_MediaContentBlockImage value)? image,
    TResult? Function(_MediaContentBlockLinkButton value)? linkButton,
    TResult? Function(_MediaContentBlockAppeal value)? appeal,
    TResult? Function(_MediaContentBlockSignature value)? signature,
  }) {
    return linkButton?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_MediaContentBlockTitle value)? title,
    TResult Function(_MediaContentBlockTextField value)? textField,
    TResult Function(_MediaContentBlockImage value)? image,
    TResult Function(_MediaContentBlockLinkButton value)? linkButton,
    TResult Function(_MediaContentBlockAppeal value)? appeal,
    TResult Function(_MediaContentBlockSignature value)? signature,
    required TResult orElse(),
  }) {
    if (linkButton != null) {
      return linkButton(this);
    }
    return orElse();
  }
}

abstract class _MediaContentBlockLinkButton implements MediaContentBlock {
  const factory _MediaContentBlockLinkButton(
      {required final String id,
      required final String parentId,
      required final int sortId,
      required final String link,
      required final String title}) = _$MediaContentBlockLinkButtonImpl;

  @override
  String get id;
  @override
  String get parentId;
  @override
  int get sortId;
  String get link;
  String get title;
  @override
  @JsonKey(ignore: true)
  _$$MediaContentBlockLinkButtonImplCopyWith<_$MediaContentBlockLinkButtonImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MediaContentBlockAppealImplCopyWith<$Res>
    implements $MediaContentBlockCopyWith<$Res> {
  factory _$$MediaContentBlockAppealImplCopyWith(
          _$MediaContentBlockAppealImpl value,
          $Res Function(_$MediaContentBlockAppealImpl) then) =
      __$$MediaContentBlockAppealImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String parentId, int sortId});
}

/// @nodoc
class __$$MediaContentBlockAppealImplCopyWithImpl<$Res>
    extends _$MediaContentBlockCopyWithImpl<$Res, _$MediaContentBlockAppealImpl>
    implements _$$MediaContentBlockAppealImplCopyWith<$Res> {
  __$$MediaContentBlockAppealImplCopyWithImpl(
      _$MediaContentBlockAppealImpl _value,
      $Res Function(_$MediaContentBlockAppealImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? parentId = null,
    Object? sortId = null,
  }) {
    return _then(_$MediaContentBlockAppealImpl(
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

class _$MediaContentBlockAppealImpl implements _MediaContentBlockAppeal {
  const _$MediaContentBlockAppealImpl(
      {required this.id, required this.parentId, required this.sortId});

  @override
  final String id;
  @override
  final String parentId;
  @override
  final int sortId;

  @override
  String toString() {
    return 'MediaContentBlock.appeal(id: $id, parentId: $parentId, sortId: $sortId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MediaContentBlockAppealImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.parentId, parentId) ||
                other.parentId == parentId) &&
            (identical(other.sortId, sortId) || other.sortId == sortId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, parentId, sortId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MediaContentBlockAppealImplCopyWith<_$MediaContentBlockAppealImpl>
      get copyWith => __$$MediaContentBlockAppealImplCopyWithImpl<
          _$MediaContentBlockAppealImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String id, String parentId, int sortId, String title)
        title,
    required TResult Function(
            String id, String parentId, int sortId, String content)
        textField,
    required TResult Function(
            String id, String parentId, int sortId, String image)
        image,
    required TResult Function(
            String id, String parentId, int sortId, String link, String title)
        linkButton,
    required TResult Function(String id, String parentId, int sortId) appeal,
    required TResult Function(String id, String parentId, int sortId) signature,
  }) {
    return appeal(id, parentId, sortId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id, String parentId, int sortId, String title)?
        title,
    TResult? Function(String id, String parentId, int sortId, String content)?
        textField,
    TResult? Function(String id, String parentId, int sortId, String image)?
        image,
    TResult? Function(
            String id, String parentId, int sortId, String link, String title)?
        linkButton,
    TResult? Function(String id, String parentId, int sortId)? appeal,
    TResult? Function(String id, String parentId, int sortId)? signature,
  }) {
    return appeal?.call(id, parentId, sortId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id, String parentId, int sortId, String title)?
        title,
    TResult Function(String id, String parentId, int sortId, String content)?
        textField,
    TResult Function(String id, String parentId, int sortId, String image)?
        image,
    TResult Function(
            String id, String parentId, int sortId, String link, String title)?
        linkButton,
    TResult Function(String id, String parentId, int sortId)? appeal,
    TResult Function(String id, String parentId, int sortId)? signature,
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
    required TResult Function(_MediaContentBlockTitle value) title,
    required TResult Function(_MediaContentBlockTextField value) textField,
    required TResult Function(_MediaContentBlockImage value) image,
    required TResult Function(_MediaContentBlockLinkButton value) linkButton,
    required TResult Function(_MediaContentBlockAppeal value) appeal,
    required TResult Function(_MediaContentBlockSignature value) signature,
  }) {
    return appeal(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_MediaContentBlockTitle value)? title,
    TResult? Function(_MediaContentBlockTextField value)? textField,
    TResult? Function(_MediaContentBlockImage value)? image,
    TResult? Function(_MediaContentBlockLinkButton value)? linkButton,
    TResult? Function(_MediaContentBlockAppeal value)? appeal,
    TResult? Function(_MediaContentBlockSignature value)? signature,
  }) {
    return appeal?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_MediaContentBlockTitle value)? title,
    TResult Function(_MediaContentBlockTextField value)? textField,
    TResult Function(_MediaContentBlockImage value)? image,
    TResult Function(_MediaContentBlockLinkButton value)? linkButton,
    TResult Function(_MediaContentBlockAppeal value)? appeal,
    TResult Function(_MediaContentBlockSignature value)? signature,
    required TResult orElse(),
  }) {
    if (appeal != null) {
      return appeal(this);
    }
    return orElse();
  }
}

abstract class _MediaContentBlockAppeal implements MediaContentBlock {
  const factory _MediaContentBlockAppeal(
      {required final String id,
      required final String parentId,
      required final int sortId}) = _$MediaContentBlockAppealImpl;

  @override
  String get id;
  @override
  String get parentId;
  @override
  int get sortId;
  @override
  @JsonKey(ignore: true)
  _$$MediaContentBlockAppealImplCopyWith<_$MediaContentBlockAppealImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MediaContentBlockSignatureImplCopyWith<$Res>
    implements $MediaContentBlockCopyWith<$Res> {
  factory _$$MediaContentBlockSignatureImplCopyWith(
          _$MediaContentBlockSignatureImpl value,
          $Res Function(_$MediaContentBlockSignatureImpl) then) =
      __$$MediaContentBlockSignatureImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String parentId, int sortId});
}

/// @nodoc
class __$$MediaContentBlockSignatureImplCopyWithImpl<$Res>
    extends _$MediaContentBlockCopyWithImpl<$Res,
        _$MediaContentBlockSignatureImpl>
    implements _$$MediaContentBlockSignatureImplCopyWith<$Res> {
  __$$MediaContentBlockSignatureImplCopyWithImpl(
      _$MediaContentBlockSignatureImpl _value,
      $Res Function(_$MediaContentBlockSignatureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? parentId = null,
    Object? sortId = null,
  }) {
    return _then(_$MediaContentBlockSignatureImpl(
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

class _$MediaContentBlockSignatureImpl implements _MediaContentBlockSignature {
  const _$MediaContentBlockSignatureImpl(
      {required this.id, required this.parentId, required this.sortId});

  @override
  final String id;
  @override
  final String parentId;
  @override
  final int sortId;

  @override
  String toString() {
    return 'MediaContentBlock.signature(id: $id, parentId: $parentId, sortId: $sortId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MediaContentBlockSignatureImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.parentId, parentId) ||
                other.parentId == parentId) &&
            (identical(other.sortId, sortId) || other.sortId == sortId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, parentId, sortId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MediaContentBlockSignatureImplCopyWith<_$MediaContentBlockSignatureImpl>
      get copyWith => __$$MediaContentBlockSignatureImplCopyWithImpl<
          _$MediaContentBlockSignatureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String id, String parentId, int sortId, String title)
        title,
    required TResult Function(
            String id, String parentId, int sortId, String content)
        textField,
    required TResult Function(
            String id, String parentId, int sortId, String image)
        image,
    required TResult Function(
            String id, String parentId, int sortId, String link, String title)
        linkButton,
    required TResult Function(String id, String parentId, int sortId) appeal,
    required TResult Function(String id, String parentId, int sortId) signature,
  }) {
    return signature(id, parentId, sortId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id, String parentId, int sortId, String title)?
        title,
    TResult? Function(String id, String parentId, int sortId, String content)?
        textField,
    TResult? Function(String id, String parentId, int sortId, String image)?
        image,
    TResult? Function(
            String id, String parentId, int sortId, String link, String title)?
        linkButton,
    TResult? Function(String id, String parentId, int sortId)? appeal,
    TResult? Function(String id, String parentId, int sortId)? signature,
  }) {
    return signature?.call(id, parentId, sortId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id, String parentId, int sortId, String title)?
        title,
    TResult Function(String id, String parentId, int sortId, String content)?
        textField,
    TResult Function(String id, String parentId, int sortId, String image)?
        image,
    TResult Function(
            String id, String parentId, int sortId, String link, String title)?
        linkButton,
    TResult Function(String id, String parentId, int sortId)? appeal,
    TResult Function(String id, String parentId, int sortId)? signature,
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
    required TResult Function(_MediaContentBlockTitle value) title,
    required TResult Function(_MediaContentBlockTextField value) textField,
    required TResult Function(_MediaContentBlockImage value) image,
    required TResult Function(_MediaContentBlockLinkButton value) linkButton,
    required TResult Function(_MediaContentBlockAppeal value) appeal,
    required TResult Function(_MediaContentBlockSignature value) signature,
  }) {
    return signature(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_MediaContentBlockTitle value)? title,
    TResult? Function(_MediaContentBlockTextField value)? textField,
    TResult? Function(_MediaContentBlockImage value)? image,
    TResult? Function(_MediaContentBlockLinkButton value)? linkButton,
    TResult? Function(_MediaContentBlockAppeal value)? appeal,
    TResult? Function(_MediaContentBlockSignature value)? signature,
  }) {
    return signature?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_MediaContentBlockTitle value)? title,
    TResult Function(_MediaContentBlockTextField value)? textField,
    TResult Function(_MediaContentBlockImage value)? image,
    TResult Function(_MediaContentBlockLinkButton value)? linkButton,
    TResult Function(_MediaContentBlockAppeal value)? appeal,
    TResult Function(_MediaContentBlockSignature value)? signature,
    required TResult orElse(),
  }) {
    if (signature != null) {
      return signature(this);
    }
    return orElse();
  }
}

abstract class _MediaContentBlockSignature implements MediaContentBlock {
  const factory _MediaContentBlockSignature(
      {required final String id,
      required final String parentId,
      required final int sortId}) = _$MediaContentBlockSignatureImpl;

  @override
  String get id;
  @override
  String get parentId;
  @override
  int get sortId;
  @override
  @JsonKey(ignore: true)
  _$$MediaContentBlockSignatureImplCopyWith<_$MediaContentBlockSignatureImpl>
      get copyWith => throw _privateConstructorUsedError;
}
