part of '../profile_screen.dart';

class _ProfileCard extends StatelessWidget {
  final ProfileState data;

  const _ProfileCard({
    required this.data,
  });

  @override
  Widget build(BuildContext context) {
    final colors = context.appTheme?.colors;

    return Container(
      width: context.width,
      margin: TlSpaces.pb24,
      padding: TlSpaces.p20,
      decoration: BoxDecoration(
        borderRadius: TlDecoration.brProfileCard,
        color: colors?.color19,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _ProfileUserSection(data: data),
          const _LikesSection(),
        ],
      ),
    );
  }
}

class _ProfileUserSection extends StatelessWidget {
  final ProfileState data;

  const _ProfileUserSection({
    required this.data,
  });

  @override
  Widget build(BuildContext context) {
    final colors = context.appTheme?.colors;
    final text = context.appTheme?.text;

    return Row(
      children: [
        GestureDetector(
          onTap: context.bloc<ProfileCubit>().setAvatar,
          child: Stack(
            children: [
              TlAvatar(
                url: data.avatar.fullPath,
                size: AvatarSize.l,
                icon: Icons.camera_alt_outlined,
              ),
              Positioned(
                right: 0,
                bottom: 0,
                child: TlSvg(
                  assetName: TlAssets.iconEditAvatar,
                  size: TlSizes.iconSizeBase,
                  borderRadius: TlDecoration.brL,
                  backgroundColor: colors?.primary,
                  backgroundSize: TlSizes.iconSizeM,
                ),
              ),
            ],
          ),
        ),
        Flexible(
          child: Padding(
            padding: TlSpaces.pl24,
            child: IntrinsicWidth(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '${data.name} ${data.lastName}',
                    style: text?.w700s16cColor3,
                  ),
                  // ToDo пока неизвестно получится ли получать данные по должности
                  // Padding(
                  //   padding: TlSpaces.pt8,
                  //   child: IntrinsicHeight(
                  //     child: Row(
                  //       children: [
                  //         Flexible(
                  //           child: Text(
                  //             'Специалист по работе с документами',
                  //           ),
                  //         ),
                  //       ],
                  //     ),
                  //   ),
                  // ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
