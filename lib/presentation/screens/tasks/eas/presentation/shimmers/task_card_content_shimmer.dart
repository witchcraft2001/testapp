part of '../tasks_eas_screen.dart';

class _TaskCardContentShimmer extends StatelessWidget {
  const _TaskCardContentShimmer();

  @override
  Widget build(BuildContext context) {
    return TlCard(
      margin: TlSpaces.pb12,
      child: Padding(
        padding: TlSpaces.ph20t20b8,
        child: TlShimmer(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  TlShimmerContent(
                    margin: TlSpaces.pr20,
                    borderRadius: TlDecoration.brAvatarLetter,
                    height: TlSizes.avatarLetter,
                    width: TlSizes.avatarLetter,
                  ),
                  const Flexible(
                    child: Column(
                      children: [
                        _ShimmerColumn(),
                        _ShimmerColumn(),
                      ],
                    ),
                  ),
                ],
              ),
              ...List.generate(8, (_) => const _ShimmerColumn()),
            ],
          ),
        ),
      ),
    );
  }
}

class _ShimmerColumn extends StatelessWidget {
  const _ShimmerColumn();

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TlShimmerContent(
          margin: TlSpaces.pb4,
          height: TlSizes.shimmerTextBase,
          width: TlSizes.shimmerTaskEASLabelWidth,
        ),
        TlShimmerContent(
          height: TlSizes.shimmerTextM,
          margin: TlSpaces.pb12,
        ),
      ],
    );
  }
}
