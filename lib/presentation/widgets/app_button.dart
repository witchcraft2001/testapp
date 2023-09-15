// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:terralinkapp/presentation/common/tl_decorations.dart';
import 'package:terralinkapp/presentation/theme/theme_provider.dart';
import '../theme/app_colors.dart';
import '../theme/app_style.dart';

// ToDo перейти на использование TlButton
class AppButton extends StatelessWidget {
  final String? title;
  final bool enabled;
  final VoidCallback? onPressed;
  final Style style;
  final Type type;
  final Size size;
  final bool fillMaxWidth;
  final Widget? leading;
  final Widget? tiled;
  final EdgeInsets? padding;

  const AppButton({
    super.key,
    this.title,
    this.enabled = true,
    this.onPressed,
    this.style = Style.base,
    this.type = Type.primary,
    this.size = Size.normal,
    this.leading,
    this.tiled,
    this.fillMaxWidth = true,
    this.padding,
  });

  //https://stackoverflow.com/questions/49991444/create-a-rounded-button-button-with-border-radius-in-flutter
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding ?? const EdgeInsets.all(0.0),
      child: TextButton(
        style: ButtonStyle(
          padding: MaterialStateProperty.all<EdgeInsets>(EdgeInsets.all(_getEdgeSize())),
          backgroundColor: MaterialStateProperty.all<Color>(_getBackgroundColor(context)),
          foregroundColor: MaterialStateProperty.all<Color>(_getForegroundColor(context)),
          overlayColor: MaterialStateProperty.all<Color>(_getOverlayColor()),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(_getRadius()),
              side: BorderSide(color: _getBorderColor(context)),
            ),
          ),
        ),
        onPressed: _getCallback(),
        child: _getChild(context),
      ),
    );
  }

  Color _getOverlayColor() {
    if (enabled) {
      switch (style) {
        case Style.base:
        case Style.semiround:
          return Colors.white12;
        case Style.outline:
        case Style.outlineSemiround:
        case Style.none:
          return AppColors.primary;
      }
    }

    return Colors.transparent;
  }

  VoidCallback? _getCallback() {
    if (enabled) {
      return onPressed;
    }

    return null;
  }

  TextStyle _getTextStyle(BuildContext context) {
    TextStyle textStyle;
    switch (size) {
      case Size.small:
        textStyle = _getTextStyleSmall(context);
        break;
      case Size.normal:
        textStyle = _getTextStyleNormal(context);
        break;
      case Size.large:
        textStyle = _getTextStyleLarge(context);
        break;
    }

    return textStyle;
  }

  TextStyle _getTextStyleSmall(BuildContext context) {
    TextStyle textStyle;
    switch (style) {
      case Style.base:
        textStyle = appFontSemi(14.0, _getForegroundColor(context));
        break;
      case Style.semiround:
        textStyle = appFontRegular(12.0, _getForegroundColor(context));
        break;
      case Style.outline:
        textStyle = appFontSemi(14.0, _getForegroundColor(context));
        break;
      case Style.outlineSemiround:
        textStyle = appFontRegular(12.0, _getForegroundColor(context));
        break;
      case Style.none:
        textStyle = appFontRegular(12.0, _getForegroundColor(context));
        break;
    }

    return textStyle;
  }

  TextStyle _getTextStyleNormal(BuildContext context) {
    return appFontMedium(16.0, _getForegroundColor(context));
  }

  TextStyle _getTextStyleLarge(BuildContext context) {
    return appFontMedium(16.0, _getForegroundColor(context));
  }

  double _getEdgeSize() {
    double edge;
    switch (size) {
      case Size.small:
        edge = 10;
        break;
      case Size.normal:
        edge = 15;
        break;
      case Size.large:
        edge = 20;
        break;
    }

    return edge;
  }

  double _getRadius() {
    if (style == Style.semiround || style == Style.outlineSemiround || style == Style.none) {
      return TlDecoration.brBtnOtherValue;
    }

    if (size == Size.small) return TlDecoration.brBtnSmallValue;

    return TlDecoration.brBtnBaseValue;
  }

  Color _getForegroundColor(BuildContext context) {
    if (!enabled) {
      return context.appTheme?.appTheme.whiteOnColor ?? AppColors.whiteOnColor;
    }
    Color color;
    if (style == Style.outline || style == Style.outlineSemiround) {
      switch (type) {
        case Type.primary:
          color = context.appTheme?.appTheme.primary ?? AppColors.primary;
          break;
        case Type.secondary:
          color = context.appTheme?.appTheme.bordersAndIconsIcons ?? AppColors.bordersAndIconsIcons;
          break;
        case Type.danger:
          color = context.appTheme?.appTheme.danger ?? AppColors.danger;
          break;
        case Type.info:
          color = context.appTheme?.appTheme.info ?? AppColors.info;
          break;
        case Type.warning:
          color = context.appTheme?.appTheme.warning ?? AppColors.warning;
          break;
        case Type.success:
          color = context.appTheme?.appTheme.success ?? AppColors.success;
          break;
      }

      return color;
    } else {
      color = context.appTheme?.appTheme.whiteOnColor ?? AppColors.whiteOnColor;

      return color;
    }
  }

  Color _getBackgroundColor(BuildContext context) {
    if (!enabled) {
      return context.appTheme?.appTheme.bordersAndIconsIcons ?? AppColors.bordersAndIconsIcons;
    }
    Color color;
    if (style == Style.outline || style == Style.outlineSemiround || style == Style.none) {
      color = Colors.transparent;
    } else {
      switch (type) {
        case Type.primary:
          color = context.appTheme?.appTheme.primary ?? AppColors.primary;
          break;
        case Type.secondary:
          color = context.appTheme?.appTheme.second ?? AppColors.second;
          break;
        case Type.danger:
          color = context.appTheme?.appTheme.danger ?? AppColors.danger;
          break;
        case Type.info:
          color = context.appTheme?.appTheme.info ?? AppColors.info;
          break;
        case Type.warning:
          color = context.appTheme?.appTheme.warning ?? AppColors.warning;
          break;
        case Type.success:
          color = context.appTheme?.appTheme.predictors7 ?? AppColors.predictors7;
          break;
      }
    }

    return color;
  }

  Color _getBorderColor(BuildContext context) {
    Color color;
    if (enabled && (style == Style.outline || style == Style.outlineSemiround)) {
      switch (type) {
        case Type.primary:
          color = context.appTheme?.appTheme.primary ?? AppColors.primary;
          break;
        case Type.secondary:
          color = context.appTheme?.appTheme.lightGrey ?? AppColors.lightGrey;
          break;
        case Type.danger:
          color = context.appTheme?.appTheme.danger ?? AppColors.danger;
          break;
        case Type.info:
          color = context.appTheme?.appTheme.info ?? AppColors.info;
          break;
        case Type.warning:
          color = context.appTheme?.appTheme.warning ?? AppColors.warning;
          break;
        case Type.success:
          color = context.appTheme?.appTheme.predictors7 ?? AppColors.predictors7;
          break;
      }
    } else {
      color = Colors.transparent;
    }

    return color;
  }

  Widget _getChild(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        leading != null ? leading! : Container(),
        _getTitleText(context),
        tiled != null ? tiled! : Container(),
      ],
    );
  }

  Widget _getTitleText(BuildContext context) {
    if (title != null) {
      return Padding(
        padding: EdgeInsets.only(
          left: leading != null ? 12.0 : 0.0,
          right: tiled != null ? 12.0 : 0.0,
        ),
        child: Text(
          title != null ? title! : "",
          style: _getTextStyle(context),
          overflow: TextOverflow.ellipsis,
          maxLines: 1,
          textAlign: TextAlign.center,
        ),
      );
    }

    return Container();
  }
}

enum Style { base, semiround, outline, outlineSemiround, none }

enum Size { small, normal, large }

enum Type { primary, secondary, danger, info, warning, success }
