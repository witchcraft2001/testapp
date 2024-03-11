part of '../media_content_stories_screen.dart';

class _Content extends StatelessWidget {
  final MediaContentStoriesState data;

  const _Content({
    required this.data,
  });

  @override
  Widget build(BuildContext context) {
    final stories = data.stories;
    final index = data.index;
    final colors = context.appTheme?.colors;

    return Scaffold(
      extendBody: true,
      backgroundColor: colors?.bgPopups,
      body: Padding(
        padding: TlSpaces.safeAreaPadding(
          context,
          top: true,
        ),
        child: Column(
          children: [
            _MediaContentDataAppBar(
              stories: stories,
              index: index,
              data: data,
            ),
            Expanded(
              child: GestureDetector(
                onTapUp: (details) {
                  if (details.globalPosition.dx >= context.width / 2) {
                    return context.bloc<MediaContentStoriesCubit>().goToNext();
                  }

                  context.bloc<MediaContentStoriesCubit>().goToPrevious();
                },
                onHorizontalDragEnd: (details) {
                  if (details.primaryVelocity == null) return;

                  if (details.primaryVelocity! < 0) {
                    return context.bloc<MediaContentStoriesCubit>().goToNext();
                  }

                  context.bloc<MediaContentStoriesCubit>().goToPrevious();
                },
                child: switch (index) {
                  _ => MediaContentView(content: stories[index], key: ValueKey(index))
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
