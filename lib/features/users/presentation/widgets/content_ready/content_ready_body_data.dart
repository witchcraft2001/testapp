part of '../../users_screen.dart';

class _ContentReadyBodyData extends StatefulWidget {
  final UsersReadyData data;
  final void Function(ApiUser) onSelect;
  final VoidCallback onGetNext;
  final Future<void> Function() onRefresh;

  const _ContentReadyBodyData({
    required this.data,
    required this.onSelect,
    required this.onGetNext,
    required this.onRefresh,
  });

  @override
  State<_ContentReadyBodyData> createState() => _ContentReadyBodyDataState();
}

class _ContentReadyBodyDataState extends State<_ContentReadyBodyData> {
  final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    _scrollController.addListener(_handleGetNext);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final total = widget.data.total;
    final length = widget.data.users.length;

    return TlRefresh(
      onRefresh: widget.onRefresh,
      child: ListView.builder(
        physics: const AlwaysScrollableScrollPhysics(),
        controller: _scrollController,
        padding: TlSpaces.ph24t24b12,
        itemCount: length + 1,
        itemBuilder: (context, index) {
          if (index < length) {
            final user = widget.data.users[index];

            return TlCard(
              margin: TlSpaces.pb12,
              child: UserTile(
                user: user,
                onSelect: (_) {
                  widget.onSelect(user);
                  appNavigationService.pop(context);
                },
              ),
            );
          }

          if (length < total) {
            return const TlCard(
              margin: TlSpaces.pb12,
              child: UserTileShimmer(),
            );
          }

          return const SizedBox.shrink();
        },
      ),
    );
  }

  @override
  void dispose() {
    _scrollController.removeListener(_handleGetNext);
    super.dispose();
  }

  void _handleGetNext() {
    final isOffsetMoreThenExtent =
        _scrollController.offset >= _scrollController.position.maxScrollExtent;
    final isOutOfRange = _scrollController.position.outOfRange;

    if (isOffsetMoreThenExtent && !isOutOfRange) widget.onGetNext();
  }
}
