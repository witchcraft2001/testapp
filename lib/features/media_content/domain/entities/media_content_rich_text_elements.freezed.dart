// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'media_content_rich_text_elements.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ContentRichTextElement {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String text) text,
    required TResult Function(String text) textBold,
    required TResult Function(String text, String link) link,
    required TResult Function(String text, String link) linkBold,
    required TResult Function(List<ContentRichTextElement> children)
        orderedList,
    required TResult Function(List<ContentRichTextElement> children)
        unorderedList,
    required TResult Function(List<ContentRichTextElement> children) paragraph,
    required TResult Function() unsupported,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String text)? text,
    TResult? Function(String text)? textBold,
    TResult? Function(String text, String link)? link,
    TResult? Function(String text, String link)? linkBold,
    TResult? Function(List<ContentRichTextElement> children)? orderedList,
    TResult? Function(List<ContentRichTextElement> children)? unorderedList,
    TResult? Function(List<ContentRichTextElement> children)? paragraph,
    TResult? Function()? unsupported,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String text)? text,
    TResult Function(String text)? textBold,
    TResult Function(String text, String link)? link,
    TResult Function(String text, String link)? linkBold,
    TResult Function(List<ContentRichTextElement> children)? orderedList,
    TResult Function(List<ContentRichTextElement> children)? unorderedList,
    TResult Function(List<ContentRichTextElement> children)? paragraph,
    TResult Function()? unsupported,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ContentRichTextElementText value) text,
    required TResult Function(_ContentRichTextElementTextBold value) textBold,
    required TResult Function(_ContentRichTextElementLink value) link,
    required TResult Function(_ContentRichTextElementLinkBold value) linkBold,
    required TResult Function(_ContentRichTextElementOrderedList value)
        orderedList,
    required TResult Function(_ContentRichTextElementUnorderedList value)
        unorderedList,
    required TResult Function(_ContentRichTextElementParagraph value) paragraph,
    required TResult Function(ContentRichTextElementUnsupported value)
        unsupported,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ContentRichTextElementText value)? text,
    TResult? Function(_ContentRichTextElementTextBold value)? textBold,
    TResult? Function(_ContentRichTextElementLink value)? link,
    TResult? Function(_ContentRichTextElementLinkBold value)? linkBold,
    TResult? Function(_ContentRichTextElementOrderedList value)? orderedList,
    TResult? Function(_ContentRichTextElementUnorderedList value)?
        unorderedList,
    TResult? Function(_ContentRichTextElementParagraph value)? paragraph,
    TResult? Function(ContentRichTextElementUnsupported value)? unsupported,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ContentRichTextElementText value)? text,
    TResult Function(_ContentRichTextElementTextBold value)? textBold,
    TResult Function(_ContentRichTextElementLink value)? link,
    TResult Function(_ContentRichTextElementLinkBold value)? linkBold,
    TResult Function(_ContentRichTextElementOrderedList value)? orderedList,
    TResult Function(_ContentRichTextElementUnorderedList value)? unorderedList,
    TResult Function(_ContentRichTextElementParagraph value)? paragraph,
    TResult Function(ContentRichTextElementUnsupported value)? unsupported,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContentRichTextElementCopyWith<$Res> {
  factory $ContentRichTextElementCopyWith(ContentRichTextElement value,
          $Res Function(ContentRichTextElement) then) =
      _$ContentRichTextElementCopyWithImpl<$Res, ContentRichTextElement>;
}

/// @nodoc
class _$ContentRichTextElementCopyWithImpl<$Res,
        $Val extends ContentRichTextElement>
    implements $ContentRichTextElementCopyWith<$Res> {
  _$ContentRichTextElementCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ContentRichTextElementTextImplCopyWith<$Res> {
  factory _$$ContentRichTextElementTextImplCopyWith(
          _$ContentRichTextElementTextImpl value,
          $Res Function(_$ContentRichTextElementTextImpl) then) =
      __$$ContentRichTextElementTextImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String text});
}

