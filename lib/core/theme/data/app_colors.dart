// Flutter imports:
import 'package:flutter/material.dart';

abstract class AppColors {
  final Color accent;
  final Color primary;
  final Color whiteOnColor;
  final Color success;
  final Color danger;
  final Color warning;

  const AppColors({
    this.accent = stAccent,
    this.primary = stPrimary,
    this.whiteOnColor = stWhiteOnColor,
    this.success = stSuccess,
    this.danger = stDanger,
    this.warning = stWarning,
  });

  static const Color stAccent =
      Color(0xFF4267EC); // --color-special-color-accent-button объединен с --color-index-plan
  static const Color stPrimary = Color(0xFFFA633B); // --color-corporate
  static const Color stWhiteOnColor = Color(0xFFFFFFFF); // --color-text-white-on-color
  static const Color stSuccess = Color(0xFF4CAF50); // --color-index-green
  static const Color stDanger = Color(0xFFFF5252); // --color-index-critical
  static const Color stWarning = Color(0xFFFFC107); // --color-index-deviation
  static const Color stShadow = Color(0x14304D1F);

  static const Color stColor1 = Color(0xFFF9FAFB);
  static const Color stColor2 = Color(0xFFF3F4F7);
  static const Color stColor3 = Color(0xFFEAECF1);
  static const Color stColor4 = Color(0xFFE0E4EB);
  static const Color stColor5 = Color(0xFFD4D9E2);
  static const Color stColor6 = Color(0xFFC8CEDA);
  static const Color stColor7 = Color(0xFFAFB8CA);
  static const Color stColor8 = Color(0xFF97A3BA);
  static const Color stColor9 = Color(0xFF7E8DA9);
  static const Color stColor10 = Color(0xFF667799);
  static const Color stColor11 = Color(0xFF566481);
  static const Color stColor12 = Color(0xFF455168);
  static const Color stColor13 = Color(0xFF3D475C);
  static const Color stColor14 = Color(0xFF353E50);
  static const Color stColor15 = Color(0xFF2D3443);
  static const Color stColor16 = Color(0xFF29303D);
  static const Color stColor17 = Color(0xFF252B37);
  static const Color stColor18 = Color(0xFF212631);
  static const Color stColor19 = Color(0xFF181D25);

  // ToDo решить необходимость наличия этих цветов и их значения
  static const Color stCorporate1 = Color(0xFF0D0802); // --color-corporate-1
  static const Color stCorporate2 = Color(0xFFFFFFFF); // --color-corporate-2
  static const Color stColorLogo = Color(0xFFED1A3A); // --color-logo
  static const Color stCorporateRed = Color(0xFFD2233C); // --color-corporate-red
}

class AppThemeColors extends AppColors {
  // ToDo решить необходимость наличия этих цветов и их значения
  final Color fact;
  final Color specialColorSidePanel;
  final Color specialColorHeader;
  final Color specialColorStandardButton;
  final Color specialColorBackgroundForButton;
  final Color corporate1;
  final Color corporate2;

  // Text
  final Color textMain; // --color-text-main-and-axis-labels
  final Color textContrast; // --color-text-contrast
  final Color textOptional; // --color-text-optional-color
  final Color textSignatures; //	--color-text-signatures-and-future
  final Color textBlack; //	--color-text-black

  // Borders and dividers
  final Color brAndIcons; // --color-borders-and-icons-icons
  final Color brAndIconsStrokes; // --color-borders-and-icons-widget-strokes
  final Color brAndIconsShapes; // --color-borders-and-icons-stroke-shape
  final Color divider;

  // Backgrounds
  final Color bgMenu; // --color-special-color-menu
  final Color bgWhite; // --color-special-color-white-background
  final Color bgForms; // --color-background-dashboards-forms
  final Color bgPopups; // --color-background-popup-widgets
  final Color bgHeaders; //	--color-background-widget-headers

