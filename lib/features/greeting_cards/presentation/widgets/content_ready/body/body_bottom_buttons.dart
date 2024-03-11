part of '../../../greeting_cards_screen.dart';

class _BodyBottomButtons extends StatelessWidget {
  final GlobalKey globalKey;

  const _BodyBottomButtons({
    required this.globalKey,
  });

  @override
  Widget build(BuildContext context) {
    final bloc = context.bloc<GreetingCardsCubit>();

    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        TlButton(
          padding: TlSpaces.pr16,
          format: AppBtnFormat.small,
          style: AppBtnStyle.leadingBase,
          type: AppBtnType.secondary,
          onPressed: () {
            final position = getSharePosition(
              context,
              height: TlSizes.btnBaseSize,
              offset: const Offset(TlSpaces.sp16, 0),
            );

            bloc.share(globalKey, position);
          },
          leading: SvgPicture.asset(TlAssets.iconShare),
        ),
        TlButton(
          type: AppBtnType.secondary,
          format: AppBtnFormat.small,
          style: AppBtnStyle.leadingBase,
          onPressed: () => _handleSend(context),
          leading: SvgPicture.asset(TlAssets.iconMail),
        ),
      ],
    );
  }

  Future<void> _handleSend(BuildContext context) async {
    context.unfocus();

    final result = await context.bloc<GreetingCardsCubit>().send(globalKey);

    if (context.mounted && result == NotificationSendingResult.error) {
      showDialog<dynamic>(
        context: context,
        builder: (_) => TlDialogConfirm(
          message: S.current.feedbackSendingError,
          cancelTitle: S.current.btnClose,
        ),
      );
    }
  }
}
