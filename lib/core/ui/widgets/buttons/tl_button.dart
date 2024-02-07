// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:terralinkapp/core/theme/data/theme_provider.dart';
import 'package:terralinkapp/core/ui/common/tl_decorations.dart';
import 'package:terralinkapp/core/ui/common/tl_sizes.dart';
import 'package:terralinkapp/core/ui/common/tl_spaces.dart';
import 'package:terralinkapp/core/utils/buttons.dart';

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
        style: getButtonTextStyleByFormat(format: format, textColor: foregroundColor),
        overflow: TextOverflow.ellipsis,
        maxLines: 1,
        textAlign: TextAlign.center,
      ),
    );

    return withOverflow ? Flexible(child: titleWidget) : titleWidget;
  }

  _AppBtnProps _getProps(BuildContext context) {
    final isStyleBase = style == AppBtnStyle.base || style == AppBtnStyle.leadingBase;
    final isStyleLeadingNone = style == AppBtnStyle.leadingNone;
    final isStyleNone = style == AppBtnStyle.none || isStyleLeadingNone;

    final theme = context.appTheme?.appTheme;
    final color = getButtonColorByType(theme: theme, type: type);

    return _AppBtnProps(
      background: isStyleBase
          ? isEnabled
              ? color
              : Colors.transparent
          : isStyleLeadingNone
              ? theme?.specialColorMenu
              : Colors.transparent,
      foreground: isEnabled
          ? isStyleBase
              ? theme?.whiteOnColor
              : color
          : theme?.btnDisabled,
      border: isStyleNone
          ? Colors.transparent
          : (isEnabled ? color : theme?.btnDisabled)!.withOpacity(0.3),
      overlay: isStyleBase ? Colors.white12 : color.withOpacity(0.1),
    );
  }
}

final _leadingStyles = [
  AppBtnStyle.leadingBase,
  AppBtnStyle.leadingNone,
];

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
