// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:terralinkapp/presentation/common/tl_sizes.dart';
import 'package:terralinkapp/presentation/theme/theme_provider.dart';

class TlAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String? title;
  final Widget? titleWidget;
  final double? height;
  final double? elevation;
  final bool? centerTitle;
  final bool withBack;
  final List<Widget>? actions;
  final Color? backgroundColor;

  const TlAppBar({
    super.key,
    this.title,
    this.titleWidget,
    this.height,
    this.elevation,
    this.centerTitle,
    this.withBack = true,
    this.actions,
    this.backgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: withBack,
      elevation: elevation ?? 0.0,
      toolbarHeight: height ?? TlSizes.appBarHeight,
      backgroundColor: backgroundColor ?? context.appTheme?.appTheme.backgroundWidgetHeader,
      foregroundColor: context.appTheme?.appTheme.bordersAndIconsIcons,
      centerTitle: centerTitle ?? false,
      title: _TlAppBarTitle(title: title, titleWidget: titleWidget),
      titleSpacing: 0.0,
      actions: actions,
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(height ?? TlSizes.appBarHeight);
}

class _TlAppBarTitle extends StatelessWidget {
  final String? title;
  final Widget? titleWidget;

  const _TlAppBarTitle({
    this.title,
    this.titleWidget,
  });

  @override
  Widget build(BuildContext context) {
    if (titleWidget != null) return titleWidget!;

    if (title != null) {
      return Text(
        title!,
        style: ThemeProvider.bodyMedium.copyWith(color: context.appTheme?.appTheme.textMain),
      );
    }

    return const SizedBox();
  }
}
