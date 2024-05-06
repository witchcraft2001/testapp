part of 'media_content_block.dart';

class _MediaContentBlockLinkedButtonWidget extends StatelessWidget {
  final String title;
  final String link;

  const _MediaContentBlockLinkedButtonWidget({
    required this.title,
    required this.link,
  });

  @override
  Widget build(BuildContext context) {
    if (title.isEmpty || link.isEmpty) {
      return const SizedBox();
    }

    return TlButton(
      title: title,
      type: AppBtnType.secondary,
      onPressed: () => goToUrlOrEmail(context, link),
    );
  }
}
