// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'app_colors.dart';
import 'app_fonts.dart';

class AppTextStyle extends TextStyle {
  const AppTextStyle.font({
    super.fontSize,
    Color? color,
    TextDecoration? decoration,
    FontStyle? fontStyle,
  }) : super(
          inherit: false,
          color: color,
          fontFamily: AppFonts.base,
          fontStyle: fontStyle,
          fontWeight: FontWeight.w400,
          decoration: decoration,
          textBaseline: TextBaseline.alphabetic,
        );

  const AppTextStyle.fontW500({
    super.fontSize,
    Color? color,
    TextDecoration? decoration,
    FontStyle? fontStyle,
  }) : super(
          inherit: false,
          color: color,
          fontFamily: AppFonts.base,
          fontStyle: fontStyle,
          fontWeight: FontWeight.w500,
          decoration: decoration,
          textBaseline: TextBaseline.alphabetic,
        );

  const AppTextStyle.fontW600({
    super.fontSize,
    Color? color,
    TextDecoration? decoration,
    FontStyle? fontStyle,
  }) : super(
          inherit: false,
          color: color,
          fontFamily: AppFonts.base,
          fontStyle: fontStyle,
          fontWeight: FontWeight.w600,
          decoration: decoration,
          textBaseline: TextBaseline.alphabetic,
        );

  const AppTextStyle.fontW700({
    super.fontSize,
    Color? color,
    TextDecoration? decoration,
    FontStyle? fontStyle,
  }) : super(
          inherit: false,
          color: color,
          fontFamily: AppFonts.base,
          fontStyle: fontStyle,
          fontWeight: FontWeight.w700,
          decoration: decoration,
          textBaseline: TextBaseline.alphabetic,
        );

  const AppTextStyle.fontW900({
    super.fontSize,
    Color? color,
    TextDecoration? decoration,
    FontStyle? fontStyle,
  }) : super(
          inherit: false,
          color: color,
          fontFamily: AppFonts.base,
          fontStyle: fontStyle,
          fontWeight: FontWeight.w900,
          decoration: decoration,
          textBaseline: TextBaseline.alphabetic,
        );
}

abstract class AppText {
  // - WhiteOnColor
  // -- w400
  final AppTextStyle w400s14cWhite;
  final AppTextStyle w400s17cWhite;
  final AppTextStyle w400s24cWhite;
  final AppTextStyle w400s32cWhite;
  // -- w500
  final AppTextStyle w500s13cWhite;
  // -- w600
  final AppTextStyle w600s16cWhite;
  // -- w700
  final AppTextStyle w700s12cWhite;
  final AppTextStyle w700s18cWhite;
  final AppTextStyle w700s20cWhite;
  final AppTextStyle w700s49cWhite;

  // - Primary
  // -- w400
  final AppTextStyle w400s16cPrimary;
  final AppTextStyle w400s17cPrimary;
  // -- w500
  final AppTextStyle w500s16cPrimary;
  // -- w700
  final AppTextStyle w700s14cPrimary;
  final AppTextStyle w700s17cPrimary;
  final AppTextStyle w700s20cPrimary;

  // Danger
  // -- w600
  final AppTextStyle w600s12cDanger;

  AppText({
    // - WhiteOnColor
    // -- w400
    this.w400s14cWhite = const AppTextStyle.font(fontSize: 14, color: AppColors.stWhiteOnColor),
    this.w400s17cWhite = const AppTextStyle.font(fontSize: 17, color: AppColors.stWhiteOnColor),
    this.w400s24cWhite = const AppTextStyle.font(fontSize: 24, color: AppColors.stWhiteOnColor),
    this.w400s32cWhite = const AppTextStyle.font(fontSize: 32, color: AppColors.stWhiteOnColor),
    // -- w500
    this.w500s13cWhite = const AppTextStyle.fontW500(fontSize: 13, color: AppColors.stWhiteOnColor),
    // -- w600
    this.w600s16cWhite = const AppTextStyle.fontW600(fontSize: 16, color: AppColors.stWhiteOnColor),
    // -- w700
    this.w700s12cWhite = const AppTextStyle.fontW700(fontSize: 12, color: AppColors.stWhiteOnColor),
    this.w700s18cWhite = const AppTextStyle.fontW700(fontSize: 18, color: AppColors.stWhiteOnColor),
    this.w700s20cWhite = const AppTextStyle.fontW700(fontSize: 20, color: AppColors.stWhiteOnColor),
    this.w700s49cWhite = const AppTextStyle.fontW700(fontSize: 49, color: AppColors.stWhiteOnColor),

    // Primary
    // -- w400
    this.w400s16cPrimary = const AppTextStyle.font(fontSize: 16, color: AppColors.stPrimary),
    this.w400s17cPrimary = const AppTextStyle.font(fontSize: 17, color: AppColors.stPrimary),
    // -- w500
    this.w500s16cPrimary = const AppTextStyle.fontW500(fontSize: 16, color: AppColors.stPrimary),
    // -- w700
    this.w700s14cPrimary = const AppTextStyle.fontW700(fontSize: 14, color: AppColors.stPrimary),
    this.w700s17cPrimary = const AppTextStyle.fontW700(fontSize: 17, color: AppColors.stPrimary),
    this.w700s20cPrimary = const AppTextStyle.fontW700(fontSize: 20, color: AppColors.stPrimary),

    // Danger
    // -- w600
    this.w600s12cDanger = const AppTextStyle.fontW600(fontSize: 12, color: AppColors.stDanger),
  });
}

