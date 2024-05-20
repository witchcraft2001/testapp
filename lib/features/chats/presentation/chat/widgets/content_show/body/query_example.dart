part of '../../../chat_screen.dart';

class _QueryExample extends StatelessWidget {
  final ChatQueryExample example;

  const _QueryExample({
    required this.example,
  });

  @override
  Widget build(BuildContext context) {
    final colors = context.appTheme?.colors;

    final borderColor = colors?.brAndIconsStrokes ?? appColorsThemeLight.brAndIconsStrokes;

    return Container(
      margin: TlSpaces.ph20v4,
      child: GestureDetector(
        behavior: HitTestBehavior.opaque,
        onTap: () => context.read<ChatCubit>().sendExample(example.text),
        child: TlExpandable(
          wrapperPadding: TlSpaces.pl20r8b12,
          wrapperDecoration: BoxDecoration(
            borderRadius: TlDecoration.brBase,
            border: Border.all(color: borderColor),
            color: colors?.bgPopups,
          ),
          title: example.title,
          isTapHeaderToExpand: false,
          collapsed: _buildDescription(context),
          expanded: _buildDescription(context, isCollapsed: false),
          iconPlacement: ExpandablePanelIconPlacement.end,
        ),
      ),
    );
  }

  Widget _buildDescription(
    BuildContext context, {
    bool isCollapsed = true,
  }) {
    final text = context.appTheme?.text;

    return Padding(
      padding: TlSpaces.pr12,
      child: Text(
        example.description,
        style: text?.w400s10cOptional,
        maxLines: isCollapsed ? 1 : null,
        overflow: isCollapsed ? TextOverflow.ellipsis : null,
      ),
    );
  }
}
