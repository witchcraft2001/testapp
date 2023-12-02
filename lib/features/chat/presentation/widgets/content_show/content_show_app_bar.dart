part of 'package:terralinkapp/features/chat/presentation/chat_screen.dart';

class _ContentShowAppBar extends StatelessWidget {
  final ShowChatState state;

  const _ContentShowAppBar({
    required this.state,
  });

  @override
  Widget build(BuildContext context) {
    if (state.isLoading) return const _ContentShimmerAppBar();

    return Padding(
      padding: TlSpaces.ph24,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Avatar(
            avatarUrl: state.avatar ?? '',
            size: AvatarSize.m,
            asset: TlAssets.imageChatBot,
          ),
          const SizedBox(width: TlSpaces.sp12),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                state.name,
                style:
                    ThemeProvider.bodyMedium.copyWith(color: context.appTheme?.appTheme.textMain),
              ),
              const SizedBox(height: TlSpaces.sp4),
              _ChatAppBarStatus(isOnline: state.isOnline),
            ],
          ),
        ],
      ),
    );
  }
}

class _ChatAppBarStatus extends StatelessWidget {
  final bool isOnline;

  const _ChatAppBarStatus({
    required this.isOnline,
  });

  @override
  Widget build(BuildContext context) {
    final color =
        isOnline ? context.appTheme?.appTheme.predictors7 : context.appTheme?.appTheme.danger;

    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          height: TlSizes.chatStatusSize,
          width: TlSizes.chatStatusSize,
          decoration: BoxDecoration(
            border: Border.all(color: color ?? AppColors.predictors7, width: 1.0),
            borderRadius: const BorderRadius.all(Radius.circular(TlSizes.chatStatusSize / 2)),
            color: color,
          ),
        ),
        const SizedBox(width: TlSpaces.sp4),
        Text(
          isOnline ? S.current.online : S.current.offline,
          style: ThemeProvider.bodyMedium.copyWith(color: color, fontWeight: FontWeight.w500),
        ),
      ],
    );
  }
}
