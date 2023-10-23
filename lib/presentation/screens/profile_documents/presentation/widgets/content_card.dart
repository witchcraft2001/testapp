part of '../profile_documents_screen.dart';

// ToDo будет логика со свайпами и переверстано для вывода доп. инфы
class _Card extends StatefulWidget {
  final AppDocument document;
  final List<AppDocument> selects;

  const _Card({
    required this.document,
    required this.selects,
  });

  @override
  State<_Card> createState() => _CardState();
}

class _CardState extends State<_Card> {
  String newFilename = '';

  @override
  Widget build(BuildContext context) {
    final path = widget.document;

    final isSelected = widget.selects.contains(path);
    final actions = _buildActions(context);

    return Slidable(
      key: ValueKey(widget.document.path),
      endActionPane: ActionPane(
        motion: const ScrollMotion(),
        extentRatio: TlSizes.cardDocumentHeight * actions.length / context.width,
        children: actions,
      ),
      child: Container(
        padding: TlSpaces.pl8,
        height: TlSizes.cardDocumentHeight,
        color: context.appTheme?.appTheme.specialColorMenu,
        child: Row(
          children: [
            Material(
              color: Colors.transparent,
              child: Padding(
                padding: TlSpaces.p16,
                child: TlSvgIconButton(
                  assetName: isSelected ? TlAssets.iconCheckboxChecked : TlAssets.iconCheckbox,
                  onPressed: () => context.bloc<ProfileDocumentsCubit>().select(widget.document),
                  color: isSelected
                      ? context.appTheme?.appTheme.info
                      : context.appTheme?.appTheme.bordersAndIconsStrokeShape,
                  backgroundColor: context.appTheme?.appTheme.specialColorWhiteBackground,
                ),
              ),
            ),
            Expanded(
              child: Material(
                color: Colors.transparent,
                child: InkWell(
                  onTap: () async {
                    final result =
                        await context.bloc<ProfileDocumentsCubit>().open(widget.document.path);

                    if (result == ResultType.noAppToOpen || result == ResultType.error) {
                      if (context.mounted) _handleShowDialogNotOpen(context, result);
                    }
                  },
                  child: Padding(
                    padding: TlSpaces.pl8pr24,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          widget.document.name,
                          style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                                color: context.appTheme?.appTheme.textMain,
                                fontSize: 15.0,
                                fontWeight: FontWeight.w500,
                                overflow: TextOverflow.ellipsis,
                              ),
                          maxLines: 2,
                        ),
                        Padding(
                          padding: TlSpaces.pt8,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                widget.document.formattedSize!,
                                style: appFontMedium(12, context.appTheme?.appTheme.textSignatures),
                              ),
                              Text(
                                widget.document.formattedDate!,
                                style:
                                    appFontRegular(12, context.appTheme?.appTheme.textSignatures),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  List<Widget> _buildActions(BuildContext context) {
    return [
      TlButton(
        size: TlSizes.cardDocumentHeight,
        onPressed: () => context.bloc<ProfileDocumentsCubit>().share(widget.document),
        leading: SvgPicture.asset(TlAssets.iconShare),
        style: AppBtnStyle.leadingBase,
        format: AppBtnFormat.square,
      ),
      TlButton(
        size: TlSizes.cardDocumentHeight,
        onPressed: () => _handleShowDialogEdit(context),
        leading: SvgPicture.asset(TlAssets.iconEdit),
        type: AppBtnType.secondary,
        style: AppBtnStyle.leadingBase,
        format: AppBtnFormat.square,
      ),
      TlButton(
        size: TlSizes.cardDocumentHeight,
        onPressed: () => _handleShowDialogRemove(context),
        leading: SvgPicture.asset(TlAssets.iconTrash),
        type: AppBtnType.danger,
        style: AppBtnStyle.leadingNone,
        format: AppBtnFormat.square,
      ),
    ];
  }

  void _handleShowDialogNotOpen(BuildContext context, ResultType result) {
    final message = result == ResultType.error
        ? S.current.messageDocumentOpenError
        : S.current.messageDocumentNoApp;

    showDialog<dynamic>(
      context: context,
      builder: (_) => TlDialogConfirm(
        message: message,
        cancelTitle: S.current.btnClose,
        cancelStyle: AppBtnStyle.base,
        cancelType: AppBtnType.info,
      ),
    );
  }

  void _handleShowDialogEdit(BuildContext context) {
    showDialog<dynamic>(
      context: context,
      builder: (_) => TlDialogConfirm(
        content: TlTextField(
          autofocus: true,
          label: S.current.profileDocumentEditLabel,
          text: widget.document.name,
          onChanged: (value) => setState(() => newFilename = value),
        ),
        onConfirm: () {
          context.bloc<ProfileDocumentsCubit>().edit(widget.document, newFilename.trim());
          Navigator.pop(context);
        },
        confirmTitle: S.current.btnSave,
        confirmType: AppBtnType.info,
      ),
    );
  }

  void _handleShowDialogRemove(BuildContext context) {
    showDialog<dynamic>(
      context: context,
      builder: (_) => TlDialogConfirm(
        message: S.current.dialogRemoveDocuments,
        onConfirm: () {
          context.bloc<ProfileDocumentsCubit>().remove(widget.document);
          Navigator.pop(context);
        },
        confirmTitle: S.current.btnRemove,
      ),
    );
  }
}
