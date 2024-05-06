part of '../profile_documents_screen.dart';

class _ContentEmpty extends StatelessWidget {
  final String? message;

  const _ContentEmpty({
    this.message,
  });

  @override
  Widget build(BuildContext context) {
    final isNotMesage = message == null;

    return TlEmptyData(
      asset: TlAssets.imageNoData,
      message: message ?? S.current.profileDocumentsEmptyList,
      buttonTitle: isNotMesage ? S.current.profileDocumentsBtnAdd : null,
      onPressed: isNotMesage ? context.bloc<ProfileDocumentsCubit>().add : null,
    );
  }
}

class _ContentData extends StatelessWidget {
  final ProfileDocumentsReadyData data;

  const _ContentData({required this.data});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _ContentToolbar(data: data),
        Expanded(
          child: ListView.separated(
            separatorBuilder: (_, __) => const TlDivider(height: 2.0),
            itemCount: data.documents.length,
            itemBuilder: (_, index) => _Card(
              document: data.documents[index],
              selects: data.selects,
            ),
          ),
        ),
        _ContentBottomButtons(selects: data.selects),
      ],
    );
  }
}
