part of 'media_content_block.dart';

class _MediaContentBlockGroupWidget extends StatelessWidget {
  final Widget child;

  const _MediaContentBlockGroupWidget({
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: TlSpaces.pv8,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: TlDecoration.brBtnBase,
          color: context.appTheme?.colors.bgForms,
        ),
        child: Padding(
          padding: TlSpaces.ph16v24,
          child: child,
        ),
      ),
    );
  }
}
