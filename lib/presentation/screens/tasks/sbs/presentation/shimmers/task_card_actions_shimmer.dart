part of '../tasks_sbs_screen.dart';

class _TaskCardActionsShimmer extends StatelessWidget {
  const _TaskCardActionsShimmer();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: TlDecoration.brTasksActions,
        color: context.appTheme?.appTheme.backgroundPopupWidget,
      ),
      padding: TlSpaces.ph24,
      child: SafeArea(
        child: TlShimmer(
          child: TlShimmerContent(
            margin: TlSpaces.pt24b12,
            borderRadius: TlDecoration.brBtnBase,
            height: TlSizes.btnBaseSize,
          ),
        ),
      ),
    );
  }
}
