part of '../tasks_eas_screen.dart';

class _TaskCardAttachments extends StatelessWidget {
  final String taskId;
  final ApiTaskEasBlockData data;

  const _TaskCardAttachments({
    required this.taskId,
    required this.data,
  });

  @override
  Widget build(BuildContext context) {
    final List<Widget> blocks = [];

    if (data.value.isNotEmpty) {
      for (final attachment in data.value) {
        blocks.add(_TaskCardAttachment(taskId: taskId, attachment: attachment));
      }
    }

    final text = context.appTheme?.text;

    return TlCard(
      margin: TlSpaces.pb12,
      child: Padding(
        padding: TlSpaces.pt20b12,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: TlSpaces.ph24,
              child: Text(data.title, style: text?.w400s13cSignatures),
            ),
            ...blocks,
          ],
        ),
      ),
    );
  }
}

class _TaskCardAttachment extends StatelessWidget {
  final String taskId;
  final ApiTaskEasBlockDataValue attachment;

  const _TaskCardAttachment({
    required this.taskId,
    required this.attachment,
  });

  @override
  Widget build(BuildContext context) {
    final colors = context.appTheme?.colors;
    final text = context.appTheme?.text;

    return BlocProvider(
      create: (_) => getIt<TaskEasAttachmentCubit>()
        ..init()
        ..get(taskId, attachment),
      child: BlocBuilder<TaskEasAttachmentCubit, TaskEasAttachmentCubitState>(
        builder: (context, state) => TlCard(
          margin: EdgeInsets.zero,
          elevation: 0,
          child: Padding(
            padding: TlSpaces.ph12,
            child: ListTile(
              contentPadding: TlSpaces.ph12,
              shape: RoundedRectangleBorder(borderRadius: TlDecoration.brBase),
              onTap: () => _handleOpenAttachment(context, state),
              title: Text(
                attachment.name,
                style: text?.w500s15cMain,
              ),
              trailing: BlocBuilder<TaskEasAttachmentCubit, TaskEasAttachmentCubitState>(
                builder: (context, state) => state.when(
                  init: () => Icon(Icons.download, color: colors?.accent),
                  loading: () => TlProgressIndicator(
                    color: colors?.primary,
                    size: TlSizes.iconSizeS,
                    isCentered: false,
                  ),
                  ready: (_) => const TlSvg(assetName: TlAssets.iconArrowRight),
                  error: () => Icon(Icons.download, color: colors?.accent),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Future<void> _handleOpenAttachment(
    BuildContext context,
    TaskEasAttachmentCubitState state,
  ) async {
    state.whenOrNull(
      init: context.bloc<TaskEasAttachmentCubit>().download,
      ready: (_) async {
        final result = await context.bloc<TaskEasAttachmentCubit>().open();

        if (result == ResultType.noAppToOpen || result == ResultType.error) {
          if (context.mounted) _handleShowDialogNotOpen(context, result);
        }
      },
      error: context.bloc<TaskEasAttachmentCubit>().download,
    );
  }

  void _handleShowDialogNotOpen(BuildContext context, ResultType result) {
    final message = result == ResultType.error
        ? S.current.profileDocumentsErrorOpen
        : S.current.profileDocumentsErrorNoApp;

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
}
