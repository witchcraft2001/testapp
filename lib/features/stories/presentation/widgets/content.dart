part of '../stories_screen.dart';

class _Content extends StatelessWidget {
  final StoriesReadyData data;

  const _Content({
    required this.data,
  });

  @override
  Widget build(BuildContext context) {
    final colors = context.appTheme?.colors;

    final stories = data.stories;
    final index = data.index;

    return Scaffold(
      extendBody: true,
      backgroundColor: colors?.bgPopups,
      body: Padding(
        padding: TlSpaces.safeAreaPadding(context, top: true),
        child: Column(
          children: [
            TlContentDataAppBar(
              length: stories.length,
              index: index,
              color: data.color,
              onTap: context.read<StoriesCubit>().goTo,
            ),
            Expanded(
              child: GestureDetector(
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
                child: switch (index) {
                  _ => _ContentStory(key: ValueKey(index), story: stories[index])
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
