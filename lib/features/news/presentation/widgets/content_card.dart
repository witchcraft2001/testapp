part of '../news_screen.dart';

class _ContentCard extends StatelessWidget {
  final ApiNews item;

  const _ContentCard({
    required this.item,
  });

  @override
  Widget build(BuildContext context) {
    final colors = context.appTheme?.colors;
    final text = context.appTheme?.text;

    final fontColor = item.backgroundColor != null ? colors?.whiteOnColor : colors?.textContrast;
    final tagColor = item.backgroundColor != null ? Colors.black.withOpacity(0.2) : null;

    final backgroundColorFinal = item.backgroundColor ?? colors?.bgMenu;

    final withoutHandler = (item.type == ApiNewsType.link && item.link.isEmpty) ||
        (item.type == ApiNewsType.story && item.stories.isEmpty);

    return TlCard(
      borderRadius: TlDecoration.brNews,
      backgroundColor: backgroundColorFinal,
      margin: TlSpaces.pv12,
      child: InkWell(
        highlightColor: backgroundColorFinal!.withOpacity(0.3),
        borderRadius: TlDecoration.brNews,
        onTap: withoutHandler ? null : () => _handleGoTo(context, item.backgroundColor),
        child: Container(
          padding: TlSpaces.pl24t24,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (item.tag.isNotEmpty)
                TlTag(
                  tag: item.tag,
                  style: text?.w500s13cWhite,
                  margin: TlSpaces.pb16,
                  padding: TlSpaces.ph16v8,
                  backgroundColor: tagColor,
                  borderRadius: TlDecoration.brTagXl,
                ),
              Padding(
                padding: TlSpaces.pr24,
                child: Text(
                  item.title,
                  style: text?.w700s24cMain.copyWith(color: fontColor),
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
      return await goToUrlOrEmail(context, item.link);
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