/// @nodoc
class __$$ContentRichTextElementTextImplCopyWithImpl<$Res>
    extends _$ContentRichTextElementCopyWithImpl<$Res,
        _$ContentRichTextElementTextImpl>
    implements _$$ContentRichTextElementTextImplCopyWith<$Res> {
  __$$ContentRichTextElementTextImplCopyWithImpl(
      _$ContentRichTextElementTextImpl _value,
      $Res Function(_$ContentRichTextElementTextImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
  }) {
    return _then(_$ContentRichTextElementTextImpl(
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ContentRichTextElementTextImpl implements _ContentRichTextElementText {
  const _$ContentRichTextElementTextImpl({required this.text});

  @override
  final String text;

  @override
  String toString() {
    return 'ContentRichTextElement.text(text: $text)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ContentRichTextElementTextImpl &&
            (identical(other.text, text) || other.text == text));
  }

  @override
  int get hashCode => Object.hash(runtimeType, text);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ContentRichTextElementTextImplCopyWith<_$ContentRichTextElementTextImpl>
      get copyWith => __$$ContentRichTextElementTextImplCopyWithImpl<
          _$ContentRichTextElementTextImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String text) text,
    required TResult Function(String text) textBold,
    required TResult Function(String text, String link) link,
    required TResult Function(String text, String link) linkBold,
    required TResult Function(List<ContentRichTextElement> children)
        orderedList,
    required TResult Function(List<ContentRichTextElement> children)
        unorderedList,
    required TResult Function(List<ContentRichTextElement> children) paragraph,
    required TResult Function() unsupported,
  }) {
    return text(this.text);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String text)? text,
    TResult? Function(String text)? textBold,
    TResult? Function(String text, String link)? link,
    TResult? Function(String text, String link)? linkBold,
    TResult? Function(List<ContentRichTextElement> children)? orderedList,
    TResult? Function(List<ContentRichTextElement> children)? unorderedList,
    TResult? Function(List<ContentRichTextElement> children)? paragraph,
    TResult? Function()? unsupported,
  }) {
    return text?.call(this.text);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String text)? text,
    TResult Function(String text)? textBold,
    TResult Function(String text, String link)? link,
    TResult Function(String text, String link)? linkBold,
    TResult Function(List<ContentRichTextElement> children)? orderedList,
    TResult Function(List<ContentRichTextElement> children)? unorderedList,
    TResult Function(List<ContentRichTextElement> children)? paragraph,
    TResult Function()? unsupported,
    required TResult orElse(),
  }) {
    if (text != null) {
      return text(this.text);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ContentRichTextElementText value) text,
    required TResult Function(_ContentRichTextElementTextBold value) textBold,
    required TResult Function(_ContentRichTextElementLink value) link,
    required TResult Function(_ContentRichTextElementLinkBold value) linkBold,
    required TResult Function(_ContentRichTextElementOrderedList value)
        orderedList,
    required TResult Function(_ContentRichTextElementUnorderedList value)
        unorderedList,
    required TResult Function(_ContentRichTextElementParagraph value) paragraph,
    required TResult Function(ContentRichTextElementUnsupported value)
        unsupported,
  }) {
    return text(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ContentRichTextElementText value)? text,
    TResult? Function(_ContentRichTextElementTextBold value)? textBold,
    TResult? Function(_ContentRichTextElementLink value)? link,
    TResult? Function(_ContentRichTextElementLinkBold value)? linkBold,
    TResult? Function(_ContentRichTextElementOrderedList value)? orderedList,
    TResult? Function(_ContentRichTextElementUnorderedList value)?
        unorderedList,
    TResult? Function(_ContentRichTextElementParagraph value)? paragraph,
    TResult? Function(ContentRichTextElementUnsupported value)? unsupported,
  }) {
    return text?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ContentRichTextElementText value)? text,
    TResult Function(_ContentRichTextElementTextBold value)? textBold,
    TResult Function(_ContentRichTextElementLink value)? link,
    TResult Function(_ContentRichTextElementLinkBold value)? linkBold,
    TResult Function(_ContentRichTextElementOrderedList value)? orderedList,
    TResult Function(_ContentRichTextElementUnorderedList value)? unorderedList,
    TResult Function(_ContentRichTextElementParagraph value)? paragraph,
    TResult Function(ContentRichTextElementUnsupported value)? unsupported,
    required TResult orElse(),
  }) {
    if (text != null) {
      return text(this);
    }
    return orElse();
  }
}

abstract class _ContentRichTextElementText implements ContentRichTextElement {
  const factory _ContentRichTextElementText({required final String text}) =
      _$ContentRichTextElementTextImpl;

  String get text;
  @JsonKey(ignore: true)
  _$$ContentRichTextElementTextImplCopyWith<_$ContentRichTextElementTextImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ContentRichTextElementTextBoldImplCopyWith<$Res> {
  factory _$$ContentRichTextElementTextBoldImplCopyWith(
          _$ContentRichTextElementTextBoldImpl value,
          $Res Function(_$ContentRichTextElementTextBoldImpl) then) =
      __$$ContentRichTextElementTextBoldImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String text});
}

/// @nodoc
class __$$ContentRichTextElementTextBoldImplCopyWithImpl<$Res>
    extends _$ContentRichTextElementCopyWithImpl<$Res,
        _$ContentRichTextElementTextBoldImpl>
    implements _$$ContentRichTextElementTextBoldImplCopyWith<$Res> {
  __$$ContentRichTextElementTextBoldImplCopyWithImpl(
      _$ContentRichTextElementTextBoldImpl _value,
      $Res Function(_$ContentRichTextElementTextBoldImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
  }) {
    return _then(_$ContentRichTextElementTextBoldImpl(
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ContentRichTextElementTextBoldImpl
    implements _ContentRichTextElementTextBold {
  const _$ContentRichTextElementTextBoldImpl({required this.text});

  @override
  final String text;

  @override
  String toString() {
    return 'ContentRichTextElement.textBold(text: $text)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ContentRichTextElementTextBoldImpl &&
            (identical(other.text, text) || other.text == text));
  }

  @override
  int get hashCode => Object.hash(runtimeType, text);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ContentRichTextElementTextBoldImplCopyWith<
          _$ContentRichTextElementTextBoldImpl>
      get copyWith => __$$ContentRichTextElementTextBoldImplCopyWithImpl<
          _$ContentRichTextElementTextBoldImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String text) text,
    required TResult Function(String text) textBold,
    required TResult Function(String text, String link) link,
    required TResult Function(String text, String link) linkBold,
    required TResult Function(List<ContentRichTextElement> children)
        orderedList,
    required TResult Function(List<ContentRichTextElement> children)
        unorderedList,
    required TResult Function(List<ContentRichTextElement> children) paragraph,
    required TResult Function() unsupported,
  }) {
    return textBold(this.text);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String text)? text,
    TResult? Function(String text)? textBold,
    TResult? Function(String text, String link)? link,
    TResult? Function(String text, String link)? linkBold,
    TResult? Function(List<ContentRichTextElement> children)? orderedList,
    TResult? Function(List<ContentRichTextElement> children)? unorderedList,
    TResult? Function(List<ContentRichTextElement> children)? paragraph,
    TResult? Function()? unsupported,
  }) {
    return textBold?.call(this.text);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String text)? text,
    TResult Function(String text)? textBold,
    TResult Function(String text, String link)? link,
    TResult Function(String text, String link)? linkBold,
    TResult Function(List<ContentRichTextElement> children)? orderedList,
    TResult Function(List<ContentRichTextElement> children)? unorderedList,
    TResult Function(List<ContentRichTextElement> children)? paragraph,
    TResult Function()? unsupported,
    required TResult orElse(),
  }) {
    if (textBold != null) {
      return textBold(this.text);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ContentRichTextElementText value) text,
    required TResult Function(_ContentRichTextElementTextBold value) textBold,
    required TResult Function(_ContentRichTextElementLink value) link,
    required TResult Function(_ContentRichTextElementLinkBold value) linkBold,
    required TResult Function(_ContentRichTextElementOrderedList value)
        orderedList,
    required TResult Function(_ContentRichTextElementUnorderedList value)
        unorderedList,
    required TResult Function(_ContentRichTextElementParagraph value) paragraph,
    required TResult Function(ContentRichTextElementUnsupported value)
        unsupported,
  }) {
    return textBold(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ContentRichTextElementText value)? text,
    TResult? Function(_ContentRichTextElementTextBold value)? textBold,
    TResult? Function(_ContentRichTextElementLink value)? link,
    TResult? Function(_ContentRichTextElementLinkBold value)? linkBold,
    TResult? Function(_ContentRichTextElementOrderedList value)? orderedList,
    TResult? Function(_ContentRichTextElementUnorderedList value)?
        unorderedList,
    TResult? Function(_ContentRichTextElementParagraph value)? paragraph,
    TResult? Function(ContentRichTextElementUnsupported value)? unsupported,
  }) {
    return textBold?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ContentRichTextElementText value)? text,
    TResult Function(_ContentRichTextElementTextBold value)? textBold,
    TResult Function(_ContentRichTextElementLink value)? link,
    TResult Function(_ContentRichTextElementLinkBold value)? linkBold,
    TResult Function(_ContentRichTextElementOrderedList value)? orderedList,
    TResult Function(_ContentRichTextElementUnorderedList value)? unorderedList,
    TResult Function(_ContentRichTextElementParagraph value)? paragraph,
    TResult Function(ContentRichTextElementUnsupported value)? unsupported,
    required TResult orElse(),
  }) {
    if (textBold != null) {
      return textBold(this);
    }
    return orElse();
  }
}