class AppThemeText extends AppText {
  // - TextMain
  // -- w400
  final AppTextStyle w400s12cMain;
  final AppTextStyle w400s13cMain;
  final AppTextStyle w400s14cMain;
  final AppTextStyle w400s16cMain;
  final AppTextStyle w400s17cMain;
  final AppTextStyle w400s18cMain;
  final AppTextStyle w400s20cMain;
  final AppTextStyle w400s22cMain;
  final AppTextStyle w400s32cMain;
  // -- w500
  final AppTextStyle w500s15cMain;
  final AppTextStyle w500s16cMain;
  // -- w600
  final AppTextStyle w600s14cMain;
  final AppTextStyle w600s16cMain;
  // -- w700
  final AppTextStyle w700s11cMain;
  final AppTextStyle w700s12cMain;
  final AppTextStyle w700s14cMain;
  final AppTextStyle w700s16cMain;
  final AppTextStyle w700s17cMain;
  final AppTextStyle w700s18cMain;
  final AppTextStyle w700s20cMain;
  final AppTextStyle w700s24cMain;
  // -- w900
  final AppTextStyle w900s22cMain;
  final AppTextStyle w900s26cMain;
  final AppTextStyle w900s32cMain;
  final AppTextStyle w900s36cMain;
  final AppTextStyle w900s40cMain;
  final AppTextStyle w900s48cMain;

  // - TextOptional
  // -- w400
  final AppTextStyle w400s10cOptional;
  final AppTextStyle w400s12cOptional;
  final AppTextStyle w400s14cOptional;
  final AppTextStyle w400s16cOptional;
  // -- w500
  final AppTextStyle w500s12cOptional;
  // -- w700
  final AppTextStyle w700s14cOptional;
  final AppTextStyle w700s15cOptional;

  // - Signatures
  // -- w400
  final AppTextStyle w400s11cSignatures;
  final AppTextStyle w400s12cSignatures;
  final AppTextStyle w400s13cSignatures;
  final AppTextStyle w400s14cSignatures;
  // -- w500
  final AppTextStyle w500s16cSignatures;
  // -- w600
  final AppTextStyle w600s12cSignatures;
  final AppTextStyle w600s14cSignatures;
  final AppTextStyle w600s16cSignatures;
  // -- w700
  final AppTextStyle w700s16cSignatures;
  final AppTextStyle w700s20cSignatures;

  // - Contrast
  // -- w400
  final AppTextStyle w400s16cContrast;
  // -- w700
  final AppTextStyle w700s14cContrast;
  final AppTextStyle w700s22cContrast;

  // - Color3
  // -- w700
  final AppTextStyle w700s16cColor3;

