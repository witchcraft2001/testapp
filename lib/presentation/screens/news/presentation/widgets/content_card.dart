part of '../news_screen.dart';

class _ContentCard extends StatelessWidget {
  final ApiNews item;

  const _ContentCard({
    required this.item,
  });

  @override
  Widget build(BuildContext context) {
    final backgroundColor = tryParseColor(item.backgroundColor);

    final fontColor = backgroundColor != null
        ? context.appTheme?.appTheme.whiteOnColor
        : context.appTheme?.appTheme.textContrast;

    final tagColor = item.backgroundColor.isNotEmpty ? Colors.black.withOpacity(0.2) : null;

    final backgroundColorFinal = backgroundColor ?? context.appTheme?.appTheme.specialColorMenu;

    final withoutHandler = (item.type == ApiNewsType.link && item.link.isEmpty) ||
        (item.type == ApiNewsType.story && item.stories.isEmpty);

    return TlCard(
      borderRadius: TlDecoration.brNews,
      backgroundColor: backgroundColorFinal,
      margin: TlSpaces.pv12,
      child: InkWell(
        highlightColor: backgroundColorFinal!.withOpacity(0.3),
        borderRadius: TlDecoration.brNews,
        onTap: withoutHandler ? null : () => _handleGoTo(context, backgroundColor),
        child: Container(
          padding: TlSpaces.pl24t24,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (item.tag.isNotEmpty)
                TlTag(
                  tag: item.tag,
                  backgroundColor: tagColor,
                ),
              Padding(
                padding: TlSpaces.pr24,
                child: Text(
                  item.title,
                  style: appFontSemi(24.0, fontColor),
                ),
              ),
              Padding(
                padding:
                    item.subtitle.isNotEmpty || item.icon != null ? TlSpaces.pt16 : TlSpaces.pt24,
                child: IntrinsicHeight(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      _CardSubtitle(subtitle: item.subtitle, color: fontColor),
                      _CardImage(url: item.icon),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<void> _handleGoTo(BuildContext context, Color? backgroundColor) async {
    if (item.type == ApiNewsType.link) {
      if (item.link.startsWith('http')) {
        return await launchURL(item.link);
      }

      // ToDo По идее должны быть какие-то параметры
      if (item.link.startsWith(Constants.deeplinkScheme)) {
        final uri = Uri.parse(item.link);

        return appNavigationService.go(
          context,
          uri.path,
          extra: uri.queryParameters,
        );
      }
    }

    if (item.type == ApiNewsType.story) {
      if (item.stories.isEmpty) return;

      // ToDo должно быть разделение на внутреннюю навигацию приложения и внешнюю ссылку
      appNavigationService.goNamed(
        context,
        AppRoutes.stories.name,
        pathParameters: {AppNavigationKeys.id: item.id},
        extra: {
          AppNavigationKeys.stories: item.stories,
          AppNavigationKeys.color: backgroundColor,
        },
      );
    }
  }
}
