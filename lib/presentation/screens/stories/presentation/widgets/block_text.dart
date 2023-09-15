part of '../stories_screen.dart';

const _fontSize = 17.0;
const _linkDecoration = TextDecoration.underline;

class _BlockText extends StatelessWidget {
  final List<AppTagContent> content;

  const _BlockText({
    required this.content,
  });

  @override
  Widget build(BuildContext context) {
    if (content.isEmpty) return const SizedBox();

    final children = content.map((item) {
      if (item.parentType == AppTagParentType.noTag) {
        return Text(
          item.text!,
          style: _getTextStyle(context, item.contentType),
        );
      }

      if (item.parentType == AppTagParentType.p) {
        return _buildParagraph(context, item);
      }

      return _buildList(context, item);
    }).toList();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: children,
    );
  }

  Widget _buildParagraph(BuildContext context, AppTagContent item) {
    return Text.rich(TextSpan(
      children: item.children!
          .map(
            (child) => TextSpan(
              text: child.text,
              style: _getTextStyle(context, child.contentType),
              recognizer: child.link != null
                  ? (TapGestureRecognizer()..onTap = () => _handleOpenUrl(context, child.link!))
                  : null,
            ),
          )
          .toList(),
    ));
  }

  Widget _buildList(
    BuildContext context,
    AppTagContent list,
  ) {
    List<Widget> texts = list.children!.map((li) => _buildParagraph(context, li)).toList();

    if (list.parentType == AppTagParentType.ul) {
      return TlBulletedList(list: texts);
    }

    if (list.parentType == AppTagParentType.ol) {
      return TlBulletedList(list: texts, isNumbered: true);
    }

    return const SizedBox();
  }

  TextStyle? _getTextStyle(BuildContext context, AppTagContentType? contentType) {
    final textColor = context.appTheme?.appTheme.textMain;
    final linkColor = context.appTheme?.appTheme.primary;

    final styles = {
      AppTagContentType.text: appFontRegular(_fontSize, textColor),
      AppTagContentType.textBold: appFontSemi(_fontSize, textColor),
      AppTagContentType.link: appFontRegular(_fontSize, linkColor, _linkDecoration),
      AppTagContentType.linkBold: appFontSemi(_fontSize, linkColor, _linkDecoration),
    };

    return styles[contentType] ?? styles[AppTagContentType.text];
  }

  Future<void> _handleOpenUrl(BuildContext context, String link) async {
    if (link.contains('http')) {
      return await launchURL(link);
    }

    // ToDo есть ограничения по навигаци из-за передачи данных в виджеты (например, данные самой стори) или динамических id (id чата с ботом, например, у каждого пользователя свой)
    final uri = Uri.parse(link);

    return appNavigationService.goNamed(
      context,
      uri.path,
      pathParameters: uri.queryParameters,
    );
  }
}
