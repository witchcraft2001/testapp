part of '../../users_screen.dart';

class _ContentReady extends StatelessWidget {
  final UsersReadyData data;
  final void Function(ApiUser) onSelect;
  final VoidCallback onGetNext;
  final Future<void> Function() onRefresh;

  const _ContentReady({
    required this.data,
    required this.onSelect,
    required this.onGetNext,
    required this.onRefresh,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TlAppBar(
        titleWidget: SearchField(
          padding: TlSpaces.pr24,
          hint: S.current.usersSearch,
          text: data.search,
          onChanged: context.bloc<UsersCubit>().search,
        ),
      ),
      body: _ContentReadyBody(
        data: data,
        onGetNext: onGetNext,
        onRefresh: onRefresh,
        onSelect: onSelect,
      ),
    );
  }
}