  AppThemeText({
    // - TextMain
    // -- w400
    required this.w400s12cMain,
    required this.w400s13cMain,
    required this.w400s14cMain,
    required this.w400s16cMain,
    required this.w400s17cMain,
    required this.w400s18cMain,
    required this.w400s20cMain,
    required this.w400s22cMain,
    required this.w400s32cMain,
    // -- w500
    required this.w500s15cMain,
    required this.w500s16cMain,
    // -- w600
    required this.w600s14cMain,
    required this.w600s16cMain,
    // -- w700
    required this.w700s11cMain,
    required this.w700s12cMain,
    required this.w700s14cMain,
    required this.w700s16cMain,
    required this.w700s17cMain,
    required this.w700s18cMain,
    required this.w700s20cMain,
    required this.w700s24cMain,
    // -- w900
    required this.w900s22cMain,
    required this.w900s26cMain,
    required this.w900s32cMain,
    required this.w900s36cMain,
    required this.w900s40cMain,
    required this.w900s48cMain,

    // - TextOptional
    // -- w400
    required this.w400s10cOptional,
    required this.w400s12cOptional,
    required this.w400s14cOptional,
    required this.w400s16cOptional,
    // -- w500
    required this.w500s12cOptional,
    // -- w700
    required this.w700s14cOptional,
    required this.w700s15cOptional,

    // - Signatures
    // -- w400
    required this.w400s11cSignatures,
    required this.w400s12cSignatures,
    required this.w400s13cSignatures,
    required this.w400s14cSignatures,
    // -- w500
    required this.w500s16cSignatures,
    // -- w600
    required this.w600s12cSignatures,
    required this.w600s14cSignatures,
    required this.w600s16cSignatures,
    // -- w700
    required this.w700s16cSignatures,
    required this.w700s20cSignatures,

    // - Contrast
    // -- w400
    required this.w400s16cContrast,
    // -- w700
    required this.w700s14cContrast,
    required this.w700s22cContrast,

    // - Color3
    // -- w700
    required this.w700s16cColor3,
  });
}

