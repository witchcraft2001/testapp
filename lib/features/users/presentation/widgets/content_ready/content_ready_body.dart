part of '../../users_screen.dart';

class _ContentReadyBody extends StatelessWidget {
  final UsersReadyData data;
  final void Function(ApiUser) onSelect;
  final VoidCallback onGetNext;
  final Future<void> Function() onRefresh;

  const _ContentReadyBody({
    required this.data,
    required this.onSelect,
    required this.onGetNext,
    required this.onRefresh,
  });

  @override
  Widget build(BuildContext context) {
    if (data.isLoading) {
      return const _UsersListShimmer();
    }

    if (data.users.isEmpty) {
      // ToDo 111
      return TlEmptyData(
        asset: TlAssets.exceptionNotFound,
        message: S.current.usersSearchNoResults,
        description: S.current.usersSearchNoResultsDesc,
      );
    }

    return _ContentReadyBodyData(
      data: data,
      onGetNext: onGetNext,
      onRefresh: onRefresh,
      onSelect: onSelect,
    );
  }
}
