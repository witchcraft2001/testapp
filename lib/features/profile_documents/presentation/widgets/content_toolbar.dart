part of '../profile_documents_screen.dart';

class _ContentToolbar extends StatelessWidget {
  final ProfileDocumentsState data;

  const _ContentToolbar({required this.data});

  @override
  Widget build(BuildContext context) {
    final isEnabledSelectAll = data.selects.length < data.documents.length;
    final isEnabledClear = data.selects.isNotEmpty;

    return Container(
      padding: TlSpaces.ph24,
      height: TlSizes.toolbarHeight,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              TlButton(
                isEnabled: isEnabledSelectAll,
                title: S.current.btnSelectAll,
                style: AppBtnStyle.none,
                type: AppBtnType.info,
                format: AppBtnFormat.small,
                onPressed: context.bloc<ProfileDocumentsCubit>().selectAll,
              ),
              TlButton(
                isEnabled: isEnabledClear,
                padding: TlSpaces.pl16,
                title: S.current.btnCancel,
                style: AppBtnStyle.none,
                type: AppBtnType.info,
                format: AppBtnFormat.small,
                onPressed: context.bloc<ProfileDocumentsCubit>().clear,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
