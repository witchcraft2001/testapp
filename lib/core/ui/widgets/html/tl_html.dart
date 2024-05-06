// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_html_v3/flutter_html.dart';

// Project imports:
import 'package:terralinkapp/core/theme/data/app_fonts.dart';
import 'package:terralinkapp/core/theme/data/theme_provider.dart';
import 'package:terralinkapp/core/ui/common/tl_spaces.dart';
import 'package:terralinkapp/core/utils/links.dart';

final _fontSize = FontSize(17.0);

final _listStyle = Style(
  margin: Margins.symmetric(horizontal: TlSpaces.sp16),
  padding: TlSpaces.ph16,
);

class TlHtml extends StatelessWidget {
  final String content;
  final Map<String, Style>? style;
  final VoidCallback? onLinkTap;
  final EdgeInsets? padding;

  const TlHtml({
    super.key,
    required this.content,
    this.style,
    this.onLinkTap,
    this.padding,
  });

  @override
  Widget build(BuildContext context) {
    final colors = context.appTheme?.colors;

    return Container(
      padding: padding,
      child: Html(
        data: content,
        // onLinkTap: (url, _, __, ___) => goToUrlOrEmail(context, url),
        onLinkTap: (url, _, __, ___) {
          if (onLinkTap != null) return onLinkTap?.call();

          goToUrlOrEmail(context, url);
        },
        style: style ??
            {
              'body': Style(
                margin: Margins.zero,
                color: colors?.textMain,
                fontSize: _fontSize,
                fontFamily: AppFonts.base,
              ),
              'p': Style(
                margin: Margins.zero,
                color: colors?.textMain,
                fontSize: _fontSize,
              ),
              'ul': _listStyle,
              'ol': _listStyle,
              'a': Style(color: colors?.primary),
              'b': Style(fontWeight: FontWeight.w700),
              'strong': Style(fontWeight: FontWeight.w700),
            },
      ),
    );
  }
}