final appTextThemeLight = AppThemeText(
  // - TextMain
  w400s12cMain: AppTextStyle.font(fontSize: 12, color: appColorsThemeLight.textMain),
  w400s13cMain: AppTextStyle.font(fontSize: 13, color: appColorsThemeLight.textMain),
  w400s14cMain: AppTextStyle.font(fontSize: 14, color: appColorsThemeLight.textMain),
  w400s16cMain: AppTextStyle.font(fontSize: 16, color: appColorsThemeLight.textMain),
  w400s17cMain: AppTextStyle.font(fontSize: 17, color: appColorsThemeLight.textMain),
  w400s18cMain: AppTextStyle.font(fontSize: 18, color: appColorsThemeLight.textMain),
  w400s20cMain: AppTextStyle.font(fontSize: 20, color: appColorsThemeLight.textMain),
  w400s22cMain: AppTextStyle.font(fontSize: 22, color: appColorsThemeLight.textMain),
  w400s32cMain: AppTextStyle.font(fontSize: 32, color: appColorsThemeLight.textMain),

  w500s15cMain: AppTextStyle.fontW500(fontSize: 15, color: appColorsThemeLight.textMain),
  w500s16cMain: AppTextStyle.fontW500(fontSize: 16, color: appColorsThemeLight.textMain),

  w600s14cMain: AppTextStyle.fontW600(fontSize: 14, color: appColorsThemeLight.textMain),
  w600s16cMain: AppTextStyle.fontW600(fontSize: 16, color: appColorsThemeLight.textMain),

  w700s11cMain: AppTextStyle.fontW700(fontSize: 11, color: appColorsThemeLight.textMain),
  w700s12cMain: AppTextStyle.fontW700(fontSize: 12, color: appColorsThemeLight.textMain),
  w700s14cMain: AppTextStyle.fontW700(fontSize: 14, color: appColorsThemeLight.textMain),
  w700s16cMain: AppTextStyle.fontW700(fontSize: 16, color: appColorsThemeLight.textMain),
  w700s17cMain: AppTextStyle.fontW700(fontSize: 17, color: appColorsThemeLight.textMain),
  w700s18cMain: AppTextStyle.fontW700(fontSize: 18, color: appColorsThemeLight.textMain),
  w700s20cMain: AppTextStyle.fontW700(fontSize: 20, color: appColorsThemeLight.textMain),
  w700s24cMain: AppTextStyle.fontW700(fontSize: 24, color: appColorsThemeLight.textMain),

  w900s22cMain: AppTextStyle.fontW900(fontSize: 22, color: appColorsThemeLight.textMain),
  w900s26cMain: AppTextStyle.fontW900(fontSize: 26, color: appColorsThemeLight.textMain),
  w900s32cMain: AppTextStyle.fontW900(fontSize: 32, color: appColorsThemeLight.textMain),
  w900s36cMain: AppTextStyle.fontW900(fontSize: 36, color: appColorsThemeLight.textMain),
  w900s40cMain: AppTextStyle.fontW900(fontSize: 40, color: appColorsThemeLight.textMain),
  w900s48cMain: AppTextStyle.fontW900(fontSize: 48, color: appColorsThemeLight.textMain),

  // - TextOptional
  w400s10cOptional: AppTextStyle.font(fontSize: 10, color: appColorsThemeLight.textOptional),
  w400s12cOptional: AppTextStyle.font(fontSize: 12, color: appColorsThemeLight.textOptional),
  w400s14cOptional: AppTextStyle.font(fontSize: 14, color: appColorsThemeLight.textOptional),
  w400s16cOptional: AppTextStyle.font(fontSize: 16, color: appColorsThemeLight.textOptional),

  w500s12cOptional: AppTextStyle.fontW500(fontSize: 12, color: appColorsThemeLight.textOptional),

  w700s14cOptional: AppTextStyle.fontW700(fontSize: 14, color: appColorsThemeLight.textOptional),
  w700s15cOptional: AppTextStyle.fontW700(fontSize: 15, color: appColorsThemeLight.textOptional),

  // - Signatures
  w400s11cSignatures: AppTextStyle.font(fontSize: 11, color: appColorsThemeLight.textSignatures),
  w400s12cSignatures: AppTextStyle.font(fontSize: 12, color: appColorsThemeLight.textSignatures),
  w400s13cSignatures: AppTextStyle.font(fontSize: 13, color: appColorsThemeLight.textSignatures),
  w400s14cSignatures: AppTextStyle.font(fontSize: 14, color: appColorsThemeLight.textSignatures),

  w500s16cSignatures:
      AppTextStyle.fontW500(fontSize: 16, color: appColorsThemeLight.textSignatures),

  w600s12cSignatures:
      AppTextStyle.fontW600(fontSize: 12, color: appColorsThemeLight.textSignatures),
  w600s14cSignatures:
      AppTextStyle.fontW600(fontSize: 14, color: appColorsThemeLight.textSignatures),
  w600s16cSignatures:
      AppTextStyle.fontW600(fontSize: 16, color: appColorsThemeLight.textSignatures),

  w700s16cSignatures:
      AppTextStyle.fontW700(fontSize: 16, color: appColorsThemeLight.textSignatures),
  w700s20cSignatures:
      AppTextStyle.fontW700(fontSize: 20, color: appColorsThemeLight.textSignatures),

  // Contrast
  w400s16cContrast: AppTextStyle.font(fontSize: 16, color: appColorsThemeLight.textContrast),
  w700s14cContrast: AppTextStyle.fontW700(fontSize: 14, color: appColorsThemeLight.textContrast),
  w700s22cContrast: AppTextStyle.fontW700(fontSize: 22, color: appColorsThemeLight.textContrast),

  // Color3
  w700s16cColor3: AppTextStyle.fontW700(fontSize: 16, color: appColorsThemeLight.color3),
);

