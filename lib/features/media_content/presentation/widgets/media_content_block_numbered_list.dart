part of 'media_content_block.dart';

class _MediaContentBlockNumberedListWidget extends StatelessWidget {
  final List<Widget> children;

  const _MediaContentBlockNumberedListWidget({
    required this.children,
  });

  @override
  Widget build(BuildContext context) {
    return TlBulletedList(
      childrenPadding: TlSpaces.pt4,
      spaceBetweenItem: 8,
      markBuilder: ({required int index}) => Padding(
        padding: TlSpaces.pr8,
        child: AspectRatio(
          aspectRatio: 1,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: TlDecoration.brMax,
              color: context.appTheme?.colors.color4,
            ),
            child: Center(
              child: Padding(
                padding: TlSpaces.ph8,
                child: Text(
                  '${index + 1}',
                  style: context.appTheme?.text.w400s17cMain,
                ),
              ),
            ),
          ),
        ),
      ),
      children: children,
    );
  }
}