abstract class _ContentRichTextElementTextBold
    implements ContentRichTextElement {
  const factory _ContentRichTextElementTextBold({required final String text}) =
      _$ContentRichTextElementTextBoldImpl;

  String get text;
  @JsonKey(ignore: true)
  _$$ContentRichTextElementTextBoldImplCopyWith<
          _$ContentRichTextElementTextBoldImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ContentRichTextElementLinkImplCopyWith<$Res> {
  factory _$$ContentRichTextElementLinkImplCopyWith(
          _$ContentRichTextElementLinkImpl value,
          $Res Function(_$ContentRichTextElementLinkImpl) then) =
      __$$ContentRichTextElementLinkImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String text, String link});
}

/// @nodoc
class __$$ContentRichTextElementLinkImplCopyWithImpl<$Res>
    extends _$ContentRichTextElementCopyWithImpl<$Res,
        _$ContentRichTextElementLinkImpl>
    implements _$$ContentRichTextElementLinkImplCopyWith<$Res> {
  __$$ContentRichTextElementLinkImplCopyWithImpl(
      _$ContentRichTextElementLinkImpl _value,
      $Res Function(_$ContentRichTextElementLinkImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
    Object? link = null,
  }) {
    return _then(_$ContentRichTextElementLinkImpl(
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      link: null == link
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ContentRichTextElementLinkImpl implements _ContentRichTextElementLink {
  const _$ContentRichTextElementLinkImpl(
      {required this.text, required this.link});

  @override
  final String text;
  @override
  final String link;

  @override
  String toString() {
    return 'ContentRichTextElement.link(text: $text, link: $link)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ContentRichTextElementLinkImpl &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.link, link) || other.link == link));
  }

  @override
  int get hashCode => Object.hash(runtimeType, text, link);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ContentRichTextElementLinkImplCopyWith<_$ContentRichTextElementLinkImpl>
      get copyWith => __$$ContentRichTextElementLinkImplCopyWithImpl<
          _$ContentRichTextElementLinkImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String text) text,
    required TResult Function(String text) textBold,
    required TResult Function(String text, String link) link,
    required TResult Function(String text, String link) linkBold,
    required TResult Function(List<ContentRichTextElement> children)
        orderedList,
    required TResult Function(List<ContentRichTextElement> children)
        unorderedList,
    required TResult Function(List<ContentRichTextElement> children) paragraph,
    required TResult Function() unsupported,
  }) {
    return link(this.text, this.link);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String text)? text,
    TResult? Function(String text)? textBold,
    TResult? Function(String text, String link)? link,
    TResult? Function(String text, String link)? linkBold,
    TResult? Function(List<ContentRichTextElement> children)? orderedList,
    TResult? Function(List<ContentRichTextElement> children)? unorderedList,
    TResult? Function(List<ContentRichTextElement> children)? paragraph,
    TResult? Function()? unsupported,
  }) {
    return link?.call(this.text, this.link);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String text)? text,
    TResult Function(String text)? textBold,
    TResult Function(String text, String link)? link,
    TResult Function(String text, String link)? linkBold,
    TResult Function(List<ContentRichTextElement> children)? orderedList,
    TResult Function(List<ContentRichTextElement> children)? unorderedList,
    TResult Function(List<ContentRichTextElement> children)? paragraph,
    TResult Function()? unsupported,
    required TResult orElse(),
  }) {
    if (link != null) {
      return link(this.text, this.link);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ContentRichTextElementText value) text,
    required TResult Function(_ContentRichTextElementTextBold value) textBold,
    required TResult Function(_ContentRichTextElementLink value) link,
    required TResult Function(_ContentRichTextElementLinkBold value) linkBold,
    required TResult Function(_ContentRichTextElementOrderedList value)
        orderedList,
    required TResult Function(_ContentRichTextElementUnorderedList value)
        unorderedList,
    required TResult Function(_ContentRichTextElementParagraph value) paragraph,
    required TResult Function(ContentRichTextElementUnsupported value)
        unsupported,
  }) {
    return link(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ContentRichTextElementText value)? text,
    TResult? Function(_ContentRichTextElementTextBold value)? textBold,
    TResult? Function(_ContentRichTextElementLink value)? link,
    TResult? Function(_ContentRichTextElementLinkBold value)? linkBold,
    TResult? Function(_ContentRichTextElementOrderedList value)? orderedList,
    TResult? Function(_ContentRichTextElementUnorderedList value)?
        unorderedList,
    TResult? Function(_ContentRichTextElementParagraph value)? paragraph,
    TResult? Function(ContentRichTextElementUnsupported value)? unsupported,
  }) {
    return link?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ContentRichTextElementText value)? text,
    TResult Function(_ContentRichTextElementTextBold value)? textBold,
    TResult Function(_ContentRichTextElementLink value)? link,
    TResult Function(_ContentRichTextElementLinkBold value)? linkBold,
    TResult Function(_ContentRichTextElementOrderedList value)? orderedList,
    TResult Function(_ContentRichTextElementUnorderedList value)? unorderedList,
    TResult Function(_ContentRichTextElementParagraph value)? paragraph,
    TResult Function(ContentRichTextElementUnsupported value)? unsupported,
    required TResult orElse(),
  }) {
    if (link != null) {
      return link(this);
    }
    return orElse();
  }
}

