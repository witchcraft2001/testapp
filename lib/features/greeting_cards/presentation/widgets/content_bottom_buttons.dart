part of '../greeting_cards_screen.dart';

class _ContentBottomButtons extends StatelessWidget {
  final GlobalKey globalKey;

  const _ContentBottomButtons({
    required this.globalKey,
  });

  @override
  Widget build(BuildContext context) {
    final bloc = context.bloc<GreetingCardCubit>();

    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        TlButton(
          padding: TlSpaces.pr16,
          format: AppBtnFormat.small,
          style: AppBtnStyle.leadingBase,
          type: AppBtnType.secondary,
          onPressed: () => bloc.share(globalKey),
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

    final result = await context.bloc<GreetingCardCubit>().send(globalKey);

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