final appTextThemeDark = AppThemeText(
  // - TextMain
  w400s12cMain: AppTextStyle.font(fontSize: 12, color: appColorsThemeDark.textMain),
  w400s13cMain: AppTextStyle.font(fontSize: 13, color: appColorsThemeDark.textMain),
  w400s14cMain: AppTextStyle.font(fontSize: 14, color: appColorsThemeDark.textMain),
  w400s16cMain: AppTextStyle.font(fontSize: 16, color: appColorsThemeDark.textMain),
  w400s17cMain: AppTextStyle.font(fontSize: 17, color: appColorsThemeDark.textMain),
  w400s18cMain: AppTextStyle.font(fontSize: 18, color: appColorsThemeDark.textMain),
  w400s20cMain: AppTextStyle.font(fontSize: 20, color: appColorsThemeDark.textMain),
  w400s22cMain: AppTextStyle.font(fontSize: 22, color: appColorsThemeDark.textMain),
  w400s32cMain: AppTextStyle.font(fontSize: 32, color: appColorsThemeDark.textMain),

  w500s15cMain: AppTextStyle.fontW500(fontSize: 15, color: appColorsThemeDark.textMain),
  w500s16cMain: AppTextStyle.fontW500(fontSize: 16, color: appColorsThemeDark.textMain),

  w600s14cMain: AppTextStyle.fontW600(fontSize: 14, color: appColorsThemeDark.textMain),
  w600s16cMain: AppTextStyle.fontW600(fontSize: 16, color: appColorsThemeDark.textMain),

  w700s11cMain: AppTextStyle.fontW700(fontSize: 11, color: appColorsThemeDark.textMain),
  w700s12cMain: AppTextStyle.fontW700(fontSize: 12, color: appColorsThemeDark.textMain),
  w700s14cMain: AppTextStyle.fontW700(fontSize: 14, color: appColorsThemeDark.textMain),
  w700s16cMain: AppTextStyle.fontW700(fontSize: 16, color: appColorsThemeDark.textMain),
  w700s17cMain: AppTextStyle.fontW700(fontSize: 17, color: appColorsThemeDark.textMain),
  w700s18cMain: AppTextStyle.fontW700(fontSize: 18, color: appColorsThemeDark.textMain),
  w700s20cMain: AppTextStyle.fontW700(fontSize: 20, color: appColorsThemeDark.textMain),
  w700s24cMain: AppTextStyle.fontW700(fontSize: 24, color: appColorsThemeDark.textMain),

  w900s22cMain: AppTextStyle.fontW900(fontSize: 22, color: appColorsThemeDark.textMain),
  w900s26cMain: AppTextStyle.fontW900(fontSize: 26, color: appColorsThemeDark.textMain),
  w900s32cMain: AppTextStyle.fontW900(fontSize: 32, color: appColorsThemeDark.textMain),
  w900s36cMain: AppTextStyle.fontW900(fontSize: 36, color: appColorsThemeDark.textMain),
  w900s40cMain: AppTextStyle.fontW900(fontSize: 40, color: appColorsThemeDark.textMain),
  w900s48cMain: AppTextStyle.fontW900(fontSize: 48, color: appColorsThemeDark.textMain),

  // - TextOptional
  w400s10cOptional: AppTextStyle.font(fontSize: 10, color: appColorsThemeDark.textOptional),
  w400s12cOptional: AppTextStyle.font(fontSize: 12, color: appColorsThemeDark.textOptional),
  w400s14cOptional: AppTextStyle.font(fontSize: 14, color: appColorsThemeDark.textOptional),
  w400s16cOptional: AppTextStyle.font(fontSize: 16, color: appColorsThemeDark.textOptional),

  w500s12cOptional: AppTextStyle.fontW500(fontSize: 12, color: appColorsThemeDark.textOptional),

  w700s14cOptional: AppTextStyle.fontW700(fontSize: 14, color: appColorsThemeDark.textOptional),
  w700s15cOptional: AppTextStyle.fontW700(fontSize: 15, color: appColorsThemeDark.textOptional),

  // - Signatures
  w400s11cSignatures: AppTextStyle.font(fontSize: 11, color: appColorsThemeDark.textSignatures),
  w400s12cSignatures: AppTextStyle.font(fontSize: 12, color: appColorsThemeDark.textSignatures),
  w400s13cSignatures: AppTextStyle.font(fontSize: 13, color: appColorsThemeDark.textSignatures),
  w400s14cSignatures: AppTextStyle.font(fontSize: 14, color: appColorsThemeDark.textSignatures),

  w500s16cSignatures: AppTextStyle.fontW500(fontSize: 16, color: appColorsThemeDark.textSignatures),

  w600s12cSignatures: AppTextStyle.fontW600(fontSize: 12, color: appColorsThemeDark.textSignatures),
  w600s14cSignatures: AppTextStyle.fontW600(fontSize: 14, color: appColorsThemeDark.textSignatures),
  w600s16cSignatures: AppTextStyle.fontW600(fontSize: 16, color: appColorsThemeDark.textSignatures),

  w700s16cSignatures: AppTextStyle.fontW700(fontSize: 16, color: appColorsThemeDark.textSignatures),
  w700s20cSignatures: AppTextStyle.fontW700(fontSize: 20, color: appColorsThemeDark.textSignatures),

  // Contrast
  w400s16cContrast: AppTextStyle.font(fontSize: 16, color: appColorsThemeDark.textContrast),
  w700s14cContrast: AppTextStyle.fontW700(fontSize: 14, color: appColorsThemeDark.textContrast),
  w700s22cContrast: AppTextStyle.fontW700(fontSize: 22, color: appColorsThemeDark.textContrast),

  // Color3
  w700s16cColor3: AppTextStyle.fontW700(fontSize: 16, color: appColorsThemeDark.color3),
);
