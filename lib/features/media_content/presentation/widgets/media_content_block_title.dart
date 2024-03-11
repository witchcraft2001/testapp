part of 'media_content_block.dart';

class _MediaContentBlockTitleWidget extends StatelessWidget {
  final String title;

  const _MediaContentBlockTitleWidget({
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    if (title.isEmpty) return const SizedBox();

    return Text(
      title,
      style: context.appTheme?.text.w900s22cMain,
    );
  }
}