  // Predictors
  final Color predictors1; // --color-predictors-1
  final Color predictors2; // --color-predictors-2
  final Color predictors3; // --color-predictors-3
  final Color predictors4; // --color-predictors-4
  final Color predictors5; // --color-predictors-5
  final Color predictors6; // --color-predictors-6
  final Color predictors7; // --color-predictors-7
  final Color predictors8; // --color-predictors-8
  final Color predictors9; // --color-predictors-9
  final Color predictors10; // --color-predictors-10
  final Color predictors11; // --color-predictors-11

  // Colors
  final Color color1; // --color-color-1
  final Color color2; // --color-color-2
  final Color color3; // --color-color-3
  final Color color4; // --color-color-4
  final Color color5; // --color-color-5
  final Color color6; // --color-color-6
  final Color color7; // --color-color-7
  final Color color8; // --color-color-8
  final Color color9; // --color-color-9
  final Color color10; // --color-color-10
  final Color color11; // --color-color-11
  final Color color12; // --color-color-12
  final Color color13; // --color-color-13
  final Color color14; // --color-color-14
  final Color color15; // --color-color-15
  final Color color16; // --color-color-16
  final Color color17; // --color-color-17
  final Color color18; // --color-color-18
  final Color color19; // --color-color-19

  List<Color> get predictors => [
        predictors11,
        predictors10,
        predictors9,
        predictors8,
        predictors7,
        predictors6,
        predictors5,
        predictors4,
        predictors3,
        predictors2,
        predictors1,
      ];

  AppThemeColors({
    required this.fact,
    required this.specialColorSidePanel,
    required this.specialColorHeader,
    required this.specialColorStandardButton,
    required this.specialColorBackgroundForButton,
    required this.corporate1,
    required this.corporate2,

    // Text
    required this.textMain,
    required this.textOptional,
    required this.textContrast,
    required this.textSignatures,
    required this.textBlack,

    // Borders and dividers
    required this.brAndIcons,
    required this.brAndIconsStrokes,
    required this.brAndIconsShapes,
    required this.divider,

    // Backgrounds
    required this.bgMenu,
    required this.bgWhite,
    required this.bgForms,
    required this.bgPopups,
    required this.bgHeaders,

    // Predictors
    required this.predictors1,
    required this.predictors2,
    required this.predictors3,
    required this.predictors4,
    required this.predictors5,
    required this.predictors6,
    required this.predictors7,
    required this.predictors8,
    required this.predictors9,
    required this.predictors10,
    required this.predictors11,

    // Colors
    required this.color1,
    required this.color2,
    required this.color3,
    required this.color4,
    required this.color5,
    required this.color6,
    required this.color7,
    required this.color8,
    required this.color9,
    required this.color10,
    required this.color11,
    required this.color12,
    required this.color13,
    required this.color14,
    required this.color15,
    required this.color16,
    required this.color17,
    required this.color18,
    required this.color19,
  });
}

final appColorsThemeLight = AppThemeColors(
  fact: const Color(0xFF353E50), // --color-index-fact-or-low
  specialColorSidePanel: const Color(0xFFD2233C), // --color-special-color-side-panel
  specialColorHeader: const Color(0xFFFFFFFF), // --color-special-color-header
  specialColorStandardButton: const Color(0xFFC8CEDA), // --color-special-color-standard-button
  specialColorBackgroundForButton:
      const Color(0xFFF8F9FB), // --color-special-color-background-for-button
  corporate1: AppColors.stCorporate1,
  corporate2: AppColors.stCorporate2,

  // Text
  textMain: const Color(0xFF455168),
  textContrast: const Color(0xFF212631),
  textOptional: const Color(0xFF97A3BA),
  textSignatures: const Color(0xFF667799),
  textBlack: const Color(0xFF000000),

  // Borders and dividers
  brAndIcons: const Color(0xFF97A3BA),
  brAndIconsStrokes: const Color(0xFFF3F4F7),
  brAndIconsShapes: const Color(0xFFEAECF1),
  divider: const Color(0xFFEAECF1),

  // Backgrounds
  bgMenu: const Color(0xFFFFFFFF),
  bgWhite: const Color(0xFFFFFFFF),
  bgForms: const Color(0xFFF9FAFB),
  bgPopups: const Color(0xFFFFFFFF),
  bgHeaders: const Color(0xFFFFFFFF),

  // Predictors
  predictors1: const Color(0xFFA56EFF),
  predictors2: const Color(0xFF673AB7),
  predictors3: const Color(0xFF4A53C6),
  predictors4: const Color(0xFF4589FF),
  predictors5: const Color(0xFF039DE0),
  predictors6: const Color(0xFF118F3F),
  predictors7: const Color(0xFF0BA4A4),
  predictors8: const Color(0xFF005D5D),
  predictors9: const Color(0xFFD12771),
  predictors10: const Color(0xFFFDD13A),
  predictors11: const Color(0xFF606580),

  // Colors
  color1: AppColors.stColor1,
  color2: AppColors.stColor2,
  color3: AppColors.stColor3,
  color4: AppColors.stColor4,
  color5: AppColors.stColor5,
  color6: AppColors.stColor6,
  color7: AppColors.stColor7,
  color8: AppColors.stColor8,
  color9: AppColors.stColor9,
  color10: AppColors.stColor10,
  color11: AppColors.stColor11,
  color12: AppColors.stColor12,
  color13: AppColors.stColor13,
  color14: AppColors.stColor14,
  color15: AppColors.stColor15,
  color16: AppColors.stColor16,
  color17: AppColors.stColor17,
  color18: AppColors.stColor18,
  color19: AppColors.stColor19,
);

