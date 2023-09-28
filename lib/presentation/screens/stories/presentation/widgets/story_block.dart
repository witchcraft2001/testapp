part of '../stories_screen.dart';

class _StoryBlock extends StatelessWidget {
  final ApiStoryBlock block;

  const _StoryBlock({
    required this.block,
  });

  @override
  Widget build(BuildContext context) {
    if (block.type == ApiStoryBlockType.title) {
      if (block.title.isEmpty) return const SizedBox();

      return Text(
        block.title,
        style: ThemeProvider.headlineSmall.copyWith(
          color: context.appTheme?.appTheme.textMain,
          fontWeight: FontWeight.w900,
        ),
      );
    }

    if (block.type == ApiStoryBlockType.image) {
      if (block.image == null || block.image!.isEmpty) return const SizedBox();

      return ClipRRect(
        borderRadius: TlDecoration.brBase,
        child: TlNetworkImage(
          url: block.image!,
          withPlaceholder: true,
        ),
      );
    }

    if (block.type == ApiStoryBlockType.textField) {
      return _BlockText(content: block.parsedContent);
    }

    if (block.buttonTitle.isEmpty || block.link.isEmpty) {
      return const SizedBox();
    }

    return TlButton(
      title: block.buttonTitle,
      type: AppBtnType.secondary,
      onPressed: () => launchURL(block.link),
    );
  }
}
