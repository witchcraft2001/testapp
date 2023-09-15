// Flutter imports:
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

// Project imports:
import 'package:terralinkapp/presentation/common/tl_decorations.dart';
import 'package:terralinkapp/presentation/theme/app_box_shadows.dart';
import 'app_colors.dart';
import 'app_fonts.dart';
import 'app_style.dart';

class ThemeProvider extends InheritedWidget {
  final bool isDarkTheme;

  const ThemeProvider({super.key, required this.isDarkTheme, required super.child});

  AppTheme get appTheme => isDarkTheme ? darkTheme : lightTheme;

  static AppTheme lightTheme = AppTheme(
    AppColors.accent,
    AppColors.primary,
    AppColors.specialColorWhiteBackground,
    AppColors.specialColorMenu,
    AppColors.textMain,
    AppColors.textOptional,
    AppColors.bordersAndIconsWidgetStrokes,
    AppColors.bordersAndIconsIcons,
    AppColors.second,
    AppColors.btnDisabled,
    AppColors.bordersAndIconsStrokeShape,
    AppColors.textSignatures,
    AppColors.textOnSecond,
    AppColors.textOnPrimary,
    AppColors.textContrast,
    AppColors.whiteOnColor,
    AppColors.lightGrey,
    AppColors.success,
    AppColors.danger,
    AppColors.dangerBackground,
    AppColors.info,
    AppColors.warning,
    AppColors.gold,
    AppColors.backgroundDashboardsForms,
    AppColors.backgroundPopupWidget,
    AppColors.backgroundWidgetHeader,
    AppColors.lightBackground,
    AppColors.secondBackground,
    AppColors.divider,
    AppColors.shadow,
    AppColors.predictors1,
    AppColors.predictors2,
    AppColors.predictors3,
    AppColors.predictors4,
    AppColors.predictors5,
    AppColors.predictors6,
    AppColors.predictors7,
    AppColors.predictors8,
    AppColors.predictors9,
    AppColors.predictors10,
    AppColors.predictors11,
    AppColors.color1,
    AppColors.color2,
    AppColors.color3,
    AppColors.color4,
    AppColors.color5,
    AppColors.color6,
    AppColors.color7,
    AppColors.color8,
    AppColors.color9,
    AppColors.color10,
    AppColors.color11,
    AppColors.color12,
    AppColors.color13,
    AppColors.color14,
    AppColors.color15,
    AppColors.color16,
    AppColors.color17,
    AppColors.color18,
    AppColors.color19,
  );

  static AppTheme darkTheme = AppTheme(
    AppDarkColors.accent,
    AppDarkColors.primary,
    AppDarkColors.specialColorWhiteBackground,
    AppDarkColors.specialColorMenu,
    AppDarkColors.textMain,
    AppDarkColors.textOptional,
    AppDarkColors.bordersAndIconsWidgetStrokes,
    AppDarkColors.bordersAndIconsIcons,
    AppDarkColors.second,
    AppColors.btnDisabled,
    AppDarkColors.bordersAndIconsStrokeShape,
    AppDarkColors.textSignatures,
    AppDarkColors.textOnSecond,
    AppDarkColors.textOnPrimary,
    AppDarkColors.textContrast,
    AppDarkColors.whiteOnColor,
    AppDarkColors.lightGrey,
    AppDarkColors.success,
    AppDarkColors.danger,
    AppDarkColors.dangerBackground,
    AppDarkColors.info,
    AppDarkColors.warning,
    AppDarkColors.gold,
    AppDarkColors.backgroundDashboardsForms,
    AppDarkColors.backgroundPopupWidget,
    AppDarkColors.backgroundWidgetHeader,
    AppDarkColors.lightBackground,
    AppDarkColors.secondBackground,
    AppDarkColors.divider,
    AppDarkColors.shadow,
    AppDarkColors.predictors1,
    AppDarkColors.predictors2,
    AppDarkColors.predictors3,
    AppDarkColors.predictors4,
    AppDarkColors.predictors5,
    AppDarkColors.predictors6,
    AppDarkColors.predictors7,
    AppDarkColors.predictors8,
    AppDarkColors.predictors9,
    AppDarkColors.predictors10,
    AppDarkColors.predictors11,
    AppDarkColors.color1,
    AppDarkColors.color2,
    AppDarkColors.color3,
    AppDarkColors.color4,
    AppDarkColors.color5,
    AppDarkColors.color6,
    AppDarkColors.color7,
    AppDarkColors.color8,
    AppDarkColors.color9,
    AppDarkColors.color10,
    AppDarkColors.color11,
    AppDarkColors.color12,
    AppDarkColors.color13,
    AppDarkColors.color14,
    AppDarkColors.color15,
    AppDarkColors.color16,
    AppDarkColors.color17,
    AppDarkColors.color18,
    AppDarkColors.color19,
  );

  AppThemeShadows get appThemeShadows => isDarkTheme ? darkThemeBoxShadows : lightThemeBoxShadows;

  static AppThemeShadows darkThemeBoxShadows = AppThemeShadows(
    AppThemeShadowsDark.settingsGroup,
  );

  static AppThemeShadows lightThemeBoxShadows = AppThemeShadows(
    AppThemeShadowsLight.settingsGroup,
  );

  static ThemeProvider? of(BuildContext context) =>
      context.dependOnInheritedWidgetOfExactType<ThemeProvider>();

