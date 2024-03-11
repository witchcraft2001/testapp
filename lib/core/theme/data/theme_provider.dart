// Flutter imports:
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

// Project imports:
import 'package:terralinkapp/core/theme/data/app_box_shadows.dart';
import 'package:terralinkapp/core/theme/data/app_colors.dart';
import 'package:terralinkapp/core/theme/data/app_fonts.dart';
import 'package:terralinkapp/core/theme/data/app_text_theme.dart';
import 'package:terralinkapp/core/ui/common/tl_decorations.dart';
import 'package:terralinkapp/core/ui/common/tl_spaces.dart';

class ThemeProvider extends InheritedWidget {
  final bool isDarkTheme;

  const ThemeProvider({
    super.key,
    required super.child,
    required this.isDarkTheme,
  });

  static ThemeProvider? of(BuildContext context) =>
      context.dependOnInheritedWidgetOfExactType<ThemeProvider>();

  // Colors
  AppThemeColors get colors => isDarkTheme ? appColorsThemeDark : appColorsThemeLight;

  // Shadows
  AppThemeShadows get shadows => isDarkTheme ? shadowsDark : shadowsLight;

  static AppThemeShadows shadowsDark = const AppThemeShadows(
    AppThemeShadowsDark.settingsGroup,
    AppThemeShadowsDark.likeNewForm,
  );

  static AppThemeShadows shadowsLight = const AppThemeShadows(
    AppThemeShadowsLight.settingsGroup,
    AppThemeShadowsLight.likeNewForm,
  );

  // Text
  AppThemeText get text => isDarkTheme ? appTextThemeDark : appTextThemeLight;

  // Widgets
  ThemeData themeData() {
    return ThemeData(
      scaffoldBackgroundColor: colors.bgForms,
      appBarTheme: AppBarTheme(
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: Colors.transparent,
          statusBarBrightness: isDarkTheme ? Brightness.dark : Brightness.light,
          statusBarIconBrightness: isDarkTheme ? Brightness.light : Brightness.dark,
        ),
        actionsIconTheme: IconThemeData(color: colors.brAndIcons),
        foregroundColor: colors.textMain,
        iconTheme: IconThemeData(color: colors.brAndIcons),
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: colors.bgHeaders,
        showSelectedLabels: true,
        showUnselectedLabels: false,
        selectedItemColor: colors.primary,
        unselectedItemColor: colors.textMain,
        type: BottomNavigationBarType.fixed,
        selectedLabelStyle: text.w700s11cMain,
        unselectedLabelStyle: text.w700s11cMain,
      ),
      dialogTheme: DialogTheme(
        shape: RoundedRectangleBorder(
          borderRadius: TlDecoration.brBase,
        ),
        backgroundColor: colors.bgPopups,
        titleTextStyle: text.w700s16cMain,
      ),
      primaryColor: colors.primary,
      textTheme: TextTheme(
        displayLarge: text.w900s48cMain,
        displayMedium: text.w900s40cMain,
        displaySmall: text.w900s36cMain,
        headlineLarge: text.w900s32cMain,
        headlineMedium: text.w900s26cMain,
        headlineSmall: text.w400s22cMain,
        titleLarge: text.w700s18cMain,
        titleMedium: text.w700s14cMain,
        titleSmall: text.w700s12cMain,
        labelLarge: text.w400s14cMain,
        labelMedium: text.w400s13cMain,
        labelSmall: text.w400s12cMain,
        bodyLarge: text.w400s20cMain,
        bodyMedium: text.w400s16cMain,
        bodySmall: text.w400s14cMain,
      ),
      canvasColor: colors.bgForms,
      cardColor: colors.bgMenu,
      highlightColor: colors.brAndIconsShapes,
      inputDecorationTheme: InputDecorationTheme(
        fillColor: colors.bgWhite,
        filled: true,
        border: OutlineInputBorder(
          borderSide: BorderSide(color: colors.brAndIconsShapes, width: 1.5),
          borderRadius: TlDecoration.brBase,
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: colors.brAndIconsShapes, width: 1.5),
          borderRadius: TlDecoration.brBase,
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: colors.brAndIconsShapes, width: 1.5),
          borderRadius: TlDecoration.brBase,
        ),
        errorBorder: OutlineInputBorder(
          borderSide: BorderSide(color: colors.danger),
          borderRadius: TlDecoration.brBase,
        ),
        contentPadding: TlSpaces.p16,
        hintStyle: text.w400s16cOptional,
        labelStyle: text.w600s12cSignatures.copyWith(height: 0.25),
        errorStyle: text.w600s12cDanger.copyWith(height: 0.25),
      ),
      fontFamily: AppFonts.base,
      hintColor: colors.textSignatures,
      dividerColor: colors.divider,
      textSelectionTheme: TextSelectionThemeData(cursorColor: colors.primary),
      colorScheme: ColorScheme.fromSwatch(
        accentColor: colors.primary,
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
