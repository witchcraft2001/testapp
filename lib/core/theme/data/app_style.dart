// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'app_colors.dart';
import 'app_fonts.dart';

// const Color kTextBaseColor = AppColors.textMain;
//
// const Color kAccentColor = AppColors.accent;
// const Color kPrimaryColor = AppColors.accent;
// const Color kBorderSideColor = AppColors.divider;
// const Color kBorderSideErrorColor = AppColors.danger;
// const Color kHintColor = AppColors.textSignatures;

class AppStyle extends TextStyle {
  const AppStyle.font({
    super.fontSize,
    FontWeight? fontWeight,
    Color? color,
    TextDecoration? decoration,
    FontStyle? fontStyle,
  }) : super(
          inherit: false,
          color: color ?? AppColors.textMain,
          fontFamily: AppFonts.base,
          fontStyle: fontStyle,
          fontWeight: fontWeight ?? AppFontWeight.regular,
          // wordSpacing: -2.5,
          // letterSpacing: -0.5,
          textBaseline: TextBaseline.alphabetic,
          decoration: decoration,
        );
}

class AppFontWeight {
  AppFontWeight._();

  static const FontWeight thin = FontWeight.w100;
  static const FontWeight light = FontWeight.w300;
  static const FontWeight regular = FontWeight.w400;
  static const FontWeight semimedium = FontWeight.w500;
  static const FontWeight medium = FontWeight.w600;
  static const FontWeight semibold = FontWeight.w700;
  static const FontWeight bold = FontWeight.w900;
}

TextStyle appFontColor(Color color) => AppStyle.font(color: color);

TextStyle appFontLight(
  double fontSize, [
  Color? color,
  TextDecoration? decoration,
  FontStyle? fontStyle,
]) =>
    AppStyle.font(
      fontSize: fontSize,
      fontWeight: AppFontWeight.light,
      color: color ?? AppColors.textMain,
      decoration: decoration,
      fontStyle: fontStyle,
    );

TextStyle appFontRegular(
  double fontSize, [
  Color? color,
  TextDecoration? decoration,
]) =>
    AppStyle.font(
      fontSize: fontSize,
      fontWeight: AppFontWeight.regular,
      color: color ?? AppColors.textMain,
      decoration: decoration,
    );

TextStyle appFontSemiMedium(
  double fontSize, [
  Color? color,
  TextDecoration? decoration,
]) =>
    AppStyle.font(
      fontSize: fontSize,
      fontWeight: AppFontWeight.semimedium,
      color: color ?? AppColors.textMain,
      decoration: decoration,
    );

TextStyle appFontMedium(
  double fontSize, [
  Color? color,
  TextDecoration? decoration,
]) =>
    AppStyle.font(
      fontSize: fontSize,
      fontWeight: AppFontWeight.medium,
      color: color ?? AppColors.textMain,
      decoration: decoration,
    );

TextStyle appFontSemi(
  double fontSize, [
  Color? color,
  TextDecoration? decoration,
]) =>
    AppStyle.font(
      fontSize: fontSize,
      fontWeight: AppFontWeight.semibold,
      color: color ?? AppColors.textMain,
      decoration: decoration,
    );

TextStyle appFontBold(
  double fontSize, [
  Color? color,
  TextDecoration? decoration,
]) =>
    AppStyle.font(
      fontSize: fontSize,
      fontWeight: AppFontWeight.bold,
      color: color ?? AppColors.textMain,
      decoration: decoration,
    );
