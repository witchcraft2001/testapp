// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:terralinkapp/core/theme/data/theme_provider.dart';
import 'package:terralinkapp/core/ui/common/tl_spaces.dart';

class BaseTextCell extends StatelessWidget {
  final Widget? icon;
  final String title;
  final String? subtitleText;
  final Widget? subtitle;
  final String? middleText;
  final VoidCallback? onClick;
  final Color? foreground;
  final TextStyle? titleStyle;
  final TextStyle? subtitleStyle;
  final TextStyle? middleStyle;
  final int? titleMaxLines;

  const BaseTextCell({
    super.key,
    this.icon,
    required this.title,
    this.subtitleText,
    this.middleText,
    this.onClick,
    this.foreground,
    this.subtitle,
    this.titleStyle,
    this.subtitleStyle,
    this.middleStyle,
    this.titleMaxLines,
  });

  Widget _getBody(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Flexible(
          child: Row(
            children: [
              icon != null
                  ? SizedBox(
                      width: 24.0,
                      height: 24.0,
                      child: icon,
                    )
                  : Container(),
              Flexible(
                child: Padding(
                  padding: TlSpaces.ph12,
                  child: Text(
                    title,
                    maxLines: titleMaxLines,
                    softWrap: true,
                    style: titleStyle ??
                        context.appTheme?.text.w400s18cMain.copyWith(color: foreground),
                  ),
                ),
              ),
            ],
          ),
        ),
        _getSubtitleText(context, subtitle, subtitleText, middleText),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    if (onClick != null) {
      return GestureDetector(
        onTap: onClick,
        child: _getBody(context),
      );
    }

    return _getBody(context);
  }

  Widget _getMiddleText(BuildContext context, String? middleText) {
    return middleText != null
        ? Text(
            middleText,
            style: middleStyle ?? context.appTheme?.text.w700s14cOptional,
          )
        : Container();
  }

  Widget _getSubtitleText(
    BuildContext context,
    Widget? subtitle,
    String? subtitleText,
    String? middleText,
  ) {
    if (subtitleText != null || subtitle != null || middleText != null) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          _getMiddleText(context, middleText),
          Padding(
            padding: TlSpaces.pl12,
            child: subtitle ??
                Text(
                  subtitleText ?? '',
                  textAlign: TextAlign.end,
                  style: subtitleStyle ??
                      context.appTheme?.text.w400s20cMain.copyWith(color: foreground),
                ),
          ),
        ],
      );
    }

    return Container();
  }
}