  static final TextTheme textTheme = TextTheme(
    displayLarge: displayLarge,
    displayMedium: displayMedium,
    displaySmall: displaySmall,
    headlineLarge: headlineLarge,
    headlineMedium: headlineMedium,
    headlineSmall: headlineSmall,
    titleLarge: titleLarge,
    titleMedium: titleMedium,
    titleSmall: titleSmall,
    labelLarge: labelLarge,
    labelMedium: labelMedium,
    labelSmall: labelSmall,
    bodyLarge: bodyLarge,
    bodyMedium: bodyMedium,
    bodySmall: bodySmall,
  );

  static final TextStyle displayLarge = appFontBold(48);

  static final TextStyle displayMedium = appFontBold(40);

  static final TextStyle displaySmall = appFontBold(36);

  static final TextStyle headlineLarge = appFontBold(32);

  static final TextStyle headlineMedium = appFontBold(26);

  static final TextStyle headlineSmall = appFontRegular(22);

  static final TextStyle titleLarge = appFontSemi(18);

  static final TextStyle titleMedium = appFontSemi(14);

  static final TextStyle titleSmall = appFontSemi(12);

  static final TextStyle labelLarge = appFontRegular(14); //13

  static final TextStyle labelMedium = appFontRegular(13); //12

  static final TextStyle labelSmall = appFontRegular(12); //11

  static final TextStyle bodyLarge = appFontRegular(20);

  static final TextStyle bodyMedium = appFontMedium(16);

  static final TextStyle bodySmall = appFontRegular(14);

  static final TextStyle caption = appFontSemi(13);

  ThemeData themeData() {
    return ThemeData(
      scaffoldBackgroundColor: appTheme.backgroundDashboardsForms,

      appBarTheme: AppBarTheme(
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: Colors.transparent,
          statusBarBrightness: isDarkTheme ? Brightness.dark : Brightness.light,
          statusBarIconBrightness: isDarkTheme ? Brightness.light : Brightness.dark,
        ),
        actionsIconTheme: IconThemeData(
          color: appTheme.second,
        ),
        foregroundColor: appTheme.textMain,
        iconTheme: IconThemeData(
          color: appTheme.second,
        ),
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: appTheme.backgroundWidgetHeader,
        showSelectedLabels: true,
        showUnselectedLabels: false,
        selectedItemColor: appTheme.primary,
        unselectedItemColor: appTheme.textMain,
        type: BottomNavigationBarType.fixed,
        selectedLabelStyle: textTheme.titleSmall?.copyWith(fontSize: 11.0),
        unselectedLabelStyle: textTheme.titleSmall?.copyWith(fontSize: 11.0),
      ),
      dialogTheme: DialogTheme(
        shape: RoundedRectangleBorder(
          borderRadius: TlDecoration.brBase,
        ),
        backgroundColor: appTheme.backgroundPopupWidget,
        titleTextStyle: bodyMedium.copyWith(
          color: appTheme.textMain,
          fontWeight: FontWeight.w700,
        ),
      ),
      primaryColor: appTheme.primary,
      // primaryIconTheme: theme.primaryIconTheme.copyWith(color: AppColors.primary),
      textTheme: textTheme,
      // theme.textTheme.copyWith(
      //   bodyText2: theme.textTheme.bodyText2!.merge(body1),
      //   button: theme.textTheme.button!.merge(button),
      // ),
      canvasColor: appTheme.backgroundDashboardsForms,
      cardColor: appTheme.specialColorMenu,
      // splashColor: appTheme.textSignatures,
      // buttonTheme: theme.buttonTheme.copyWith(height: kButtonHeight),
      highlightColor: appTheme.bordersAndIconsStrokeShape,
      inputDecorationTheme: InputDecorationTheme(
        fillColor: appTheme.specialColorWhiteBackground,
        filled: true,
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: appTheme.bordersAndIconsStrokeShape, width: 1.5),
          borderRadius: TlDecoration.brBase,
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: appTheme.bordersAndIconsStrokeShape, width: 1.5),
          borderRadius: TlDecoration.brBase,
        ),
        errorBorder: OutlineInputBorder(
          borderSide: BorderSide(color: appTheme.danger),
          borderRadius: TlDecoration.brBase,
        ),
        contentPadding: const EdgeInsets.all(16.0),
        hintStyle:
            bodyMedium.copyWith(fontWeight: AppFontWeight.regular, color: appTheme.textOptional),
        labelStyle: TextStyle(
          fontWeight: AppFontWeight.medium,
          height: 0.25,
          color: appTheme.lightGrey.withOpacity(.8),
        ),
        errorStyle: TextStyle(
          fontWeight: AppFontWeight.medium,
          fontSize: 12,
          height: 0.25,
          color: appTheme.danger,
        ),
      ),
      fontFamily: AppFonts.base,
      hintColor: appTheme.textSignatures,
      dividerColor: appTheme.divider,
      textSelectionTheme: TextSelectionThemeData(cursorColor: appTheme.primary),
      // colorScheme: ColorScheme.fromSwatch(primarySwatch: kPrimarySwatch).copyWith(secondary: kAccentColor),
      colorScheme: ColorScheme.fromSwatch(
        accentColor: appTheme.primary,
        brightness: isDarkTheme ? Brightness.dark : Brightness.light,
      ),
    );
  }

  @override
  bool updateShouldNotify(ThemeProvider oldWidget) => oldWidget.isDarkTheme != isDarkTheme;
}

extension BuildContextThemeExtensions on BuildContext {
  ThemeData get theme => Theme.of(this);

  ThemeProvider? get appTheme => ThemeProvider.of(this);
}