abstract class _ContentRichTextElementLink implements ContentRichTextElement {
  const factory _ContentRichTextElementLink(
      {required final String text,
      required final String link}) = _$ContentRichTextElementLinkImpl;

  String get text;
  String get link;
  @JsonKey(ignore: true)
  _$$ContentRichTextElementLinkImplCopyWith<_$ContentRichTextElementLinkImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ContentRichTextElementLinkBoldImplCopyWith<$Res> {
  factory _$$ContentRichTextElementLinkBoldImplCopyWith(
          _$ContentRichTextElementLinkBoldImpl value,
          $Res Function(_$ContentRichTextElementLinkBoldImpl) then) =
      __$$ContentRichTextElementLinkBoldImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String text, String link});
}

/// @nodoc
class __$$ContentRichTextElementLinkBoldImplCopyWithImpl<$Res>
    extends _$ContentRichTextElementCopyWithImpl<$Res,
        _$ContentRichTextElementLinkBoldImpl>
    implements _$$ContentRichTextElementLinkBoldImplCopyWith<$Res> {
  __$$ContentRichTextElementLinkBoldImplCopyWithImpl(
      _$ContentRichTextElementLinkBoldImpl _value,
      $Res Function(_$ContentRichTextElementLinkBoldImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
    Object? link = null,
  }) {
    return _then(_$ContentRichTextElementLinkBoldImpl(
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      link: null == link
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ContentRichTextElementLinkBoldImpl
    implements _ContentRichTextElementLinkBold {
  const _$ContentRichTextElementLinkBoldImpl(
      {required this.text, required this.link});

  @override
  final String text;
  @override
  final String link;

  @override
  String toString() {
    return 'ContentRichTextElement.linkBold(text: $text, link: $link)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ContentRichTextElementLinkBoldImpl &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.link, link) || other.link == link));
  }

  @override
  int get hashCode => Object.hash(runtimeType, text, link);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ContentRichTextElementLinkBoldImplCopyWith<
          _$ContentRichTextElementLinkBoldImpl>
      get copyWith => __$$ContentRichTextElementLinkBoldImplCopyWithImpl<
          _$ContentRichTextElementLinkBoldImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String text) text,
    required TResult Function(String text) textBold,
    required TResult Function(String text, String link) link,
    required TResult Function(String text, String link) linkBold,
    required TResult Function(List<ContentRichTextElement> children)
        orderedList,
    required TResult Function(List<ContentRichTextElement> children)
        unorderedList,
    required TResult Function(List<ContentRichTextElement> children) paragraph,
    required TResult Function() unsupported,
  }) {
    return linkBold(this.text, this.link);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String text)? text,
    TResult? Function(String text)? textBold,
    TResult? Function(String text, String link)? link,
    TResult? Function(String text, String link)? linkBold,
    TResult? Function(List<ContentRichTextElement> children)? orderedList,
    TResult? Function(List<ContentRichTextElement> children)? unorderedList,
    TResult? Function(List<ContentRichTextElement> children)? paragraph,
    TResult? Function()? unsupported,
  }) {
    return linkBold?.call(this.text, this.link);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String text)? text,
    TResult Function(String text)? textBold,
    TResult Function(String text, String link)? link,
    TResult Function(String text, String link)? linkBold,
    TResult Function(List<ContentRichTextElement> children)? orderedList,
    TResult Function(List<ContentRichTextElement> children)? unorderedList,
    TResult Function(List<ContentRichTextElement> children)? paragraph,
    TResult Function()? unsupported,
    required TResult orElse(),
  }) {
    if (linkBold != null) {
      return linkBold(this.text, this.link);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ContentRichTextElementText value) text,
    required TResult Function(_ContentRichTextElementTextBold value) textBold,
    required TResult Function(_ContentRichTextElementLink value) link,
    required TResult Function(_ContentRichTextElementLinkBold value) linkBold,
    required TResult Function(_ContentRichTextElementOrderedList value)
        orderedList,
    required TResult Function(_ContentRichTextElementUnorderedList value)
        unorderedList,
    required TResult Function(_ContentRichTextElementParagraph value) paragraph,
    required TResult Function(ContentRichTextElementUnsupported value)
        unsupported,
  }) {
    return linkBold(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ContentRichTextElementText value)? text,
    TResult? Function(_ContentRichTextElementTextBold value)? textBold,
    TResult? Function(_ContentRichTextElementLink value)? link,
    TResult? Function(_ContentRichTextElementLinkBold value)? linkBold,
    TResult? Function(_ContentRichTextElementOrderedList value)? orderedList,
    TResult? Function(_ContentRichTextElementUnorderedList value)?
        unorderedList,
    TResult? Function(_ContentRichTextElementParagraph value)? paragraph,
    TResult? Function(ContentRichTextElementUnsupported value)? unsupported,
  }) {
    return linkBold?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ContentRichTextElementText value)? text,
    TResult Function(_ContentRichTextElementTextBold value)? textBold,
    TResult Function(_ContentRichTextElementLink value)? link,
    TResult Function(_ContentRichTextElementLinkBold value)? linkBold,
    TResult Function(_ContentRichTextElementOrderedList value)? orderedList,
    TResult Function(_ContentRichTextElementUnorderedList value)? unorderedList,
    TResult Function(_ContentRichTextElementParagraph value)? paragraph,
    TResult Function(ContentRichTextElementUnsupported value)? unsupported,
    required TResult orElse(),
  }) {
    if (linkBold != null) {
      return linkBold(this);
    }
    return orElse();
  }
}

