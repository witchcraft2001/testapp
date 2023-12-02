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
                        TaskCardContentBlockShimmer(),
                        TaskCardContentBlockShimmer(),
                      ],
                    ),
                  ),
                ],
              ),
              ...List.generate(8, (_) => const TaskCardContentBlockShimmer()),
            ],
          ),
        ),
      ),
    );
  }
}
