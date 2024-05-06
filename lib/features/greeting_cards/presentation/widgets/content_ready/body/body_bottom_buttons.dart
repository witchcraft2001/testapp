part of '../../../greeting_cards_screen.dart';

class _BodyBottomButtons extends StatefulWidget {
  final GlobalKey globalKey;
  final bool isShowActions;

  const _BodyBottomButtons({
    required this.globalKey,
    required this.isShowActions,
  });

  @override
  State<_BodyBottomButtons> createState() => _BodyBottomButtonsState();
}

class _BodyBottomButtonsState extends State<_BodyBottomButtons> {
  late bool _isShow;

  @override
  void initState() {
    super.initState();
    _isShow = widget.isShowActions;
  }

  @override
  Widget build(BuildContext context) {
    return _isShow
        ? Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              TlButton(
                padding: TlSpaces.pr16,
                format: AppBtnFormat.small,
                style: AppBtnStyle.leadingBase,
                type: AppBtnType.secondary,
                onPressed: () => _handleShare(context),
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
          )
        : const SizedBox();
  }

  Future<void> _handleShare(BuildContext context) async {
    context.unfocus();
    _changeIsShow();

    final position = getSharePosition(
      context,
      height: TlSizes.btnBaseSize,
      offset: const Offset(TlSpaces.sp16, 0),
    );

    await context.bloc<GreetingCardsCubit>().share(widget.globalKey, position);
    _changeIsShow();
  }

  Future<void> _handleSend(BuildContext context) async {
    context.unfocus();
    _changeIsShow();

    final result = await context.bloc<GreetingCardsCubit>().send(widget.globalKey);

    if (context.mounted && result == NotificationSendingResult.error) {
      _changeIsShow();
      showDialog<dynamic>(
        context: context,
        builder: (_) => TlDialogConfirm(
          message: S.current.feedbackSendingError,
          cancelTitle: S.current.btnClose,
        ),
      );
    }
  }

  void _changeIsShow() => setState(() => _isShow = !_isShow);
}