abstract class _ContentRichTextElementLinkBold
    implements ContentRichTextElement {
  const factory _ContentRichTextElementLinkBold(
      {required final String text,
      required final String link}) = _$ContentRichTextElementLinkBoldImpl;

  String get text;
  String get link;
  @JsonKey(ignore: true)
  _$$ContentRichTextElementLinkBoldImplCopyWith<
          _$ContentRichTextElementLinkBoldImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ContentRichTextElementOrderedListImplCopyWith<$Res> {
  factory _$$ContentRichTextElementOrderedListImplCopyWith(
          _$ContentRichTextElementOrderedListImpl value,
          $Res Function(_$ContentRichTextElementOrderedListImpl) then) =
      __$$ContentRichTextElementOrderedListImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<ContentRichTextElement> children});
}

/// @nodoc
class __$$ContentRichTextElementOrderedListImplCopyWithImpl<$Res>
    extends _$ContentRichTextElementCopyWithImpl<$Res,
        _$ContentRichTextElementOrderedListImpl>
    implements _$$ContentRichTextElementOrderedListImplCopyWith<$Res> {
  __$$ContentRichTextElementOrderedListImplCopyWithImpl(
      _$ContentRichTextElementOrderedListImpl _value,
      $Res Function(_$ContentRichTextElementOrderedListImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? children = null,
  }) {
    return _then(_$ContentRichTextElementOrderedListImpl(
      children: null == children
          ? _value._children
          : children // ignore: cast_nullable_to_non_nullable
              as List<ContentRichTextElement>,
    ));
  }
}

/// @nodoc

class _$ContentRichTextElementOrderedListImpl
    implements _ContentRichTextElementOrderedList {
  const _$ContentRichTextElementOrderedListImpl(
      {required final List<ContentRichTextElement> children})
      : _children = children;

  final List<ContentRichTextElement> _children;
  @override
  List<ContentRichTextElement> get children {
    if (_children is EqualUnmodifiableListView) return _children;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_children);
  }

  @override
  String toString() {
    return 'ContentRichTextElement.orderedList(children: $children)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ContentRichTextElementOrderedListImpl &&
            const DeepCollectionEquality().equals(other._children, _children));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_children));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ContentRichTextElementOrderedListImplCopyWith<
          _$ContentRichTextElementOrderedListImpl>
      get copyWith => __$$ContentRichTextElementOrderedListImplCopyWithImpl<
          _$ContentRichTextElementOrderedListImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String text) text,
    required TResult Function(String text) textBold,
    required TResult Function(String text, String link) link,
    required TResult Function(String text, String link) linkBold,
    required TResult Function(List<ContentRichTextElement> children)
        orderedList,
    required TResult Function(List<ContentRichTextElement> children)
        unorderedList,
    required TResult Function(List<ContentRichTextElement> children) paragraph,
    required TResult Function() unsupported,
  }) {
    return orderedList(children);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String text)? text,
    TResult? Function(String text)? textBold,
    TResult? Function(String text, String link)? link,
    TResult? Function(String text, String link)? linkBold,
    TResult? Function(List<ContentRichTextElement> children)? orderedList,
    TResult? Function(List<ContentRichTextElement> children)? unorderedList,
    TResult? Function(List<ContentRichTextElement> children)? paragraph,
    TResult? Function()? unsupported,
  }) {
    return orderedList?.call(children);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String text)? text,
    TResult Function(String text)? textBold,
    TResult Function(String text, String link)? link,
    TResult Function(String text, String link)? linkBold,
    TResult Function(List<ContentRichTextElement> children)? orderedList,
    TResult Function(List<ContentRichTextElement> children)? unorderedList,
    TResult Function(List<ContentRichTextElement> children)? paragraph,
    TResult Function()? unsupported,
    required TResult orElse(),
  }) {
    if (orderedList != null) {
      return orderedList(children);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ContentRichTextElementText value) text,
    required TResult Function(_ContentRichTextElementTextBold value) textBold,
    required TResult Function(_ContentRichTextElementLink value) link,
    required TResult Function(_ContentRichTextElementLinkBold value) linkBold,
    required TResult Function(_ContentRichTextElementOrderedList value)
        orderedList,
    required TResult Function(_ContentRichTextElementUnorderedList value)
        unorderedList,
    required TResult Function(_ContentRichTextElementParagraph value) paragraph,
    required TResult Function(ContentRichTextElementUnsupported value)
        unsupported,
  }) {
    return orderedList(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ContentRichTextElementText value)? text,
    TResult? Function(_ContentRichTextElementTextBold value)? textBold,
    TResult? Function(_ContentRichTextElementLink value)? link,
    TResult? Function(_ContentRichTextElementLinkBold value)? linkBold,
    TResult? Function(_ContentRichTextElementOrderedList value)? orderedList,
    TResult? Function(_ContentRichTextElementUnorderedList value)?
        unorderedList,
    TResult? Function(_ContentRichTextElementParagraph value)? paragraph,
    TResult? Function(ContentRichTextElementUnsupported value)? unsupported,
  }) {
    return orderedList?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ContentRichTextElementText value)? text,
    TResult Function(_ContentRichTextElementTextBold value)? textBold,
    TResult Function(_ContentRichTextElementLink value)? link,
    TResult Function(_ContentRichTextElementLinkBold value)? linkBold,
    TResult Function(_ContentRichTextElementOrderedList value)? orderedList,
    TResult Function(_ContentRichTextElementUnorderedList value)? unorderedList,
    TResult Function(_ContentRichTextElementParagraph value)? paragraph,
    TResult Function(ContentRichTextElementUnsupported value)? unsupported,
    required TResult orElse(),
  }) {
    if (orderedList != null) {
      return orderedList(this);
    }
    return orElse();
  }
}

