part of '../profile_documents_screen.dart';

class _ButtonAdd extends StatelessWidget {
  const _ButtonAdd();

  @override
  Widget build(BuildContext context) {
    return TlButton(
      padding: TlSpaces.ph24t4b16,
      title: S.current.profileDocumentsBtnAdd,
      type: AppBtnType.info,
      onPressed: context.bloc<ProfileDocumentsCubit>().add,
    );
  }
}

class _ContentBottomButtons extends StatelessWidget {
  final List<AppDocument> selects;

  const _ContentBottomButtons({required this.selects});

  @override
  Widget build(BuildContext context) {
    if (selects.isEmpty) return const _ButtonAdd();

    return Padding(
      padding: TlSpaces.ph24t4b16,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          TlButton(
            padding: TlSpaces.pr16,
            format: AppBtnFormat.small,
            style: AppBtnStyle.leadingBase,
            type: AppBtnType.info,
            onPressed: context.bloc<ProfileDocumentsCubit>().share,
            leading: SvgPicture.asset(TlAssets.iconShare),
          ),
          TlButton(
            type: AppBtnType.danger,
            format: AppBtnFormat.small,
            style: AppBtnStyle.leadingNone,
            onPressed: () => _handleShowDialog(context),
            leading: SvgPicture.asset(TlAssets.iconTrash),
          ),
        ],
      ),
    );
  }

  void _handleShowDialog(BuildContext context) {
    showDialog<dynamic>(
      context: context,
      builder: (_) => TlDialogConfirm(
        message: S.current.profileDocumentsDialogRemove,
        onConfirm: () {
          context.bloc<ProfileDocumentsCubit>().remove();
          Navigator.pop(context);
        },
        confirmTitle: S.current.btnRemove,
      ),
    );
  }
}
