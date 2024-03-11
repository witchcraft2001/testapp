// Flutter imports:
import 'package:flutter/material.dart';

class MediaContentBlockParams {
  final MediaContentBlockParamsText rich;
  final MediaContentBlockParamsText text;
  final MediaContentBlockParamsImage image;
  final MediaContentBlockParamsInput appeal;
  final MediaContentBlockParamsInput signature;

  const MediaContentBlockParams({
    this.rich = const MediaContentBlockParamsText(),
    this.text = const MediaContentBlockParamsText(),
    this.image = const MediaContentBlockParamsImage(),
    this.appeal = const MediaContentBlockParamsInput(),
    this.signature = const MediaContentBlockParamsInput(),
  });

  MediaContentBlockParams copyWith({
    MediaContentBlockParamsText? rich,
    MediaContentBlockParamsText? text,
    MediaContentBlockParamsImage? image,
    MediaContentBlockParamsInput? appeal,
    MediaContentBlockParamsInput? signature,
  }) =>
      MediaContentBlockParams(
        rich: rich ?? this.rich,
        text: text ?? this.text,
        image: image ?? this.image,
        appeal: appeal ?? this.appeal,
        signature: signature ?? this.signature,
      );
}

class MediaContentBlockParamsBase {
  final EdgeInsets padding;

  const MediaContentBlockParamsBase({
    this.padding = EdgeInsets.zero,
  });

  MediaContentBlockParamsBase copyWith({
    EdgeInsets? padding,
  }) =>
      MediaContentBlockParamsBase(
        padding: padding ?? this.padding,
      );
}

class MediaContentBlockParamsText extends MediaContentBlockParamsBase {
  final Color? color, markColor;
  final MediaContentBlockParamsText? paragraph, ordered, unordered;

  const MediaContentBlockParamsText({
    super.padding,
    this.color,
    this.markColor,
    this.paragraph,
    this.ordered,
    this.unordered,
  });

  @override
  MediaContentBlockParamsText copyWith({
    EdgeInsets? padding,
    Color? color,
    Color? markColor,
    MediaContentBlockParamsText? paragraph,
    MediaContentBlockParamsText? ordered,
    MediaContentBlockParamsText? unordered,
  }) =>
      MediaContentBlockParamsText(
        padding: padding ?? this.padding,
        color: color ?? this.color,
        markColor: markColor ?? this.markColor,
        paragraph: paragraph ?? this.paragraph,
        ordered: ordered ?? this.ordered,
        unordered: unordered ?? this.unordered,
      );
}

class MediaContentBlockParamsImage extends MediaContentBlockParamsBase {
  final bool withPlaceholder;
  final bool withBorderRadius;

  const MediaContentBlockParamsImage({
    super.padding,
    this.withPlaceholder = true,
    this.withBorderRadius = true,
  });

  @override
  MediaContentBlockParamsImage copyWith({
    EdgeInsets? padding,
    bool? withPlaceholder,
    bool? withBorderRadius,
  }) =>
      MediaContentBlockParamsImage(
        padding: padding ?? this.padding,
        withPlaceholder: withPlaceholder ?? this.withPlaceholder,
        withBorderRadius: withBorderRadius ?? this.withBorderRadius,
      );
}

class MediaContentBlockParamsInput extends MediaContentBlockParamsBase {
  final String value;
  final Color? color;

  const MediaContentBlockParamsInput({
    super.padding,
    this.value = '',
    this.color,
  });

  @override
  MediaContentBlockParamsInput copyWith({
    EdgeInsets? padding,
    String? value,
    Color? color,
  }) =>
      MediaContentBlockParamsInput(
        padding: padding ?? this.padding,
        value: value ?? this.value,
        color: color ?? this.color,
      );
}