abstract class _ContentRichTextElementOrderedList
    implements ContentRichTextElement {
  const factory _ContentRichTextElementOrderedList(
          {required final List<ContentRichTextElement> children}) =
      _$ContentRichTextElementOrderedListImpl;

  List<ContentRichTextElement> get children;
  @JsonKey(ignore: true)
  _$$ContentRichTextElementOrderedListImplCopyWith<
          _$ContentRichTextElementOrderedListImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ContentRichTextElementUnorderedListImplCopyWith<$Res> {
  factory _$$ContentRichTextElementUnorderedListImplCopyWith(
          _$ContentRichTextElementUnorderedListImpl value,
          $Res Function(_$ContentRichTextElementUnorderedListImpl) then) =
      __$$ContentRichTextElementUnorderedListImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<ContentRichTextElement> children});
}

/// @nodoc
class __$$ContentRichTextElementUnorderedListImplCopyWithImpl<$Res>
    extends _$ContentRichTextElementCopyWithImpl<$Res,
        _$ContentRichTextElementUnorderedListImpl>
    implements _$$ContentRichTextElementUnorderedListImplCopyWith<$Res> {
  __$$ContentRichTextElementUnorderedListImplCopyWithImpl(
      _$ContentRichTextElementUnorderedListImpl _value,
      $Res Function(_$ContentRichTextElementUnorderedListImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? children = null,
  }) {
    return _then(_$ContentRichTextElementUnorderedListImpl(
      children: null == children
          ? _value._children
          : children // ignore: cast_nullable_to_non_nullable
              as List<ContentRichTextElement>,
    ));
  }
}

/// @nodoc

class _$ContentRichTextElementUnorderedListImpl
    implements _ContentRichTextElementUnorderedList {
  const _$ContentRichTextElementUnorderedListImpl(
      {required final List<ContentRichTextElement> children})
      : _children = children;

  final List<ContentRichTextElement> _children;
  @override
  List<ContentRichTextElement> get children {
    if (_children is EqualUnmodifiableListView) return _children;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_children);
  }

  @override
  String toString() {
    return 'ContentRichTextElement.unorderedList(children: $children)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ContentRichTextElementUnorderedListImpl &&
            const DeepCollectionEquality().equals(other._children, _children));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_children));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ContentRichTextElementUnorderedListImplCopyWith<
          _$ContentRichTextElementUnorderedListImpl>
      get copyWith => __$$ContentRichTextElementUnorderedListImplCopyWithImpl<
          _$ContentRichTextElementUnorderedListImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String text) text,
    required TResult Function(String text) textBold,
    required TResult Function(String text, String link) link,
    required TResult Function(String text, String link) linkBold,
    required TResult Function(List<ContentRichTextElement> children)
        orderedList,
    required TResult Function(List<ContentRichTextElement> children)
        unorderedList,
    required TResult Function(List<ContentRichTextElement> children) paragraph,
    required TResult Function() unsupported,
  }) {
    return unorderedList(children);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String text)? text,
    TResult? Function(String text)? textBold,
    TResult? Function(String text, String link)? link,
    TResult? Function(String text, String link)? linkBold,
    TResult? Function(List<ContentRichTextElement> children)? orderedList,
    TResult? Function(List<ContentRichTextElement> children)? unorderedList,
    TResult? Function(List<ContentRichTextElement> children)? paragraph,
    TResult? Function()? unsupported,
  }) {
    return unorderedList?.call(children);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String text)? text,
    TResult Function(String text)? textBold,
    TResult Function(String text, String link)? link,
    TResult Function(String text, String link)? linkBold,
    TResult Function(List<ContentRichTextElement> children)? orderedList,
    TResult Function(List<ContentRichTextElement> children)? unorderedList,
    TResult Function(List<ContentRichTextElement> children)? paragraph,
    TResult Function()? unsupported,
    required TResult orElse(),
  }) {
    if (unorderedList != null) {
      return unorderedList(children);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ContentRichTextElementText value) text,
    required TResult Function(_ContentRichTextElementTextBold value) textBold,
    required TResult Function(_ContentRichTextElementLink value) link,
    required TResult Function(_ContentRichTextElementLinkBold value) linkBold,
    required TResult Function(_ContentRichTextElementOrderedList value)
        orderedList,
    required TResult Function(_ContentRichTextElementUnorderedList value)
        unorderedList,
    required TResult Function(_ContentRichTextElementParagraph value) paragraph,
    required TResult Function(ContentRichTextElementUnsupported value)
        unsupported,
  }) {
    return unorderedList(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ContentRichTextElementText value)? text,
    TResult? Function(_ContentRichTextElementTextBold value)? textBold,
    TResult? Function(_ContentRichTextElementLink value)? link,
    TResult? Function(_ContentRichTextElementLinkBold value)? linkBold,
    TResult? Function(_ContentRichTextElementOrderedList value)? orderedList,
    TResult? Function(_ContentRichTextElementUnorderedList value)?
        unorderedList,
    TResult? Function(_ContentRichTextElementParagraph value)? paragraph,
    TResult? Function(ContentRichTextElementUnsupported value)? unsupported,
  }) {
    return unorderedList?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ContentRichTextElementText value)? text,
    TResult Function(_ContentRichTextElementTextBold value)? textBold,
    TResult Function(_ContentRichTextElementLink value)? link,
    TResult Function(_ContentRichTextElementLinkBold value)? linkBold,
    TResult Function(_ContentRichTextElementOrderedList value)? orderedList,
    TResult Function(_ContentRichTextElementUnorderedList value)? unorderedList,
    TResult Function(_ContentRichTextElementParagraph value)? paragraph,
    TResult Function(ContentRichTextElementUnsupported value)? unsupported,
    required TResult orElse(),
  }) {
    if (unorderedList != null) {
      return unorderedList(this);
    }
    return orElse();
  }
}

