part of '../chats_screen.dart';

class _Content extends StatelessWidget {
  final List<ChatFeed> data;

  const _Content({required this.data});

  @override
  Widget build(BuildContext context) {
    if (data.isEmpty) {
      return TlEmptyData(
        asset: TlAssets.exceptionNotFound,
        message: S.current.chatsNoResults,
      );
    }

    return ListView.builder(
      padding: TlSpaces.p24,
      itemCount: data.length,
      itemBuilder: (_, index) => _ChatTile(
        chat: data[index],
        onPressed: (item) => appNavigationService.goNamed(
          context,
          AppRoutes.chat.name,
          pathParameters: {AppNavigationKeys.id: item.id},
          extra: {AppNavigationKeys.serviceId: item.serviceId},
        ),
      ),
    );
  }
}
