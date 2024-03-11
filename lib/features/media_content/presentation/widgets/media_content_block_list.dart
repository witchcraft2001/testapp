part of 'media_content_block.dart';

class _MediaContentBlockListWidget extends StatelessWidget {
  final List<Widget> children;

  const _MediaContentBlockListWidget({
    required this.children,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: children,
    );
  }
}
