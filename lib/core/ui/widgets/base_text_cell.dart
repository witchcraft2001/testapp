// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:terralinkapp/core/theme/data/theme_provider.dart';
import '../../theme/data/app_colors.dart';
import '../../theme/data/app_style.dart';

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
                  padding: const EdgeInsets.only(left: 12.0, right: 12.0),
                  child: Text(
                    title,
                    maxLines: titleMaxLines,
                    softWrap: true,
                    style: titleStyle ??
                        Theme.of(context).textTheme.bodyMedium?.copyWith(
                              color: _getForegroundColor(context),
                              fontSize: 18.0,
                              fontWeight: FontWeight.normal,
                            ),
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
            style: middleStyle ??
                Theme.of(context).textTheme.bodySmall?.copyWith(
                      color: context.appTheme?.appTheme.textOptional,
                      fontWeight: AppFontWeight.semibold,
                    ),
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
            padding: const EdgeInsets.only(left: 12.0),
            child: subtitle ??
                Text(
                  subtitleText ?? "",
                  textAlign: TextAlign.end,
                  style: subtitleStyle ??
                      Theme.of(context)
                          .textTheme
                          .bodyLarge
                          ?.copyWith(color: _getForegroundColor(context)),
                ),
          ),
        ],
      );
    }

    return Container();
  }

  Color _getForegroundColor(BuildContext context) {
    return foreground ?? context.appTheme?.appTheme.textMain ?? AppColors.textMain;
  }
}
