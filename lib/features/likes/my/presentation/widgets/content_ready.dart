part of '../likes_my_screen.dart';

class _ContentReady extends StatelessWidget {
  final List<ApiLike> likes;
  final Future<void> Function() onRefresh;

  const _ContentReady({
    required this.likes,
    required this.onRefresh,
  });

  @override
  Widget build(BuildContext context) {
    final text = context.appTheme?.text;

    if (likes.isEmpty) {
      return TlEmptyData(
        asset: TlAssets.imageNoLikes,
        message: S.current.likesMyEmptyList,
        description: S.current.likesMyEmptyListDescription,
        buttonTitle: S.current.btnRefresh,
        onRefresh: () async => onRefresh(),
        onPressed: onRefresh,
      );
    }

    return TlRefresh(
      onRefresh: context.bloc<LikesMyCubit>().refresh,
      child: ListView.builder(
        padding: TlSpaces.ph24t24b12,
        itemCount: likes.length,
        itemBuilder: (_, index) {
          final like = likes[index];

          return TlCard(
            margin: TlSpaces.pb12,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                UserTile(user: like.from),
                Padding(
                  padding: TlSpaces.ph24b24,
                  child: Text(like.content, style: text?.w400s14cMain),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