abstract class _ContentRichTextElementUnorderedList
    implements ContentRichTextElement {
  const factory _ContentRichTextElementUnorderedList(
          {required final List<ContentRichTextElement> children}) =
      _$ContentRichTextElementUnorderedListImpl;

  List<ContentRichTextElement> get children;
  @JsonKey(ignore: true)
  _$$ContentRichTextElementUnorderedListImplCopyWith<
          _$ContentRichTextElementUnorderedListImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ContentRichTextElementParagraphImplCopyWith<$Res> {
  factory _$$ContentRichTextElementParagraphImplCopyWith(
          _$ContentRichTextElementParagraphImpl value,
          $Res Function(_$ContentRichTextElementParagraphImpl) then) =
      __$$ContentRichTextElementParagraphImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<ContentRichTextElement> children});
}

/// @nodoc
class __$$ContentRichTextElementParagraphImplCopyWithImpl<$Res>
    extends _$ContentRichTextElementCopyWithImpl<$Res,
        _$ContentRichTextElementParagraphImpl>
    implements _$$ContentRichTextElementParagraphImplCopyWith<$Res> {
  __$$ContentRichTextElementParagraphImplCopyWithImpl(
      _$ContentRichTextElementParagraphImpl _value,
      $Res Function(_$ContentRichTextElementParagraphImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? children = null,
  }) {
    return _then(_$ContentRichTextElementParagraphImpl(
      children: null == children
          ? _value._children
          : children // ignore: cast_nullable_to_non_nullable
              as List<ContentRichTextElement>,
    ));
  }
}

/// @nodoc

class _$ContentRichTextElementParagraphImpl
    implements _ContentRichTextElementParagraph {
  const _$ContentRichTextElementParagraphImpl(
      {required final List<ContentRichTextElement> children})
      : _children = children;

  final List<ContentRichTextElement> _children;
  @override
  List<ContentRichTextElement> get children {
    if (_children is EqualUnmodifiableListView) return _children;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_children);
  }

  @override
  String toString() {
    return 'ContentRichTextElement.paragraph(children: $children)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ContentRichTextElementParagraphImpl &&
            const DeepCollectionEquality().equals(other._children, _children));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_children));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ContentRichTextElementParagraphImplCopyWith<
          _$ContentRichTextElementParagraphImpl>
      get copyWith => __$$ContentRichTextElementParagraphImplCopyWithImpl<
          _$ContentRichTextElementParagraphImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String text) text,
    required TResult Function(String text) textBold,
    required TResult Function(String text, String link) link,
    required TResult Function(String text, String link) linkBold,
    required TResult Function(List<ContentRichTextElement> children)
        orderedList,
    required TResult Function(List<ContentRichTextElement> children)
        unorderedList,
    required TResult Function(List<ContentRichTextElement> children) paragraph,
    required TResult Function() unsupported,
  }) {
    return paragraph(children);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String text)? text,
    TResult? Function(String text)? textBold,
    TResult? Function(String text, String link)? link,
    TResult? Function(String text, String link)? linkBold,
    TResult? Function(List<ContentRichTextElement> children)? orderedList,
    TResult? Function(List<ContentRichTextElement> children)? unorderedList,
    TResult? Function(List<ContentRichTextElement> children)? paragraph,
    TResult? Function()? unsupported,
  }) {
    return paragraph?.call(children);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String text)? text,
    TResult Function(String text)? textBold,
    TResult Function(String text, String link)? link,
    TResult Function(String text, String link)? linkBold,
    TResult Function(List<ContentRichTextElement> children)? orderedList,
    TResult Function(List<ContentRichTextElement> children)? unorderedList,
    TResult Function(List<ContentRichTextElement> children)? paragraph,
    TResult Function()? unsupported,
    required TResult orElse(),
  }) {
    if (paragraph != null) {
      return paragraph(children);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ContentRichTextElementText value) text,
    required TResult Function(_ContentRichTextElementTextBold value) textBold,
    required TResult Function(_ContentRichTextElementLink value) link,
    required TResult Function(_ContentRichTextElementLinkBold value) linkBold,
    required TResult Function(_ContentRichTextElementOrderedList value)
        orderedList,
    required TResult Function(_ContentRichTextElementUnorderedList value)
        unorderedList,
    required TResult Function(_ContentRichTextElementParagraph value) paragraph,
    required TResult Function(ContentRichTextElementUnsupported value)
        unsupported,
  }) {
    return paragraph(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ContentRichTextElementText value)? text,
    TResult? Function(_ContentRichTextElementTextBold value)? textBold,
    TResult? Function(_ContentRichTextElementLink value)? link,
    TResult? Function(_ContentRichTextElementLinkBold value)? linkBold,
    TResult? Function(_ContentRichTextElementOrderedList value)? orderedList,
    TResult? Function(_ContentRichTextElementUnorderedList value)?
        unorderedList,
    TResult? Function(_ContentRichTextElementParagraph value)? paragraph,
    TResult? Function(ContentRichTextElementUnsupported value)? unsupported,
  }) {
    return paragraph?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ContentRichTextElementText value)? text,
    TResult Function(_ContentRichTextElementTextBold value)? textBold,
    TResult Function(_ContentRichTextElementLink value)? link,
    TResult Function(_ContentRichTextElementLinkBold value)? linkBold,
    TResult Function(_ContentRichTextElementOrderedList value)? orderedList,
    TResult Function(_ContentRichTextElementUnorderedList value)? unorderedList,
    TResult Function(_ContentRichTextElementParagraph value)? paragraph,
    TResult Function(ContentRichTextElementUnsupported value)? unsupported,
    required TResult orElse(),
  }) {
    if (paragraph != null) {
      return paragraph(this);
    }
    return orElse();
  }
}

