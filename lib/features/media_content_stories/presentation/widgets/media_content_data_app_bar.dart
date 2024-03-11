part of '../media_content_stories_screen.dart';

class _MediaContentDataAppBar extends StatelessWidget {
  const _MediaContentDataAppBar({
    required this.stories,
    required this.index,
    required this.data,
  });

  final List<MediaContent> stories;
  final int index;
  final MediaContentStoriesState data;

  @override
  Widget build(BuildContext context) {
    final colors = context.appTheme?.colors;

    return Padding(
      padding: TlSpaces.ph24v4,
      child: Row(
        children: [
          Expanded(
            child: TlPageIndicator(
              count: stories.length,
              index: index,
              color: data.color,
              onTap: context.read<MediaContentStoriesCubit>().goTo,
            ),
          ),
          Padding(
            padding: TlSpaces.pl8,
            child: ClipRRect(
              borderRadius: TlDecoration.brBtnBase,
              child: AnimatedContainer(
                curve: Curves.fastOutSlowIn,
                duration: const Duration(milliseconds: 500),
                color: data.color ?? colors?.primary,
                child: TlSvgIconButton(
                  assetName: TlAssets.iconCross,
                  onPressed: Navigator.of(context).pop,
                  color: colors?.whiteOnColor,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