final appColorsThemeDark = AppThemeColors(
  fact: const Color(0xFFC8CEDA), // --color-index-fact-or-low
  specialColorSidePanel: const Color(0xFF2F3440), // --color-special-color-side-panel
  specialColorHeader: const Color(0xFF2A2F38), // --color-special-color-header
  specialColorStandardButton: const Color(0xFF3D475C), // --color-special-color-standard-button
  specialColorBackgroundForButton:
      const Color(0xFF29303D), // --color-special-color-background-for-button
  corporate1: AppColors.stCorporate2,
  corporate2: AppColors.stCorporate1,

  // Text
  textMain: const Color(0xFFE0E4EB),
  textContrast: const Color(0xFFFFFFFF),
  textOptional: const Color(0xFF727689),
  textSignatures: const Color(0xFF97A3BA),
  textBlack: const Color(0xFF000000),

  // Borders and dividers
  brAndIconsStrokes: const Color(0xFF181D25),
  brAndIcons: const Color(0xFF727689),
  brAndIconsShapes: const Color(0xFF2D3443),
  divider: const Color(0xFF181D25),

  // Backgrounds
  bgMenu: const Color(0xFF212631),
  bgWhite: const Color(0xFF181d25),
  bgForms: const Color(0xFF181D25),
  bgPopups: const Color(0xFF212631),
  bgHeaders: const Color(0xFF2D3443),

  // Predictors
  predictors1: const Color(0xFFD4BBFF),
  predictors2: const Color(0xFF9362D0),
  predictors3: const Color(0xFF8090F0),
  predictors4: const Color(0xFF78A9FF),
  predictors5: const Color(0xFF45C5FA),
  predictors6: const Color(0xFF6FDC8C),
  predictors7: const Color(0xFF08BDBA),
  predictors8: const Color(0xFF007D79),
  predictors9: const Color(0xFFFF7D96),
  predictors10: const Color(0xFFFDD13A),
  predictors11: const Color(0xFF8C99B2),

  // Colors
  color1: AppColors.stColor19,
  color2: AppColors.stColor18,
  color3: AppColors.stColor17,
  color4: AppColors.stColor16,
  color5: AppColors.stColor15,
  color6: AppColors.stColor14,
  color7: AppColors.stColor13,
  color8: AppColors.stColor12,
  color9: AppColors.stColor11,
  color10: AppColors.stColor10,
  color11: AppColors.stColor9,
  color12: AppColors.stColor8,
  color13: AppColors.stColor7,
  color14: AppColors.stColor6,
  color15: AppColors.stColor5,
  color16: AppColors.stColor4,
  color17: AppColors.stColor3,
  color18: AppColors.stColor2,
  color19: AppColors.stColor1,
);
