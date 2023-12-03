part of '../stories_screen.dart';

class _ContentStory extends StatelessWidget {
  final ApiStory story;

  const _ContentStory({
    required this.story,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: TlSpaces.p24,
      itemCount: story.blocks.length,
      itemBuilder: (_, index) => Padding(
        padding: TlSpaces.pb24,
        child: _StoryBlock(block: story.blocks[index]),
      ),
    );
  }
}
