part of '../stories_screen.dart';

class _ContentData extends StatelessWidget {
  final StoriesState data;

  const _ContentData({
    required this.data,
  });

  @override
  Widget build(BuildContext context) {
    final stories = data.stories;
    final index = data.index;

    return Scaffold(
      appBar: TlAppBar(
        titleWidget: Padding(
          padding: TlSpaces.pl16,
          child: Ruler(
            count: stories.length,
            index: index,
            color: data.color != null ? context.appTheme?.colors.whiteOnColor : null,
          ),
        ),
        withBack: false,
        backgroundColor: data.color,
        actions: [
          TlSvgIconButton(
            padding: TlSpaces.ph16,
            assetName: TlAssets.iconClose,
            onPressed: Navigator.of(context).pop,
            color: data.color != null
                ? context.appTheme?.colors.whiteOnColor
                : context.appTheme?.colors.brAndIcons,
          ),
        ],
      ),
      body: GestureDetector(
        onTapUp: (details) {
          if (details.globalPosition.dx >= context.width / 2) {
            return context.bloc<StoriesCubit>().goToNext();
          }

          context.bloc<StoriesCubit>().goToPrevious();
        },
        onHorizontalDragEnd: (details) {
          if (details.primaryVelocity == null) return;

          if (details.primaryVelocity! < 0) {
            return context.bloc<StoriesCubit>().goToNext();
          }

          context.bloc<StoriesCubit>().goToPrevious();
        },
        child: SafeArea(
          child: switch (index) { _ => MediaContentView(content: stories[index]) },
        ),
      ),
    );
  }
}
