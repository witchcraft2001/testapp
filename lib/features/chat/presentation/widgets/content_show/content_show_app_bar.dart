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
          TlAvatar(
            url: state.avatar ?? '',
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
                style: context.appTheme?.text.w600s16cMain,
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
    final colors = context.appTheme?.colors;
    final color = isOnline ? colors?.predictors7 : colors?.danger;

    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          height: TlSizes.chatStatusSize,
          width: TlSizes.chatStatusSize,
          decoration: BoxDecoration(
            border: Border.all(color: color ?? appColorsThemeLight.predictors7, width: 1.0),
            borderRadius: const BorderRadius.all(Radius.circular(TlSizes.chatStatusSize / 2)),
            color: color,
          ),
        ),
        const SizedBox(width: TlSpaces.sp4),
        Text(
          isOnline ? S.current.chatStatusOnline : S.current.chatStatusOffline,
          style: AppTextStyle.fontW500(fontSize: 16, color: color),
        ),
      ],
    );
  }
}
