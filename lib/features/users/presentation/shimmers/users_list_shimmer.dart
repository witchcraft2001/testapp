part of '../users_screen.dart';

class _UsersListShimmer extends StatelessWidget {
  const _UsersListShimmer();

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      padding: TlSpaces.ph24t24b12,
      itemCount: 20,
      itemBuilder: (_, __) => const TlCard(
        margin: TlSpaces.pb12,
        child: UserTileShimmer(),
      ),
    );
  }
}
