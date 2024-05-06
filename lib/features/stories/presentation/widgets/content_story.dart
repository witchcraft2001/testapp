part of '../stories_screen.dart';

class _ContentStory extends StatelessWidget {
  final MediaContent story;

  const _ContentStory({
    super.key,
    required this.story,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: TlSpaces.safeAreaPadding(
        context,
        left: true,
        right: true,
        bottom: true,
        bottomOffset: TlSpaces.sp16,
      ),
      itemCount: story.blocks.length,
      itemBuilder: (_, index) => Padding(
        padding: TlSpaces.ph24t12,
        child: MediaContentBlockWidget(block: story.blocks[index]),
      ),
    );
  }
}
