// Flutter imports:
import 'package:flutter/material.dart';

class OnboardingContentBlockParams {
  final OnboardingContentBlockParamsText rich;
  final OnboardingContentBlockParamsText text;
  final OnboardingContentBlockParamsImage image;

  const OnboardingContentBlockParams({
    this.rich = const OnboardingContentBlockParamsText(),
    this.text = const OnboardingContentBlockParamsText(),
    this.image = const OnboardingContentBlockParamsImage(),
  });

  OnboardingContentBlockParams copyWith({
    OnboardingContentBlockParamsText? rich,
    OnboardingContentBlockParamsText? text,
    OnboardingContentBlockParamsImage? image,
  }) =>
      OnboardingContentBlockParams(
        rich: rich ?? this.rich,
        text: text ?? this.text,
        image: image ?? this.image,
      );
}

class OnboardingContentBlockParamsBase {
  final EdgeInsets padding;

  const OnboardingContentBlockParamsBase({
    this.padding = EdgeInsets.zero,
  });

  OnboardingContentBlockParamsBase copyWith({
    EdgeInsets? padding,
  }) =>
      OnboardingContentBlockParamsBase(
        padding: padding ?? this.padding,
      );
}

class OnboardingContentBlockParamsText extends OnboardingContentBlockParamsBase {
  final Color? color, markColor;
  final OnboardingContentBlockParamsText? paragraph, ordered, unordered;

  const OnboardingContentBlockParamsText({
    super.padding,
    this.color,
    this.markColor,
    this.paragraph,
    this.ordered,
    this.unordered,
  });

  @override
  OnboardingContentBlockParamsText copyWith({
    EdgeInsets? padding,
    Color? color,
    Color? markColor,
    OnboardingContentBlockParamsText? paragraph,
    OnboardingContentBlockParamsText? ordered,
    OnboardingContentBlockParamsText? unordered,
  }) =>
      OnboardingContentBlockParamsText(
        padding: padding ?? this.padding,
        color: color ?? this.color,
        markColor: markColor ?? this.markColor,
        paragraph: paragraph ?? this.paragraph,
        ordered: ordered ?? this.ordered,
        unordered: unordered ?? this.unordered,
      );
}

class OnboardingContentBlockParamsImage extends OnboardingContentBlockParamsBase {
  final bool withPlaceholder;
  final bool withBorderRadius;

  const OnboardingContentBlockParamsImage({
    super.padding,
    this.withPlaceholder = true,
    this.withBorderRadius = true,
  });

  @override
  OnboardingContentBlockParamsImage copyWith({
    EdgeInsets? padding,
    bool? withPlaceholder,
    bool? withBorderRadius,
  }) =>
      OnboardingContentBlockParamsImage(
        padding: padding ?? this.padding,
        withPlaceholder: withPlaceholder ?? this.withPlaceholder,
        withBorderRadius: withBorderRadius ?? this.withBorderRadius,
      );
}
