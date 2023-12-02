// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:terralinkapp/core/theme/data/theme_provider.dart';
import 'package:terralinkapp/core/ui/common/tl_decorations.dart';
import 'package:terralinkapp/core/ui/common/tl_sizes.dart';
import 'package:terralinkapp/core/ui/common/tl_spaces.dart';
import '../../../theme/data/app_style.dart';

class TlButton extends StatelessWidget {
  final String? title;
  final Widget? leading;
  final Widget? trailing;
  final bool isEnabled;
  final bool isLoading;
  final bool withOverflow;
  final VoidCallback? onPressed;
  final AppBtnStyle style;
  final AppBtnType type;
  final AppBtnFormat format;
  final EdgeInsets? padding;
  final double? size;

  const TlButton({
    super.key,
    this.title,
    this.leading,
    this.trailing,
    this.isEnabled = true,
    this.isLoading = false,
    this.withOverflow = false,
    this.onPressed,
    this.style = AppBtnStyle.base,
    this.type = AppBtnType.primary,
    this.format = AppBtnFormat.base,
    this.padding,
    this.size,
  });

  @override
  Widget build(BuildContext context) {
    final props = _getProps(context);

    final minimumSize = _leadingStyles.contains(style)
        ? MaterialStateProperty.all<Size>(
            Size(size ?? TlSizes.btnBaseSize, size ?? TlSizes.btnBaseSize),
          )
        : null;

    return Container(
      padding: padding,
      child: TextButton(
        style: ButtonStyle(
          minimumSize: minimumSize,
          padding: MaterialStateProperty.all<EdgeInsets>(_btnInnerPaddingByFormat[format]!),
          backgroundColor: MaterialStateProperty.all<Color>(props.background!),
          foregroundColor: MaterialStateProperty.all<Color>(props.foreground!),
          overlayColor: MaterialStateProperty.all<Color>(props.overlay!),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: _btnRadiusByFormat[format]!,
              side: BorderSide(color: props.border!),
            ),
          ),
        ),
        onPressed: isEnabled ? onPressed : null,
        // ToDo добавить isLoading с прогресс-индикатором
        child: _buildChild(context, props.foreground!),
      ),
    );
  }

  Widget _buildChild(BuildContext context, Color foregroundColor) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        if (leading != null) leading!,
        if (title != null) _buildTitle(context, foregroundColor),
        if (trailing != null) trailing!,
      ],
    );
  }

  Widget _buildTitle(BuildContext context, Color foregroundColor) {
    final titleWidget = Padding(
      padding: EdgeInsets.only(
        left: leading != null ? TlSpaces.sp12 : 0.0,
        right: trailing != null ? TlSpaces.sp12 : 0.0,
      ),
      child: Text(
        title!,
        style: _getTextStyle(context, foregroundColor),
        overflow: TextOverflow.ellipsis,
        maxLines: 1,
        textAlign: TextAlign.center,
      ),
    );

    return withOverflow ? Flexible(child: titleWidget) : titleWidget;
  }

  TextStyle _getTextStyle(BuildContext context, Color foregroundColor) {
    final sizes = {
      AppBtnFormat.small: appFontRegular(13.0, foregroundColor),
      AppBtnFormat.base: appFontMedium(16.0, foregroundColor),
      AppBtnFormat.large: appFontMedium(16.0, foregroundColor),
    };

    return sizes[format]!;
  }

  _AppBtnProps _getProps(BuildContext context) {
    final isStyleBase = style == AppBtnStyle.base || style == AppBtnStyle.leadingBase;
    final isStyleLeadingNone = style == AppBtnStyle.leadingNone;
    final isStyleNone = style == AppBtnStyle.none || isStyleLeadingNone;

    final color = _getColorsByType(context)[type];

    return _AppBtnProps(
      background: isStyleBase
          ? isEnabled
              ? color
              : Colors.transparent
          : isStyleLeadingNone
              ? context.appTheme?.appTheme.specialColorMenu
              : Colors.transparent,
      foreground: isEnabled
          ? isStyleBase
              ? context.appTheme?.appTheme.whiteOnColor
              : color
          : context.appTheme?.appTheme.btnDisabled,
      border: isStyleNone
          ? Colors.transparent
          : (isEnabled ? color : context.appTheme?.appTheme.btnDisabled)!.withOpacity(0.3),
      overlay: isStyleBase ? Colors.white12 : color!.withOpacity(0.1),
    );
  }

  Map<AppBtnType, Color?> _getColorsByType(BuildContext context) => {
        AppBtnType.primary: context.appTheme?.appTheme.primary,
        AppBtnType.secondary: context.appTheme?.appTheme.second,
        AppBtnType.danger: context.appTheme?.appTheme.danger,
        AppBtnType.info: context.appTheme?.appTheme.info,
        AppBtnType.warning: context.appTheme?.appTheme.warning,
        AppBtnType.success: context.appTheme?.appTheme.predictors7,
      };
}

enum AppBtnStyle { base, outline, none, leadingBase, leadingNone }

final _leadingStyles = [
  AppBtnStyle.leadingBase,
  AppBtnStyle.leadingNone,
];

enum AppBtnFormat { base, small, large, square }

enum AppBtnType { primary, secondary, danger, info, warning, success }

final _btnInnerPaddingByFormat = {
  AppBtnFormat.square: TlSpaces.p16,
  AppBtnFormat.base: TlSpaces.p16,
  AppBtnFormat.small: TlSpaces.p8,
  AppBtnFormat.large: TlSpaces.p20,
};

final _btnRadiusByFormat = {
  AppBtnFormat.square: TlDecoration.brNone,
  AppBtnFormat.small: TlDecoration.brBtnSmall,
  AppBtnFormat.base: TlDecoration.brBtnBase,
  AppBtnFormat.large: TlDecoration.brBtnBase,
};

class _AppBtnProps {
  Color? background;
  Color? foreground;
  Color? border;
  Color? overlay;

  _AppBtnProps({
    this.background,
    this.foreground,
    this.border,
    this.overlay,
  });
}
