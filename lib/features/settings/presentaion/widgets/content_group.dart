part of '../settings_screen.dart';

class _ContentGroup extends StatelessWidget {
  final String? title;
  final Widget? child;

  const _ContentGroup({
    this.title,
    this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: TlSpaces.pt24,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (title != null)
            Padding(
              padding: TlSpaces.pb12,
              child: Text(
                title!.toUpperCase(),
                style: context.appTheme?.text.w500s12cOptional,
              ),
            ),
          Container(
            padding: TlSpaces.p8,
            decoration: BoxDecoration(
              color: context.appTheme?.colors.bgPopups,
              borderRadius: TlDecoration.brBase,
              boxShadow: context.appTheme?.shadows.settingsGroup,
            ),
            child: child,
          ),
        ],
      ),
    );
  }
}