abstract class _ContentRichTextElementParagraph
    implements ContentRichTextElement {
  const factory _ContentRichTextElementParagraph(
          {required final List<ContentRichTextElement> children}) =
      _$ContentRichTextElementParagraphImpl;

  List<ContentRichTextElement> get children;
  @JsonKey(ignore: true)
  _$$ContentRichTextElementParagraphImplCopyWith<
          _$ContentRichTextElementParagraphImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ContentRichTextElementUnsupportedImplCopyWith<$Res> {
  factory _$$ContentRichTextElementUnsupportedImplCopyWith(
          _$ContentRichTextElementUnsupportedImpl value,
          $Res Function(_$ContentRichTextElementUnsupportedImpl) then) =
      __$$ContentRichTextElementUnsupportedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ContentRichTextElementUnsupportedImplCopyWithImpl<$Res>
    extends _$ContentRichTextElementCopyWithImpl<$Res,
        _$ContentRichTextElementUnsupportedImpl>
    implements _$$ContentRichTextElementUnsupportedImplCopyWith<$Res> {
  __$$ContentRichTextElementUnsupportedImplCopyWithImpl(
      _$ContentRichTextElementUnsupportedImpl _value,
      $Res Function(_$ContentRichTextElementUnsupportedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ContentRichTextElementUnsupportedImpl
    implements ContentRichTextElementUnsupported {
  const _$ContentRichTextElementUnsupportedImpl();

  @override
  String toString() {
    return 'ContentRichTextElement.unsupported()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ContentRichTextElementUnsupportedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String text) text,
    required TResult Function(String text) textBold,
    required TResult Function(String text, String link) link,
    required TResult Function(String text, String link) linkBold,
    required TResult Function(List<ContentRichTextElement> children)
        orderedList,
    required TResult Function(List<ContentRichTextElement> children)
        unorderedList,
    required TResult Function(List<ContentRichTextElement> children) paragraph,
    required TResult Function() unsupported,
  }) {
    return unsupported();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String text)? text,
    TResult? Function(String text)? textBold,
    TResult? Function(String text, String link)? link,
    TResult? Function(String text, String link)? linkBold,
    TResult? Function(List<ContentRichTextElement> children)? orderedList,
    TResult? Function(List<ContentRichTextElement> children)? unorderedList,
    TResult? Function(List<ContentRichTextElement> children)? paragraph,
    TResult? Function()? unsupported,
  }) {
    return unsupported?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String text)? text,
    TResult Function(String text)? textBold,
    TResult Function(String text, String link)? link,
    TResult Function(String text, String link)? linkBold,
    TResult Function(List<ContentRichTextElement> children)? orderedList,
    TResult Function(List<ContentRichTextElement> children)? unorderedList,
    TResult Function(List<ContentRichTextElement> children)? paragraph,
    TResult Function()? unsupported,
    required TResult orElse(),
  }) {
    if (unsupported != null) {
      return unsupported();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ContentRichTextElementText value) text,
    required TResult Function(_ContentRichTextElementTextBold value) textBold,
    required TResult Function(_ContentRichTextElementLink value) link,
    required TResult Function(_ContentRichTextElementLinkBold value) linkBold,
    required TResult Function(_ContentRichTextElementOrderedList value)
        orderedList,
    required TResult Function(_ContentRichTextElementUnorderedList value)
        unorderedList,
    required TResult Function(_ContentRichTextElementParagraph value) paragraph,
    required TResult Function(ContentRichTextElementUnsupported value)
        unsupported,
  }) {
    return unsupported(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ContentRichTextElementText value)? text,
    TResult? Function(_ContentRichTextElementTextBold value)? textBold,
    TResult? Function(_ContentRichTextElementLink value)? link,
    TResult? Function(_ContentRichTextElementLinkBold value)? linkBold,
    TResult? Function(_ContentRichTextElementOrderedList value)? orderedList,
    TResult? Function(_ContentRichTextElementUnorderedList value)?
        unorderedList,
    TResult? Function(_ContentRichTextElementParagraph value)? paragraph,
    TResult? Function(ContentRichTextElementUnsupported value)? unsupported,
  }) {
    return unsupported?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ContentRichTextElementText value)? text,
    TResult Function(_ContentRichTextElementTextBold value)? textBold,
    TResult Function(_ContentRichTextElementLink value)? link,
    TResult Function(_ContentRichTextElementLinkBold value)? linkBold,
    TResult Function(_ContentRichTextElementOrderedList value)? orderedList,
    TResult Function(_ContentRichTextElementUnorderedList value)? unorderedList,
    TResult Function(_ContentRichTextElementParagraph value)? paragraph,
    TResult Function(ContentRichTextElementUnsupported value)? unsupported,
    required TResult orElse(),
  }) {
    if (unsupported != null) {
      return unsupported(this);
    }
    return orElse();
  }
}

abstract class ContentRichTextElementUnsupported
    implements ContentRichTextElement {
  const factory ContentRichTextElementUnsupported() =
      _$ContentRichTextElementUnsupportedImpl;
}
